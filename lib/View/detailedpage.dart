import 'package:flutter/material.dart';

import '../Utility/footer.dart';
import '../Utility/header.dart';
import 'apartmentinfo.dart';

class DetailedPage extends StatelessWidget {
  final String? propertyType;
  final String? country;
  final String? state;
  final String? district;
  final String? city;
  final String? area;

  const DetailedPage({
    super.key,
    this.propertyType,
    this.country,
    this.state,
    this.district,
    this.city,
    this.area,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> gridtitle = [
      'Apartment',
      'Apartment',
      'Apartment',
      'Apartment',
      'Apartment',
      'Apartment',
    ];
    final List<String> gridsubtitle = [
      'Vandalur, Chennai',
      'Vandalur, Chennai',
      'Vandalur, Chennai',
      'Vandalur, Chennai',
      'Vandalur, Chennai',
      'Vandalur, Chennai',
    ];
    final List<String> gridimage = [
      'assets/images/search/image1.jpeg',
      'assets/images/search/image2.png',
      'assets/images/search/image3.png',
      'assets/images/search/image4.png',
      'assets/images/search/image5.jpeg',
      'assets/images/search/image6.png',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBar(),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05), // Adjusted
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Back to search results')),
                  Text('$propertyType'),
                  const Icon(Icons.keyboard_arrow_right),
                  Text('$country'),
                  const Icon(Icons.keyboard_arrow_right),
                  Text('$state'),
                  const Icon(Icons.keyboard_arrow_right),
                  Text('$district'),
                  const Icon(Icons.keyboard_arrow_right),
                  Text(' $city'),
                  const Icon(Icons.keyboard_arrow_right),
                  Text(' $area'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height * 0.6, // Adjusted
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFF2F2F2),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 800
                      ? 4
                      : 2, // Dynamic
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ApartmentPage()),
                      );
                    },
                    child: GridTile(
                      footer: Container(
                        color: const Color(0xFF234576),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                gridtitle[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16), // Adjusted
                              ),
                              Text(
                                gridsubtitle[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14), // Adjusted
                              ),
                            ],
                          ),
                        ),
                      ),
                      child: ClipRect(
                        child: Image.asset(
                          gridimage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05), // Adjusted
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class Menu {
  final String title;
  final List<String> options;

  Menu({required this.title, required this.options});
}
