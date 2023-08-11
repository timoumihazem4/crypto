import 'dart:io';

import 'package:crypto/homePro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:crypto/backend/providers/colors.dart';
import 'package:provider/provider.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  XFile? _selectedImage;

  Future<void> _selectImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = pickedImage;
      });

      await _uploadImageToFirebase(pickedImage.path);
    }
  }

  Future<void> _uploadImageToFirebase(String imagePath) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      print('User not logged in');
      return;
    }

    final file = File(imagePath);
    final fileName = '${currentUser.uid}.jpg';

    try {
      final storageRef =
          FirebaseStorage.instance.ref().child('profile_images/$fileName');
      await storageRef.putFile(file);

      final downloadURL = await storageRef.getDownloadURL();
      await FirebaseAuth.instance.currentUser!.updatePhotoURL(downloadURL);

      debugPrint('Image uploaded and photoURL updated successfully');
    } catch (e) {
      debugPrint('Error uploading image to Firebase Storage: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<Colr>(context).bkgcol == 0
          ? Color.fromARGB(198, 204, 231, 236)
          : Color.fromARGB(102, 182, 193, 187),
      appBar: AppBar(
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          'PICTURES',
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_selectedImage != null)
              CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(File(_selectedImage!.path)),
              ),
            SizedBox(
              height: 20,
            ),
            if (_selectedImage != null)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (
                      context,
                    ) =>
                            HomePro(
                              email: FirebaseAuth.instance.currentUser!.email ??
                                  "",
                            )),
                  );
                },
                child: const Text(
                  'SAVE',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                    foregroundColor: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    minimumSize: const Size(400, 80)),
              ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _selectImageFromGallery,
              child: const Text(
                'Select Image',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Provider.of<Colr>(context).bkgcol == 0
                      ? Color.fromARGB(197, 47, 207, 235)
                      : Color.fromARGB(255, 56, 61, 58),
                  minimumSize: const Size(400, 80)),
            ),
          ],
        ),
      ),
    );
  }
}
