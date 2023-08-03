import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'FAVORITE',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Scrollbar(
            thumbVisibility: true, //always show scrollbar
            thickness: 10, //width of scrollbar
            radius: Radius.circular(20), //corner radius of scrollbar
            scrollbarOrientation:
                ScrollbarOrientation.right, //which side to show scrollbar
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'APPLE',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://leszackardises.com/wp-content/uploads/2023/06/WWDC-2023-Apple-Logo-Wallpaper-2-768x1024-1.webp',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'C’est la valeur incontournable de ces dernières années. Ce leader technologique propose une action extrêmement rentable sur le long terme. Depuis 1980, son cours a augmenté de 196 000 % !Avec ses 825 millions d’utilisateurs quotidiens et sa réserve de cash estimée à plus de 200 milliards de dollars, l’entreprise semble solide face à un éventuel ralentissement économique. Contrairement à d’autres valeurs technologiques, Apple a fait preuve d’une belle résistance ces dernières années.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'TESLA',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://seeklogo.com/images/T/tesla-logo-E72BB35180-seeklogo.com.png',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'En 2023, investir dans le plus grand constructeur automobile au monde en valeur marchande est sans doute une bonne idée. Spécialisée dans la fabrication des véhicules électriques et dans la production d’énergie propre, l’entreprise du très médiatique Elon Musk repose sur des bases solides. La correction subie par l’action en 2022 offre de belles perspectives pour cette année.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'LVMH',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://www.lerevenu.com/sites/site/files/field/image/logo-lvmh-afp.jpg',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'Vins et spiritueux, mode, maroquinerie, parfums, cosmétiques, montres, joaillerie, la distribution sélective, le groupe dirigé par Bernard Arnault est sur tous les fronts. Avec un chiffre d’affaires de 79,2 milliards d’euros en 2022 (contre 64,2 milliards d’euros en 2021), LVMH continue fièrement sur sa lancée. La réouverture du marché chinois devrait renforcer ses positions.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'ORANGE',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Orange_logo.svg/2048px-Orange_logo.svg.png',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'Le groupe français, quatrième opérateur en Europe, compte aujourd’hui près de 90 000 employés en France et 60 000 à l’étranger.L’entreprise affiche clairement son ambition avec l’ouverture à de nouveaux marchés et un investissement massif dans l’intelligence artificielle. Avec une position renforcée, des résultats encourageants en plus d’une diversification réussie, l’action Orange devrait tenir ses promesses pour 2023.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'SANOFI',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://www.pngplay.com/wp-content/uploads/5/Sanofi-Logo-Transparent-File.png',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'Acheter des actions Sanofi en 2023 pourrait être une excellente idée. Leader mondial dans le domaine des vaccins, le groupe tient une place de choix dans le secteur pharmaceutique, dans près de 100 pays à travers le monde.Après une année 2022 décevante, le chiffre d’affaires de Sanofi devrait connaître un léger rebond cette année. Pour 2023, l’entreprise propose un dividende important en hausse pour la 29e année consécutive. Un argument supplémentaire pour soutenir la recherche via vos investissements.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'THALES',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://logos-marques.com/wp-content/uploads/2020/01/Thales-logo.png',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          ' Satellites, électronique de défense, radars terrestres, Thalès a connu une année 2022 éblouissante avec des résultats records en termes de commandes et de chiffre d’affaires. Les dirigeants du groupe ne manquent pas d’afficher leur confiance sur la solidité de l’entreprise à moyen terme. De quoi rassurer les actionnaires et faire de Thalès une des entreprises dans lesquelles investir en 2023.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'Pernod-Ricard',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://logos-marques.com/wp-content/uploads/2020/12/logo-Pernod-Ricard.jpg',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'En termes de volumes de vente, Pernod-Ricard monte sur la deuxième marche du podium mondial juste derrière Diageo. Les spiritueux vendus par le groupe s’écoulent aussi bien en Europe, qu’aux États-Unis et en Asie.Son chiffre d’affaires a bondi à plus de 10 milliards d’euros en 2022, la meilleure progression depuis 30 ans. La marge opérationnelle du groupe atteint d’ailleurs des records avec 28,3 %. Ces excellents chiffres devraient se confirmer en 2023.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'Air Liquide',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://logovectorseek.com/wp-content/uploads/2019/09/air-liquide-logo-vector.png',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'Air Liquide fait partie des valeurs préférées des banques américaines pour 2023. L’entreprise est spécialisée dans la production et la commercialisation de gaz industriels et médicaux. Elle ne fournit pas moins de 15 000 hôpitaux et cliniques chaque année, sur tous les continents ou presque.Avec ses 3,8 millions de clients répartis dans près de 78 pays, Air Liquide affiche une santé remarquable. Autant en profiter §',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'Northvolt',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://electrek.co/wp-content/uploads/sites/3/2022/07/Wood-batteries-Northvolt.jpg?quality=82&strip=all',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'La jeune entreprise suédoise, spécialisée dans les batteries des voitures électriques, pourrait être la bonne surprise de cette année 2023.La fin annoncée des véhicules neufs à moteur thermique décidée par l’Europe devrait booster sa performance, dans un secteur encore largement dominé par l’Asie. L’entreprise a déjà annoncé des contrats d’une valeur de plus de 26 milliards d’euros avec BMW, Fluence, Scania, Volkswagen, Volvo Cars et Polestar. Son objectif à long terme : rivaliser avec Tesla. Ambitieux, n’est-ce pas ?',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Colors.green
                          : Provider.of<Colr>(context).bkgcol == 1
                              ? Colors.black
                              : Colors.grey,
                      child: Column(children: [
                        Text(
                          'ASML',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                            'https://1000logos.net/wp-content/uploads/2022/05/ASML-Logo.png',
                            width: 250,
                            height: 150,
                            fit: BoxFit.fill),
                        Text(
                          'La demande de semi-conducteurs dans le monde n’a jamais été aussi forte. Le fabricant néerlandais ASML profite largement du contexte de pénurie, en proposant ses équipements de production de pointe de ces composants indispensables. Son chiffre d’affaires a bondi de 20 % en 2022. Le mastodonte des machines à puces ne cache pas son enthousiasme pour 2023.Les investisseurs avertis ont sans doute constaté la correction subie par l’action ASML en ce début d’année. Au regard du potentiel de croissance de cette entreprise innovante, l’achat d’actions du groupe pourrait être une opération florissante sur le long terme.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    )
                  ]),
            ),
          ),
        ));
  }
}
