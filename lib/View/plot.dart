import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/Footer.dart';
import '../Utility/Header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlotPage extends StatefulWidget {
  const PlotPage({super.key});

  @override
  State<PlotPage> createState() => _PlotPageState();
}

class _PlotPageState extends State<PlotPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/plot/plotfloor1.png',
      'assets/images/plot/plotfloor2.png',
      'assets/images/plot/plotfloor3.png',
      // Add more images if needed
    ];

    // Create a CarouselController
    final CarouselController controller = CarouselController();
    // int _current = 0;
    final screenWidth = MediaQuery.of(context).size.width;
    // Default value
    bool isLargeScreen = screenWidth > 600;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          const NavBar(),
          Stack(children: [
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
                  height: screenWidth > 800 ? 160 : 250,
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
                    'assets/images/plot/plotbanner.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Amenities & Features",
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              buildAmenityFeatureItem(
                  context, 'assets/images/plot/plot1.svg', 'Play Area'),
              buildAmenityFeatureItem(
                  context, 'assets/images/plot/plot2.svg', 'Grocery Store'),
              buildAmenityFeatureItem(context, 'assets/images/plot/plot3.svg',
                  'Street Light Provision'),
              buildAmenityFeatureItem(context, 'assets/images/plot/plot4.svg',
                  'Transformer Provision'),
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
    )));
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
          'Signature Villa',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          'Plots',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "in a gated community",
          style: TextStyle(fontSize: 10.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPriceInfo() {
    return const Column(
      children: [
        Text(
          '₹45 Lac* \nonwards',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildEnquireButton(double height, double width) {
    return Container(
      color: const Color(0xFF2C4569),
      child: const Column(
        children: [
          Text('@ Kilambakkam',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text('GST Road',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),
          Text('(Urapakkam), Chennai, India',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ],
      ),
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
