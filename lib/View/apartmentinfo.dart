import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/Footer.dart';
import '../Utility/Header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApartmentPage extends StatefulWidget {
  const ApartmentPage({super.key});

  @override
  State<ApartmentPage> createState() => _ApartmentPageState();
}

class _ApartmentPageState extends State<ApartmentPage> {
  final GlobalKey enquirerysection = GlobalKey();
  final ScrollController scroll = ScrollController();
  bool showEnquiryForm = false;
  String? selectedValue;
  // Add this line
  void scrollToEnquirySection() async {
    final context = enquirerysection.currentContext;
    if (context != null) {
      await Scrollable.ensureVisible(context,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      setState(() {
        showEnquiryForm = true; // Add this line
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/floor1.png',
      'assets/images/floor2.png',
      'assets/images/floor3.png',
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
      controller: scroll,
      child: Column(
        children: [
          const NavBar(),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF2C4569),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
            width: screenWidth > 800 ? screenWidth - 200 : screenWidth,
            height: screenWidth > 800 ? 500 : 400,
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
                  'assets/images/apartmentinfobanner.png',

                  fit: BoxFit.fitWidth,
                  // Adjusted to BoxFit.fitWidth
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Text(
                "Amenities & Features",
                style: TextStyle(
                  fontSize: screenWidth > 600 ? 32 : 18, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg1.svg',
                      '1 to 1.5L return on \nrental leasing (like \nAirbnb)'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg7.svg',
                      'Next to Multi-\nSpeciality Hospital'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg6.svg',
                      'Suitable for \nSenior Citizen'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg5.svg',
                      'Fully Furnished \n & Ready to occupy'),
                ],
              ),
              Row(
                children: [
                  buildAmenityFeatureItem(
                      context, 'assets/images/Buy/svg4.svg', 'Solar Powered'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg3.svg',
                      'Smart home \nautomation'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg2.svg',
                      'Organic & Green \nhomes'),
                  buildAmenityFeatureItem(context, 'assets/images/Buy/svg1.svg',
                      'Own Property \nmanagement'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Floor Plan",
            style: TextStyle(
              fontSize: screenWidth > 600 ? 32 : 18, // Responsive font size
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: screenWidth > 600 ? 730 : 280,
            width: screenWidth,
            color: const Color(0xFFDBDFE5),
            // color: ,
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
    )));
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
          '3BHK Flat',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        Text("@ Ashok Nagar, 100ft road",
            style: TextStyle(fontSize: 10.0, color: Colors.white))
      ],
    );
  }

  Widget _buildPriceInfo() {
    return const Column(
      children: [
        Text('1550 Sqft at ',
            style: TextStyle(fontSize: 10.0, color: Colors.white)),
        Text("₹1.99Cr", style: TextStyle(fontSize: 30.0, color: Colors.white))
      ],
    );
  }

  Widget _buildEnquireButton(double height, double width) {
    return SizedBox(
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
