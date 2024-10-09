import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        children: [
          Stack(children: [
            Container(
              clipBehavior: Clip.none,
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.purple.shade200,
                Colors.purple.shade400,
                Colors.purple.shade800,
              ])),
            ),
            Positioned(
              top: 5,
              left: 10,
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.purple.shade300,
                    Colors.purple.shade800,
                  ]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Positioned(
              top: 10,
              left: 15,
              child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/kaya.jpeg")),
            ),
            Positioned(
              top: 48,
              left: 215,
              child: Column(
                children: [
                  const Text(
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      "Kaya Müller"),
                  Container(
                    height: 1,
                    width: 180,
                    color: Colors.white,
                  ),
                  const Text(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      "Fotograf"),
                ],
              ),
            ),
          ]),
          const SizedBox(
            height: 48,
          ),
          Container(
            height: 420,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen."),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
