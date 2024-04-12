import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../View/homepage.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen size
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF234576),
      padding: const EdgeInsets.all(20.0),
      // Adjust the height dynamically based on the content or screen
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Use Flex to adjust the layout based on screen size
          Flex(
            direction: screenSize.width > 600 ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 200,
                margin: screenSize.width > 600
                    ? const EdgeInsets.all(0)
                    : const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              if (screenSize.width > 600) const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('Company'),
                  const SizedBox(height: 5.0),
                  buildTextButtononpress('About us', '/About', context),
                  const SizedBox(height: 2.0),
                  buildTextButtononpress('Property', '/DetailedPage', context),
                  const SizedBox(height: 2.0),
                  buildTextButton(''),
                ],
              ),
              if (screenSize.width > 600) const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('Our Services'),
                  const SizedBox(height: 5.0),
                  buildTextButtononpress('Buy', '/Buy', context),
                  const SizedBox(height: 2.0),
                  buildTextButtononpress('Sell', '/Sell', context),
                  const SizedBox(height: 2.0),
                  buildTextButtononpress('Exchange', '/Exchange', context),
                ],
              ),
              if (screenSize.width > 600) const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('Contact Us'),
                  const SizedBox(height: 5.0),
                  buildTextButton('Phone: +91 9444162240'),
                  const SizedBox(height: 2.0),
                  buildTextButton('Email: vsr@builtglory.com'),
                  const SizedBox(height: 2.0),
                  buildTextButton(''),
                ],
              ),
            ],
          ),
          const Center(
            child: Divider(
              height: 30,
              color: Colors.black12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: const BoxDecoration(
                      // shape: BoxShape.circle,
                      //border: Border.all(color: Colors.white, width: 2.0),
                      ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.lightBlue, // Optional: Set icon color
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: const BoxDecoration(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.black, // Optional: Set icon color
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: const BoxDecoration(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blueAccent, // Optional: Set icon color
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: const BoxDecoration(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pinkAccent, // Optional: Set icon color
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTextButton(String text) {
    return TextButton(
      onPressed: () {
        // Add your onPressed functionality here
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFF2F2F2),
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget buildTextButtonunderline(String text) {
    return TextButton(
      onPressed: () {
        // Add your onPressed functionality here
      },
      child: Text(
        text,
        style: const TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            color: Color(0xFFF2F2F2),
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildTextButtononpress(
      String text, String routeName, BuildContext context) {
    return TextButton(
      onPressed: () {
        if (routeName == '/') {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const BuildHomepage()),
            (Route<dynamic> route) => false,
          );
        } else {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Footer extends StatefulWidget {
//   const Footer({Key? key}) : super(key: key);
//
//   @override
//   State<Footer> createState() => _FooterState();
// }
//
// class _FooterState extends State<Footer> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     bool isMobile = screenSize.width < 600;
//
//     return Container(
//       color: const Color(0xFF234576),
//       padding: EdgeInsets.symmetric(
//         vertical: isMobile ? 10 : 20,
//         horizontal: isMobile ? 10 : 20,
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Flex(
//               direction:
//                   screenSize.width > 600 ? Axis.horizontal : Axis.vertical,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 logoSection(isMobile),
//                 infoSection(
//                   'Company',
//                   ['About us', 'Property', 'More Info'],
//                   isMobile,
//                 ),
//                 infoSection(
//                     'Our Services', ['Buy', 'Sell', 'Exchange'], isMobile),
//                 infoSection(
//                     'Contact Us',
//                     ['Phone: +91 1234567890', 'Email: example@example.com'],
//                     isMobile),
//               ],
//             ),
//             const Divider(height: 30, color: Colors.white54),
//             SizedBox(height: isMobile ? 10 : 20),
//             socialMediaIcons(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget logoSection(bool isMobile) {
//     return Container(
//       height: 80,
//       width: 250,
//       margin: EdgeInsets.only(bottom: isMobile ? 20 : 0),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         image: DecorationImage(
//           image: AssetImage('assets/images/logo.png'),
//           fit: BoxFit.contain,
//         ),
//         shape: BoxShape.rectangle,
//         borderRadius: BorderRadius.all(Radius.circular(8)),
//       ),
//     );
//   }
//
//   Widget infoSection(String title, List<String> items, bool isMobile) {
//     return Column(
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             decoration: TextDecoration.underline,
//             decorationColor: Colors.white,
//             color: Colors.white,
//             fontSize: isMobile ? 18 : 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         ...items.map(
//           (item) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5),
//             child: TextButton(
//               onPressed: () {},
//               child: Text(
//                 item,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: isMobile ? 14 : 16,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget socialMediaIcons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           onPressed: () {},
//           icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlue),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.purple),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon:
//               const FaIcon(FontAwesomeIcons.linkedin, color: Colors.blueAccent),
//         ),
//       ],
//     );
//   }
// }
