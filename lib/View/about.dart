// import 'package:flutter/material.dart';
// import 'package:mybuildglorywebsite/Utility/footer.dart';
// import '../Utility/header.dart';

// class About extends StatefulWidget {
//   const About({super.key});

//   @override
//   State<About> createState() => _AboutState();
// }

// class _AboutState extends State<About> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return SafeArea(
//         child: Scaffold(
//             body: SingleChildScrollView(
//       child: Column(
//         children: [
//           const NavBar(),
//           Stack(children: [
//             Container(
//               width: screenWidth,
//               height: 500,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(
//                           'assets/images/BuiltgloryHomepg/aboutbanner.png'),
//                       fit: BoxFit.cover)),
//             ),
//             const Positioned(
//                 bottom: 0,
//                 left: 100,
//                 child: Text(
//                   'Our homes are special.\nOur homes are organic homes.',
//                   style: TextStyle(color: Colors.white, fontSize: 44),
//                 ))
//           ]),
//           Padding(
//             padding: const EdgeInsets.all(50),
//             child: Container(
//               child: Column(
//                 children: [
//                   const Text(
//                     'About Builtglory',
//                     style: TextStyle(
//                       fontSize: 50,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF234576),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: const Color(0x80233D63),
//                             // Here we define the border
//                             border: Border.all(
//                               color: const Color(0x80233D63), // Border color
//                               width: 4.0, // Border width
//                             ),
//                           ),
//                           child: ClipRect(
//                             child: Container(
//                               height: 350,
//                               width: 430,
//                               child: const Image(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/images/aboutimage1.jpeg')),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 50),
//                       const Expanded(
//                         flex: 1,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                                 'BUILTGLORY is a high-end real estate marketplace \nthat enables customers to find properties, browse \nthrough properties online, choose, buy, and sell their \nORGANICALY created ideal homes. Through our \norganically designed smart home flagship online \nservice, we offer comprehensive help for having a \nbeautiful house and a happy life. Along with buying \nand selling we assist clients for financing their homes. \nWe redesign and renovate every home into an \norganically designed home in order to save the next \ngeneration.',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.w400)),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Expanded(
//                         flex: 1,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Preventing such chemicals from being included in the \ninterior specifications is a key first step in ensuring a \nhealthy indoor environment because of the improved \nindoor environment that is built into our homes. The \ncore of our business is satisfying clients with high-\nquality items. We market green houses. Modern \nwellness technologies are incorporated into our \nhomes to assist customers maintain their health and \nwell-being while enhancing their indoor air and water \nquality, nutrition and sleep habits.',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.w400),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 20.0),
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: const Color(0x80233D63),
//                             // Here we define the border
//                             border: Border.all(
//                               color: const Color(0x80233D63), // Border color
//                               width: 4.0, // Border width
//                             ),
//                           ),
//                           child: ClipRect(
//                             child: Container(
//                               height: 350,
//                               width: 430,
//                               child: const Image(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/images/aboutimage2.jpeg')),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: const Color(0x80233D63),
//                             // Here we define the border
//                             border: Border.all(
//                               color: const Color(0x80233D63), // Border color
//                               width: 4.0, // Border width
//                             ),
//                           ),
//                           child: ClipRect(
//                             child: Container(
//                               height: 350,
//                               width: 460,
//                               child: const Image(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/images/aboutimage3.jpeg')),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 20.0),
//                       const Expanded(
//                         flex: 1,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                                 'In our homes, we use organic building materials. \nCow dung is used as a natural, environmentally \nfriendly paint. We offer a water quality monitoring \nsystem that analyses the pH level of the water as \nwell as an air quality monitor that can detect CO2, \nPM2, PM2.5, PM10, and AQI. We offer herbal plants \nwith the ability to clear the air and reduce tension. \nOur homes are designed with adequate light and \nair ventilation in mind.',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.w400)),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Expanded(
//                         flex: 1,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                                 'A different app will be used to transport organically \nfocused produce, fruits, and groceries.www.selorg.com\nWe will provide an access to a nearby fitness centre. A \nnearby hospital will provide hospital support for needed \nmedical aid. Through a mobile app, we enable access to \nhand-picked mindfulness content that is intended to \nreduce stress and increase mood, energy, and focus \nwww.hltywlty.com.',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.w400)),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 20.0),
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: const Color(0x80233D63),
//                             // Here we define the border
//                             border: Border.all(
//                               color: const Color(0x80233D63), // Border color
//                               width: 4.0, // Border width
//                             ),
//                           ),
//                           child: ClipRect(
//                             child: Container(
//                               height: 350,
//                               width: 430,
//                               child: const Image(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/images/aboutimage4.png')),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: const Color(0x80233D63),
//                             // Here we define the border
//                             border: Border.all(
//                               color: const Color(0x80233D63), // Border color
//                               width: 4, // Border width
//                             ),
//                           ),
//                           child: ClipRect(
//                             child: Container(
//                               height: 350,
//                               width: 430,
//                               child: const Image(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/images/aboutimage5.jpeg')),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 20.0),
//                       const Expanded(
//                         flex: 1,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Our homes are smart homes with smart \nappliances, lights, security cameras, and other \nhome electronics in our houses. There are \nprovisions for fire safety. Our ORGANIC HOMES \nhave solar power backup in an effort to reduce \nCO2 emissions and safeguard the environment.   ',
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Footer()
//         ],
//       ),
//     )));
//   }
// }
import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/footer.dart';
import '../Utility/header.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600; // Arbitrary breakpoint for mobile

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const NavBar(),
              Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/BuiltgloryHomepg/aboutbanner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: isMobile ? 20 : 100,
                    child: Text(
                      'Our homes are special.\nOur homes are organic homes.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 24 : 44,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'About Builtglory',
                      style: TextStyle(
                        fontSize: isMobile ? 30 : 50,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF234576),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (isMobile)
                      ..._buildMobileContent()
                    else
                      ..._buildWebContent(),
                    const SizedBox(height: 20),
                    const Footer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildWebContent() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x80233D63),
                // Here we define the border
                border: Border.all(
                  color: const Color(0x80233D63), // Border color
                  width: 4.0, // Border width
                ),
              ),
              child: ClipRect(
                child: Container(
                  height: 350,
                  width: 430,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/aboutimage1.jpeg')),
                ),
              ),
            ),
          ),
          const SizedBox(width: 50),
          const Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'BUILTGLORY is a high-end real estate marketplace \nthat enables customers to find properties, browse \nthrough properties online, choose, buy, and sell their \nORGANICALY created ideal homes. Through our \norganically designed smart home flagship online \nservice, we offer comprehensive help for having a \nbeautiful house and a happy life. Along with buying \nand selling we assist clients for financing their homes. \nWe redesign and renovate every home into an \norganically designed home in order to save the next \ngeneration.',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Preventing such chemicals from being included in the \ninterior specifications is a key first step in ensuring a \nhealthy indoor environment because of the improved \nindoor environment that is built into our homes. The \ncore of our business is satisfying clients with high-\nquality items. We market green houses. Modern \nwellness technologies are incorporated into our \nhomes to assist customers maintain their health and \nwell-being while enhancing their indoor air and water \nquality, nutrition and sleep habits.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x80233D63),
                // Here we define the border
                border: Border.all(
                  color: const Color(0x80233D63), // Border color
                  width: 4.0, // Border width
                ),
              ),
              child: ClipRect(
                child: Container(
                  height: 350,
                  width: 430,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/aboutimage2.jpeg')),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x80233D63),
                // Here we define the border
                border: Border.all(
                  color: const Color(0x80233D63), // Border color
                  width: 4.0, // Border width
                ),
              ),
              child: ClipRect(
                child: Container(
                  height: 350,
                  width: 460,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/aboutimage3.jpeg')),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          const Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'In our homes, we use organic building materials. \nCow dung is used as a natural, environmentally \nfriendly paint. We offer a water quality monitoring \nsystem that analyses the pH level of the water as \nwell as an air quality monitor that can detect CO2, \nPM2, PM2.5, PM10, and AQI. We offer herbal plants \nwith the ability to clear the air and reduce tension. \nOur homes are designed with adequate light and \nair ventilation in mind.',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'A different app will be used to transport organically \nfocused produce, fruits, and groceries.www.selorg.com\nWe will provide an access to a nearby fitness centre. A \nnearby hospital will provide hospital support for needed \nmedical aid. Through a mobile app, we enable access to \nhand-picked mindfulness content that is intended to \nreduce stress and increase mood, energy, and focus \nwww.hltywlty.com.',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x80233D63),
                // Here we define the border
                border: Border.all(
                  color: const Color(0x80233D63), // Border color
                  width: 4.0, // Border width
                ),
              ),
              child: ClipRect(
                child: Container(
                  height: 350,
                  width: 430,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/aboutimage4.png')),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x80233D63),
                // Here we define the border
                border: Border.all(
                  color: const Color(0x80233D63), // Border color
                  width: 4, // Border width
                ),
              ),
              child: ClipRect(
                child: Container(
                  height: 350,
                  width: 430,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/aboutimage5.jpeg')),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          const Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our homes are smart homes with smart \nappliances, lights, security cameras, and other \nhome electronics in our houses. There are \nprovisions for fire safety. Our ORGANIC HOMES \nhave solar power backup in an effort to reduce \nCO2 emissions and safeguard the environment.   ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }

  List<Widget> _buildMobileContent() {
    return [
      const Text(
        'BUILTGLORY is a high-end real estate marketplace that enables customers to find properties, browse through properties online, choose, buy, and sell their ORGANICALY created ideal homes. Through our organically designed smart home flagship online service, we offer comprehensive help for having a beautiful house and a happy life. Along with buying and selling we assist clients for financing their homes. We redesign and renovate every home into an organically designed home in order to save the next generation.',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 10),
      Image.asset('assets/images/aboutimage1.jpeg', fit: BoxFit.cover),
      const SizedBox(height: 20),
      const Text(
        'Preventing such chemicals from being included in the interior specifications is a key first step in ensuring a healthy indoor environment because of the improved indoor environment that is built into our homes. The core of our business is satisfying clients with high-quality items. We market green houses. Modern wellness technologies are incorporated into our homes to assist customers maintain their health and well-being while enhancing their indoor air and water quality, nutrition and sleep habits.',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 10),
      Image.asset('assets/images/aboutimage2.jpeg', fit: BoxFit.cover),
      const SizedBox(height: 20),
      const Text(
        'In our homes, we use organic building materials. Cow dung is used as a natural, environmentally friendly paint. We offer a water quality monitoring system that analyses the pH level of the water as well as an air quality monitor that can detect CO2, PM2, PM2.5, PM10, and AQI. We offer herbal plants with the ability to clear the air and reduce tension. Our homes are designed with adequate light and air ventilation in mind.',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 10),
      Image.asset('assets/images/aboutimage3.jpeg', fit: BoxFit.cover),
      const SizedBox(height: 20),
      const Text(
        'A different app will be used to transport organically focused produce, fruits, and groceries.www.selorg.com We will provide an access to a nearby fitness centre. A nearby hospital will provide hospital support for needed medical aid. Through a mobile app, we enable access to hand-picked mindfulness content that is intended to reduce stress and increase mood, energy, and focus www.hltywlty.com.',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 10),
      Image.asset('assets/images/aboutimage4.png', fit: BoxFit.cover),
      const SizedBox(height: 20),
      const Text(
        'Our homes are smart homes with smart appliances, lights, security cameras, and other home electronics in our houses. There are provisions for fire safety. Our ORGANIC HOMES have solar power backup in an effort to reduce CO2 emissions and safeguard the environment.   ',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 10),
      Image.asset('assets/images/aboutimage5.jpeg', fit: BoxFit.cover),
      const SizedBox(height: 20),
    ];
  }
}
