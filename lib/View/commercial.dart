import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:mybuildglorywebsite/Utility/Footer.dart';
import '../Utility/Header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommercialPage extends StatefulWidget {
  const CommercialPage({super.key});

  @override
  State<CommercialPage> createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
  final GlobalKey enquirerysection = GlobalKey();
  final ScrollController scroll = ScrollController();
  bool showEnquiryForm = false;
  String? selectedValue;
  // Add this line
  void scrollToEnquirySection() async {
    final context = enquirerysection.currentContext;
    if (context != null) {
      await Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      setState(() {
        showEnquiryForm = true; // Add this line
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/commercial/floor1.png',
      'assets/images/commercial/floor2.png',
      'assets/images/commercial/floor3.png',
      // Add more images if needed
    ];
    final List<String> imageList = [
      'assets/images/commercial/commercial1.jpg',
      'assets/images/commercial/commercial2.jpg',
      'assets/images/commercial/commercial3.jpg',
      // Add more images if needed
    ];
    // Create a CarouselController
    final CarouselController controller = CarouselController();
    // int _current = 0;
    final screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600;
    // Default value
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
      const NavBar(),
      Container(
        decoration: const BoxDecoration(
            color: Color(0xFF2C4569),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
        width: screenWidth > 800 ? screenWidth - 200 : screenWidth,
        height: screenWidth > 800 ? 500 : 600,
        child: GridTile(
          footer: Container(
            height: screenWidth > 800 ? 100 : 150,
            color: const Color(0xFF2C4569),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return _buildWideFooter();
                } else {
                  return _buildNarrowFooter();
                }
              }),
            ),
          ),
          child: ClipRect(
            child: Image.asset(
              'assets/images/commercial/commercialbanner.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Column(
        children: [
          const Text("Amenities & Features",
              style: TextStyle(fontSize: 32.0, color: Colors.black)),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              buildAmenityFeatureItem(
                  context, 'assets/images/commercial/c1.svg', 'Car Parking'),
              buildAmenityFeatureItem(context,
                  'assets/images/commercial/c2.svg', 'Maintenance Staff'),
              buildAmenityFeatureItem(context,
                  'assets/images/commercial/c3.svg', 'CCTV Facilities'),
              buildAmenityFeatureItem(
                  context, 'assets/images/commercial/c4.svg', 'Relaxing Areas'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              buildAmenityFeatureItem(context,
                  'assets/images/commercial/c6.svg', 'Fire Extinguisher'),
              buildAmenityFeatureItem(
                  context, 'assets/images/commercial/c7.svg', 'Furnishing'),
              buildAmenityFeatureItem(context,
                  'assets/images/commercial/c8.svg', '24 hrs Water Facilities'),
              buildAmenityFeatureItem(context,
                  'assets/images/commercial/c9.svg', 'Personal Locker'),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Gallery",
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
          Container(
            height: screenWidth > 600 ? 700 : 160,
            width: screenWidth,
            color: const Color(0xFFDBDFE5),
            // color: ,
            child: SingleChildScrollView(
              child: Column(children: [
                CarouselSlider(
                  items: imageList
                      .map((item) => Center(
                          child:
                              Image.asset(item, fit: BoxFit.cover, width: 1000)))
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 0.33, // Adjust to show 3 items
                    aspectRatio: 2.0, // Adjust aspect ratio accordingly
                    enableInfiniteScroll: true,
                  ),
                  carouselController: controller, // Assign the controller
                ),
              ]),
            ),
          ),
          const Text("Floor plans",
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
          Container(
            height: screenWidth > 600 ? 700 : 160,
            width: screenWidth,
            color: const Color(0xFFDBDFE5),
            // color: ,
            child: SingleChildScrollView(
              child: Column(children: [
                CarouselSlider(
                  items: imgList
                      .map((item) => Center(
                          child:
                              Image.asset(item, fit: BoxFit.cover, width: 1000)))
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 0.33, // Adjust to show 3 items
                    aspectRatio: 2.0, // Adjust aspect ratio accordingly
                    enableInfiniteScroll: true,
                  ),
                  carouselController: controller, // Assign the controller
                ),
              ]),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: SizedBox(
                height:
                    isLargeScreen ? 600 : 900, // Adjust the height for mobile
                width: isLargeScreen
                    ? screenWidth - 300
                    : screenWidth - 10, // Adjust the width for mobile
                child: Container(
                  key: enquirerysection,
                  color: Colors.white,
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Enquire more about this property',
                          style: TextStyle(
                              color: const Color(0xFF234576),
                              fontSize: isLargeScreen
                                  ? 24
                                  : 12, // Adjust font size for mobile
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        isLargeScreen
                            ? buildLargeScreenContent()
                            : buildSmallScreenContent(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Footer()
        ],
      ),
    ]))));
  }

  Widget _buildWideFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPropertyInfo(),
        const VerticalDivider(color: Colors.white),
        _buildPriceInfo(),
        _buildEnquireButton(50, 200),
      ],
    );
  }

  Widget _buildNarrowFooter() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                _buildPropertyInfo(),
              ],
            ),
            const Divider(color: Colors.white),
            Column(
              children: [
                _buildPriceInfo(),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        _buildEnquireButton(50, 200),
      ],
    );
  }

  Widget _buildPropertyInfo() {
    return const Column(
      children: [
        Text(
          'Commercial Building',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPriceInfo() {
    return const Column(
      children: [
        Text('2000 Sqft at ',
            style: TextStyle(fontSize: 8.0, color: Colors.white)),
        Text("₹5.5Cr", style: TextStyle(fontSize: 20.0, color: Colors.white))
      ],
    );
  }

  Widget _buildEnquireButton(double height, double width) {
    return Container(
      height: height, //height of button
      width: width,
      child: ElevatedButton(
          onPressed: () {
            scrollToEnquirySection();
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.white)))),
          child: const Text(
            'Enquire Now',
          )),
    );
  }

  Widget buildAmenityFeatureItem(
      BuildContext context, String imagePath, String text) {
    double screenWidth = MediaQuery.of(context).size.width;
    double size =
        screenWidth > 600 ? 50 : 30; // Adjust size based on screen width
    double fontSize =
        screenWidth > 600 ? 16 : 8; // Adjust font size based on screen width

    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: size,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              imagePath,
              height: size,
              width: size,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildLargeScreenContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: buildLeftSection()),
        Expanded(child: buildRightSection()),
      ],
    );
  }

  Widget buildSmallScreenContent() {
    return Column(
      children: <Widget>[
        buildLeftSection(),
        buildRightSection(),
      ],
    );
  }

  Widget buildLeftSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Your Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
              ),
              prefixIcon: Icon(Icons.person), // Add your desired icon here
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Your Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                prefixIcon: Icon(Icons.phone)),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                prefixIcon: Icon(Icons.mail)),
          ),
          const SizedBox(height: 15),
          TextFormField(
            maxLines: 5,
            decoration: const InputDecoration(
              hintText: 'Start Typing Your Message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // Your submit functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF233D63),
              shape: const RoundedRectangleBorder(
                // Rectangular shape
                borderRadius:
                    BorderRadius.zero, // Zero radius for sharp corners
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.white, // White text color
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRightSection() {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Address:",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
              "1st Main Road, Gandhi Nagar, Adyar, Chennai, Tamil Nadu 600020"),
          SizedBox(height: 20),
          Text(
            "Phone:",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text("Mobile: +91 9444126240, +91 9361788384"),
          SizedBox(height: 20),
          Text(
            "Email:",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text("Email: support@builtglory.com, vsr@builtglory.com"),
        ],
      ),
    );
  }
}
