//   debugPrint(_capturedImage.toString());

import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/homePro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

enum CameraPageState {
  preview,
  captured,
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  CameraPageState _pageState = CameraPageState.preview;
  XFile? _capturedImage;
  CameraLensDirection _selectedCamera = CameraLensDirection.back;
  bool _isFrontCamera = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final cameraDirection =
        _isFrontCamera ? CameraLensDirection.front : CameraLensDirection.back;

    final selectedCamera = cameras.firstWhere(
      (camera) => camera.lensDirection == cameraDirection,
      orElse: () => cameras.first,
    );

    _controller = CameraController(
      selectedCamera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller!.initialize();

    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _captureImage() async {
    try {
      await _initializeControllerFuture!;

      final image = await _controller!.takePicture();
      setState(() {
        _pageState = CameraPageState.captured;
        _capturedImage = image;
      });

      await _uploadImageToFirebase(image.path);
      await _uploadImageToFirebase(image.path);
    } catch (e) {
      print(e);
    }
  }

  void _resetPage() {
    setState(() {
      _pageState = CameraPageState.preview;
      _capturedImage = null;
    });
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
      await FirebaseAuth.instance.currentUser!.updatePhotoURL(downloadURL);

      debugPrint('Image uploaded and photoURL updated successfully');
    } catch (e) {
      debugPrint('Error uploading image to Firebase Storage: $e');
    }
  }

  void _toggleCamera() {
    setState(() {
      _isFrontCamera = !_isFrontCamera;
    });
    _initializeCamera();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(
              child: Text('Erreur lors de l\'initialisation de la caméra'));
        } else {
          return Stack(
            children: [
              CameraPreview(
                _controller!,
                child: Transform.scale(
                  scale: _controller!.value.aspectRatio /
                      MediaQuery.of(context).size.aspectRatio,
                  child: AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: Container(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                        ),
                        FloatingActionButton(
                          onPressed: _captureImage,
                          child: const Icon(Icons.camera_alt),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        if (_capturedImage != null)
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (
                                  context,
                                ) =>
                                        HomePro(
                                          email: FirebaseAuth.instance
                                                  .currentUser!.email ??
                                              "",
                                        )),
                              );
                            },
                            child: const Icon(Icons.save),
                          ),
                      ],
                    )),
              ),
            ],
          );
        }
      },
    );
    debugPrint(_pageState.toString());
    debugPrint(_selectedCamera.toString());

    debugPrint(_capturedImage.toString());

    return Scaffold(
      backgroundColor: Provider.of<Colr>(context).bkgcol == 0
          ? Color.fromARGB(198, 204, 231, 236)
          : Color.fromARGB(102, 238, 241, 239),
      appBar: AppBar(
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          'CAMERA',
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.switch_camera),
            onPressed: _toggleCamera,
          ),
        ],
      ),
      body: content,
    );
  }
}
















// import 'dart:async';
// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:crypto/backend/providers/colors.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class CameraPage extends StatefulWidget {
//   const CameraPage({Key? key}) : super(key: key);

//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// enum CameraPageState {
//   preview,
//   captured,
// }

// class _CameraPageState extends State<CameraPage> {
//   CameraController? _controller;
//   Future<void>? _initializeControllerFuture;
//   CameraPageState _pageState = CameraPageState.preview;
//   XFile? _capturedImage;
//   CameraLensDirection _selectedCamera = CameraLensDirection.back;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.firstWhere(
//       (camera) => camera.lensDirection == _selectedCamera,
//       orElse: () => cameras.first,
//     );

//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );

//     _initializeControllerFuture = _controller!.initialize();

//     setState(() {});
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }

//   void _captureImage() async {
//     try {
//       await _initializeControllerFuture!;

//       final image = await _controller!.takePicture();
//       setState(() {
//         _pageState = CameraPageState.captured;
//         _capturedImage = image;
//       });

//       await _uploadImageToFirebase(image.path);
//     } catch (e) {
//       print(e);
//     }
//   }

//   void _resetPage() {
//     setState(() {
//       _pageState = CameraPageState.preview;
//       _capturedImage = null;
//     });
//   }

//   Future<void> _uploadImageToFirebase(String imagePath) async {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     if (currentUser == null) {
//       print('User not logged in');
//       return;
//     }

//     final file = File(imagePath);
//     final fileName = '${currentUser.uid}.jpg';

//     try {
//       final storageRef =
//           FirebaseStorage.instance.ref().child('profile_images/$fileName');
//       await storageRef.putFile(file);

//       final downloadURL = await storageRef.getDownloadURL();
//       await FirebaseAuth.instance.currentUser!.updatePhotoURL(downloadURL);

//       debugPrint('Image uploaded and photoURL updated successfully');
//     } catch (e) {
//       debugPrint('Error uploading image to Firebase Storage: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget content;
//     if (_controller == null || !_controller!.value.isInitialized) {
//       content = const Center(child: CircularProgressIndicator());
//     } else {
//       content = Stack(
//         children: [
//           CameraPreview(
//             _controller!,
//             child: Transform.scale(
//               scale: _controller!.value.aspectRatio /
//                   MediaQuery.of(context).size.aspectRatio,
//               child: AspectRatio(
//                 aspectRatio: _controller!.value.aspectRatio,
//                 child: Container(),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: FloatingActionButton(
//                 onPressed: _captureImage,
//                 child: const Icon(Icons.camera_alt),
//               ),
//             ),
//           ),
//         ],
//       );
//     }

//     debugPrint(_capturedImage.toString());

//     return Scaffold(
//       backgroundColor: Provider.of<Colr>(context).bkgcol == 0
//           ? Color.fromARGB(198, 204, 231, 236)
//           : Color.fromARGB(102, 238, 241, 239),
//       appBar: AppBar(
//         backgroundColor: Provider.of<Colr>(context).bkgcol == 0
//             ? Color.fromARGB(198, 204, 231, 236)
//             : Color.fromARGB(102, 182, 193, 187),
//         title: Text(
//           'CAMERA',
//           style: TextStyle(
//               color: Provider.of<Colr>(context).bkgcol == 0
//                   ? Color.fromARGB(197, 47, 207, 235)
//                   : Color.fromARGB(255, 56, 61, 58),
//               fontSize: 25,
//               fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _selectedCamera = _selectedCamera == CameraLensDirection.back
//                     ? CameraLensDirection.front
//                     : CameraLensDirection.back;
//                 _initializeCamera();
//               });
//             },
//             icon: Icon(Icons.flip_camera_ios),
//           ),
//         ],
//       ),
//       body: content,
//       floatingActionButton: _pageState == CameraPageState.captured
//           ? FloatingActionButton(
//               onPressed: _resetPage,
//               child: const Icon(Icons.refresh),
//             )
//           : null,
//     );
//   }
// }
