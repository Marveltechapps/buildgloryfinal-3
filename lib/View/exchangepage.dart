import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/footer.dart';

import '../Utility/header.dart';
import 'contactpage.dart';

class ExchangeView extends StatefulWidget {
  const ExchangeView({super.key});

  @override
  State<ExchangeView> createState() => _ExchangeViewState();
}

class _ExchangeViewState extends State<ExchangeView> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    // Getting screen width
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = screenWidth > 600 ? 24 : 18;
    double textFontSize = screenWidth > 600 ? 20 : 16;
    bool isLargeScreen = screenWidth > 600;

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          const NavBar(),
          Container(
            width: screenWidth,
            color: const Color(0xFF234576), // Container's background color
            height: MediaQuery.of(context).size.width > 600 ? 500 : 300,
            child: Stack(children: [
              Positioned(
                right: 0,
                height: MediaQuery.of(context).size.width > 600 ? 500 : 300,
                width: screenWidth,
                child: ClipRect(
                    child: Image.asset(
                        width: MediaQuery.of(context).size.width,
                        height:
                            MediaQuery.of(context).size.width > 600 ? 500 : 300,
                        fit: BoxFit.cover,
                        'assets/images/BuiltgloryHomepg/exchangebanner.png')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width > 600 ? 40 : 10,
                    vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Exchange',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).size.width > 600 ? 70 : 25,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 10),
                    Text(
                      "Welcome to our property online platform! \nDiscover your dream home through our \nseamless buying, selling, and exchange \nservices.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width > 600
                            ? 24
                            : 10, // Responsive font size
                        color: const Color(0xFFF2F2F2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600 ? 55 : 25,
                      width: MediaQuery.of(context).size.width > 600
                          ? 250
                          : 125, // Responsive button width
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to your contact page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Contactpage()), // Adjust with your correct page
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFEF5659)),
                        ),
                        child: Text(
                          'Contact Now',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 600
                                  ? 20
                                  : 10,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            width: isLargeScreen ? screenWidth * 0.8 : screenWidth,
            child: Card(
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Contact Details',
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (isLargeScreen) {
                          return Row(
                            children: [
                              Expanded(
                                  child: _sellingPropertyDetails(textFontSize)),
                              Expanded(
                                  child: _buyingPropertyDetails(textFontSize)),
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              _sellingPropertyDetails(textFontSize),
                              _buyingPropertyDetails(textFontSize),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 55,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          // Your button action here
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(
                              0xFFEF5659)), // Sets the button color to #EF5659
                        ),
                        child: const Text(
                          'Contact Now',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors
                                  .white), // Sets text color to white for contrast
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Footer()
        ],
      ),
    )));
  }

  Widget _sellingPropertyDetails(double fontSize) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selling Property Details',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose Property Type',
                border: OutlineInputBorder(),
              ),
              value: selectedValue,
              isExpanded: true,
              items: ['Option 1', 'Option 2', 'Option 3']
                  .map((label) => DropdownMenuItem(
                        child: Text(label),
                        value: label,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Upload Property Files',
              style: TextStyle(
                fontSize: fontSize,
              ),
            ),
            const SizedBox(width: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: 'Choose Files',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                ),
                const SizedBox(width: 20),
                const Expanded(child: Text('No File Chosen')),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      );

  Widget _buyingPropertyDetails(double fontSize) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Buying Property Details',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Property nam',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Enter More Details',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      );
}
