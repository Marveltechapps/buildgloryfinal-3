import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/footer.dart';

import '../Utility/header.dart';

final ButtonStyle contactButtonstyle = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  backgroundColor: const Color(0xFFF1F1FF), // Background color
  textStyle: const TextStyle(fontSize: 20, color: Color(0xFF234576)),
);

class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
                  height: MediaQuery.of(context).size.width > 600 ? 500 : 300,
                  width: screenWidth,
                  child: ClipRect(
                      child: Image.asset(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width > 600
                              ? 500
                              : 400,
                          fit: BoxFit.cover,
                          'assets/images/BuiltgloryHomepg/contactbanner.png')),
                ),
                Positioned(
                  bottom: 10, // Adjust the position as needed
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Space the buttons evenly
                    children: <Widget>[
                      _roundedButton(
                        context,
                        'Buyer Contact',
                        () => Navigator.of(context).pushNamed('/Buy'),
                      ),
                      _roundedButton(
                        context,
                        'Seller Contact',
                        () => Navigator.of(context).pushNamed('/Sell'),
                      ),
                      _roundedButton(context, 'Buy & Sell Contact',
                          () => Navigator.of(context).pushNamed('/Agent')),
                    ],
                  ),
                ),
              ]),
            ),
            SingleChildScrollView(
              child: Center(
                child: SizedBox(
                  height: isLargeScreen
                      ? 700
                      : 1000, // Adjust the height for mobile
                  width: isLargeScreen
                      ? screenWidth - 300
                      : screenWidth - 10, // Adjust the width for mobile
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            'General Contact',
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
                          const SizedBox(height: 50),
                          SizedBox(
                            height: 55,
                            width: isLargeScreen
                                ? screenWidth - 1000
                                : screenWidth, // Adjust button width for mobile
                            child: ElevatedButton(
                              onPressed: () {
                                // Your button action here
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFEF5659)),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontSize: isLargeScreen
                                        ? 20
                                        : 16, // Adjust font size for mobile
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Footer()
          ],
        ),
      ),
    ));
  }

  Widget _roundedButton(
      BuildContext context, String text, Function onTapAction) {
    // Dynamic sizing based on screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust sizes based on the screen width
    double fontSize = screenWidth < 350 ? 8 : (screenWidth < 600 ? 8 : 16);
    double paddingVertical =
        screenWidth < 350 ? 8 : (screenWidth < 600 ? 10 : 4);
    double paddingHorizontal =
        screenWidth < 350 ? 16 : (screenWidth < 600 ? 20 : 8);
    double borderRadius = 5.0; // You can also adjust this dynamically if needed

    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Color(0xFFF1F1FF), // Button background color
      child: InkWell(
        onTap: () => onTapAction(), // Call the passed function
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: paddingVertical, horizontal: paddingHorizontal),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFF234576),

              fontSize: fontSize, // Dynamically adjusted font size
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLargeScreenContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: buildLeftSection()),
        Expanded(child: buildCenterSection()),
        Expanded(child: buildRightSection()),
      ],
    );
  }

  Widget buildSmallScreenContent() {
    return Column(
      children: <Widget>[
        buildLeftSection(),
        buildCenterSection(),
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
          Container(
            padding: const EdgeInsets.fromLTRB(0, 80, 20, 0),
            height: 60,
            width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const IconWithText(
              icon: Icons.message,
              text: 'vsr@builtglory.com\nsupport@builtglory.com'),
          const SizedBox(height: 10),
          const IconWithText(icon: Icons.call, text: '+91 9444126240'),
          const SizedBox(height: 10),
          const IconWithText(
              icon: Icons.location_on_outlined,
              text: 'Builtglory,\nAdyar, Chennai'),
        ],
      ),
    );
  }

  Widget buildCenterSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Enter Your Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter Message Here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
        ],
      ),
    );
  }

  Widget buildRightSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Enter Your Phone Nummber',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Subject',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Helper widget for an icon followed by text, used in the left column
class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
