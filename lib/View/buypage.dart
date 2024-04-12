// import 'package:flutter/material.dart';
// import 'package:mybuildglorywebsite/View/apartmentinfo.dart';
// import 'package:mybuildglorywebsite/View/commercial.dart';
// import 'package:mybuildglorywebsite/View/plot.dart';
// import 'package:mybuildglorywebsite/View/villainfo.dart';
// import '../Utility/Footer.dart';
// import '../Utility/Header.dart';
// import 'contactpage.dart';
// import 'detailedpage.dart';
//
// class BuyView extends StatefulWidget {
//   const BuyView({super.key});
//
//   @override
//   State<BuyView> createState() => _BuyViewState();
// }
//
// class _BuyViewState extends State<BuyView> {
//   String? selectedPropertyType;
//   String? selectedCountry;
//   String? selectedState;
//   String? selectedDistrict;
//   String? selectedCity;
//   String? selectedArea;
//
//   final List<String> gridimage = [
//     'assets/images/Buy/image1.png',
//     'assets/images/Buy/image2.png',
//     'assets/images/Buy/image3.png',
//     'assets/images/Buy/image4.jpeg',
//     'assets/images/Buy/image5.jpeg',
//     'assets/images/Buy/image6.jpeg',
//     'assets/images/Buy/image7.png',
//     'assets/images/Buy/image8.png',
//     'assets/images/Buy/image8.png',
//     'assets/images/Buy/image10.jpeg',
//     'assets/images/Buy/image11.jpeg',
//     'assets/images/Buy/image12.jpeg',
//   ];
//   final List<String> gridtitle = [
//     'Apartment',
//     'Apartment',
//     'Apartment',
//     'Villa',
//     'Villa',
//     'Villa',
//     'Plot',
//     'Plot',
//     'Plot',
//     'Commercial Building',
//     'Commercial Building',
//     'Commercial Building',
//   ];
//   final List<String> gridsubtitle = [
//     'West Mambalam , Chennai',
//     'Ahoke Nagar , Chennai',
//     'Thambaram, Chennai',
//     'Guindy, Chennai',
//     'Vandalur, Chennai',
//     'Avadi, Chennai',
//     'Avadi, Chennai',
//     'Kottivakkam, Chennai',
//     'Thooraipakam, Chennai',
//     'Saidapet, Chennai',
//     'Chennai',
//     'Chennai'
//   ];
//
//   List<Menu> menus = [
//     Menu(title: 'Property', options: [
//       'Apartment',
//       'Villa',
//       'Commercial',
//       'Plot',
//       'Industrial Land'
//     ]),
//     Menu(title: 'Country', options: [
//       'India',
//       'Sri Lanka',
//       'America',
//       'Vietnam',
//       'Russia',
//       'Brazil'
//     ]),
//     Menu(title: 'State', options: [
//       'Tamil Nadu',
//       'Karnataka',
//       'Kerala',
//       'Andhra Pradesh',
//     ]),
//     Menu(title: 'District', options: [
//       'Chennai',
//       'Vellore',
//       'Madurai',
//       'Salem',
//       'Tenkasi',
//     ]),
//     Menu(
//         title: 'City',
//         options: ['Chennai', 'Coimbatore', 'Madurai', 'Salem', 'Tirunelveli']),
//     Menu(title: 'Area', options: [
//       'Vandalur',
//       'Adyar',
//       'Guindy',
//       'Ashok Nagar',
//       'Thiruvanmiyur'
//     ]),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const NavBar(),
//               Container(
//                 width: screenWidth,
//                 color: const Color(0xFF234576),
//                 height: 500,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       right: 0,
//                       height: 500,
//                       width: screenWidth,
//                       child: ClipRect(
//                         child: Image.asset(
//                             fit: BoxFit.fill,
//                             'assets/images/BuiltgloryHomepg/buybanner.png'),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 40, vertical: 70),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Buy',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w700,
//                               fontSize: 70,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           const Text(
//                             "where quality meets innovation in \nconstruction. We specialize in offering \npremium properties designed to meet \nyour aspirations.",
//                             style: TextStyle(
//                               fontSize: 25,
//                               color: Color(0xFFF2F2F2),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           SizedBox(
//                             height: 55,
//                             width: 250,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           const Contactpage()), // Replace YourDestinationPage with the target page
//                                 );
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     const Color(
//                                         0xFFEF5659)), // Sets the button color to #EF5659
//                               ),
//                               child: const Text(
//                                 'Contact Now',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors
//                                         .white), // Sets text color to white for contrast
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 height: 80,
//                 width: (MediaQuery.of(context).size.width) - 270,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.white,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             ...menus.map((menu) {
//                               return Expanded(
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   underline: Container(),
//                                   hint: Text(menu.title),
//                                   value: _getSelectedOption(menu.title),
//                                   onChanged: (String? newValue) {
//                                     setState(() {
//                                       _updateSelectedOption(
//                                           menu.title, newValue);
//                                     });
//                                   },
//                                   items: menu.options
//                                       .map<DropdownMenuItem<String>>(
//                                     (String value) {
//                                       return DropdownMenuItem<String>(
//                                         value: value,
//                                         child: Text(value),
//                                       );
//                                     },
//                                   ).toList(),
//                                 ),
//                               );
//                             }),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF233D63),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: IconButton(
//                         icon: const Icon(Icons.search, color: Colors.white),
//                         onPressed: () {
//                           // Navigate to detailed page with selected attributes
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => DetailedPage(
//                                 propertyType: selectedPropertyType,
//                                 country: selectedCountry,
//                                 state: selectedState,
//                                 district: selectedDistrict,
//                                 city: selectedCity,
//                                 area: selectedArea,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(30),
//                 height: 800,
//                 width: MediaQuery.of(context).size.width,
//                 color: const Color(0xFFF2F2F2),
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3, // Number of columns
//                     crossAxisSpacing: 20, // Horizontal space between items
//                     mainAxisSpacing: 20, // Vertical space between items
//                   ),
//                   itemCount: 12, // Total number of items
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         // Determine which page to navigate to based on the item's title
//                         switch (gridtitle[index]) {
//                           case 'Apartment':
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       ApartmentPage()), // Navigate to ApartmentPage
//                             );
//                             break;
//                           case 'Villa':
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       villaPage()), // Navigate to VillaPage
//                             );
//                             break;
//                           case 'Plot':
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       PlotPage()), // Navigate to PlotPage
//                             );
//                             break;
//                           case 'Commercial Building':
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       CommercialPage()), // Navigate to CommercialBuildingPage
//                             );
//                             break;
//                           default:
//                             // Handle unknown cases if necessary
//                             break;
//                         }
//                       },
//                       child: GridTile(
//                         footer: Container(
//                           color: const Color(0xFFE4F1F8),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(gridtitle[index]), // First text
//                                 Text(gridsubtitle[index]), // Second text
//                               ],
//                             ),
//                           ),
//                         ),
//                         child: ClipRect(
//                           child: Image.asset(
//                             gridimage[index],
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const Footer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   String? _getSelectedOption(String title) {
//     switch (title) {
//       case 'Property':
//         return selectedPropertyType;
//       case 'Country':
//         return selectedCountry;
//       case 'State':
//         return selectedState;
//       case 'District':
//         return selectedDistrict;
//       case 'City':
//         return selectedCity;
//       case 'Area':
//         return selectedArea;
//       default:
//         return null;
//     }
//   }
//
//   void _updateSelectedOption(String title, String? newValue) {
//     switch (title) {
//       case 'Property':
//         selectedPropertyType = newValue;
//         break;
//       case 'Country':
//         selectedCountry = newValue;
//         break;
//       case 'State':
//         selectedState = newValue;
//         break;
//       case 'District':
//         selectedDistrict = newValue;
//         break;
//       case 'City':
//         selectedCity = newValue;
//         break;
//       case 'Area':
//         selectedArea = newValue;
//         break;
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/View/apartmentinfo.dart';
import 'package:mybuildglorywebsite/View/commercial.dart';
import 'package:mybuildglorywebsite/View/plot.dart';
import 'package:mybuildglorywebsite/View/villainfo.dart';
import '../Utility/Footer.dart';
import '../Utility/Header.dart';
import 'contactpage.dart';
import 'detailedpage.dart';

class BuyView extends StatefulWidget {
  const BuyView({super.key});

  @override
  State<BuyView> createState() => _BuyViewState();
}

class _BuyViewState extends State<BuyView> {
  String? selectedPropertyType;
  String? selectedCountry;
  String? selectedState;
  String? selectedDistrict;
  String? selectedCity;
  String? selectedArea;

  final List<String> gridimage = [
    'assets/images/Buy/image1.png',
    'assets/images/Buy/image2.png',
    'assets/images/Buy/image3.png',
    'assets/images/Buy/image4.jpeg',
    'assets/images/Buy/image5.jpeg',
    'assets/images/Buy/image6.jpeg',
    'assets/images/Buy/image7.png',
    'assets/images/Buy/image8.png',
    'assets/images/Buy/image8.png',
    'assets/images/Buy/image10.jpeg',
    'assets/images/Buy/image11.jpeg',
    'assets/images/Buy/image12.jpeg',
  ];
  final List<String> gridtitle = [
    'Apartment',
    'Apartment',
    'Apartment',
    'Villa',
    'Villa',
    'Villa',
    'Plot',
    'Plot',
    'Plot',
    'Commercial Building',
    'Commercial Building',
    'Commercial Building',
  ];
  final List<String> gridsubtitle = [
    'West Mambalam , Chennai',
    'Ahoke Nagar , Chennai',
    'Thambaram, Chennai',
    'Guindy, Chennai',
    'Vandalur, Chennai',
    'Avadi, Chennai',
    'Avadi, Chennai',
    'Kottivakkam, Chennai',
    'Thooraipakam, Chennai',
    'Saidapet, Chennai',
    'Chennai',
    'Chennai'
  ];

  List<Menu> menus = [
    Menu(title: 'Property', options: [
      'Apartment',
      'Villa',
      'Commercial',
      'Plot',
      'Industrial Land'
    ]),
    Menu(title: 'Country', options: [
      'India',
      'Sri Lanka',
      'America',
      'Vietnam',
      'Russia',
      'Brazil'
    ]),
    Menu(title: 'State', options: [
      'Tamil Nadu',
      'Karnataka',
      'Kerala',
      'Andhra Pradesh',
    ]),
    Menu(title: 'District', options: [
      'Chennai',
      'Vellore',
      'Madurai',
      'Salem',
      'Tenkasi',
    ]),
    Menu(
        title: 'City',
        options: ['Chennai', 'Coimbatore', 'Madurai', 'Salem', 'Tirunelveli']),
    Menu(title: 'Area', options: [
      'Vandalur',
      'Adyar',
      'Guindy',
      'Ashok Nagar',
      'Thiruvanmiyur'
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const NavBar(),
              // Container(
              //   width: screenWidth,
              //   color: const Color(0xFF234576),
              //   height: 500,
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         right: 0,
              //         height: 500,
              //         width: screenWidth,
              //         child: ClipRect(
              //           child: Image.asset(
              //               fit: BoxFit.fill,
              //               'assets/images/BuiltgloryHomepg/buybanner.png'),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 40, vertical: 70),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text(
              //               'Buy',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.w700,
              //                 fontSize: 70,
              //               ),
              //             ),
              //             const SizedBox(height: 10),
              //             const Text(
              //               "where quality meets innovation in \nconstruction. We specialize in offering \npremium properties designed to meet \nyour aspirations.",
              //               style: TextStyle(
              //                 fontSize: 25,
              //                 color: Color(0xFFF2F2F2),
              //               ),
              //             ),
              //             const SizedBox(height: 20),
              //             SizedBox(
              //               height: 55,
              //               width: 250,
              //               child: ElevatedButton(
              //                 onPressed: () {
              //                   Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) =>
              //                             const Contactpage()), // Replace YourDestinationPage with the target page
              //                   );
              //                 },
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                       const Color(
              //                           0xFFEF5659)), // Sets the button color to #EF5659
              //                 ),
              //                 child: const Text(
              //                   'Contact Now',
              //                   style: TextStyle(
              //                       fontSize: 20,
              //                       color: Colors
              //                           .white), // Sets text color to white for contrast
              //                 ),
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

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
                                : 300,
                            fit: BoxFit.cover,
                            'assets/images/BuiltgloryHomepg/buybanner.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.width > 600 ? 40 : 10,
                        vertical: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Buy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width > 600
                                  ? 70
                                  : 25,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.width > 600 ? 10 : 8,
                        ),
                        Text(
                          "where quality meets innovation in \nconstruction. We specialize in offering \npremium properties designed to meet \nyour aspirations.",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width > 600
                                ? 24
                                : 10, // Responsive font size
                            color: const Color(0xFFF2F2F2),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.width > 600 ? 40 : 20,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.width > 600 ? 55 : 25,
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
                                  fontSize:
                                      MediaQuery.of(context).size.width > 600
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

              const SizedBox(height: 20),

              Container(
                height: 80,
                // width: isLargeScreen ? screenWidth - 270 : screenWidth - 30,
                width: isLargeScreen ? screenWidth - 500 : screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20), // Adjusted padding
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...menus.map((menu) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5), // Margin between dropdowns
                            child: DropdownButton<String>(
                              isExpanded:
                                  false, // Not expanding in mobile view to save space
                              underline: Container(),
                              hint: Text(
                                menu.title,
                                style: TextStyle(
                                  fontSize: 14, // Smaller text for mobile view
                                ),
                              ),
                              value: _getSelectedOption(menu.title),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _updateSelectedOption(menu.title, newValue);
                                });
                              },
                              items: menu.options.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize:
                                          14, // Smaller text for mobile view
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                        }).toList(),
                        Container(
                          margin: EdgeInsets.only(
                              left: 10), // Adds spacing before the search icon
                          decoration: BoxDecoration(
                            color: const Color(0xFF233D63),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            iconSize:
                                24, // Slightly larger icon for better touch interaction
                            icon: const Icon(Icons.search, color: Colors.white),
                            onPressed: () {
                              // Navigate to detailed page with selected attributes
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailedPage(
                                    propertyType: selectedPropertyType,
                                    country: selectedCountry,
                                    state: selectedState,
                                    district: selectedDistrict,
                                    city: selectedCity,
                                    area: selectedArea,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(30),
                width: screenWidth,
                color: const Color(0xFFF2F2F2),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isLargeScreen ? 3 : 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20, // Vertical space between items
                  ),
                  itemCount: 12, // Total number of items
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Determine which page to navigate to based on the item's title
                        switch (gridtitle[index]) {
                          case 'Apartment':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ApartmentPage()), // Navigate to ApartmentPage
                            );
                            break;
                          case 'Villa':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      villaPage()), // Navigate to VillaPage
                            );
                            break;
                          case 'Plot':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PlotPage()), // Navigate to PlotPage
                            );
                            break;
                          case 'Commercial Building':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CommercialPage()), // Navigate to CommercialBuildingPage
                            );
                            break;
                          default:
                            // Handle unknown cases if necessary
                            break;
                        }
                      },
                      child: GridTile(
                        footer: Container(
                          color: const Color(0xFFE4F1F8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(gridtitle[index]), // First text
                                Text(gridsubtitle[index]), // Second text
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
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  String? _getSelectedOption(String title) {
    switch (title) {
      case 'Property':
        return selectedPropertyType;
      case 'Country':
        return selectedCountry;
      case 'State':
        return selectedState;
      case 'District':
        return selectedDistrict;
      case 'City':
        return selectedCity;
      case 'Area':
        return selectedArea;
      default:
        return null;
    }
  }

  void _updateSelectedOption(String title, String? newValue) {
    switch (title) {
      case 'Property':
        selectedPropertyType = newValue;
        break;
      case 'Country':
        selectedCountry = newValue;
        break;
      case 'State':
        selectedState = newValue;
        break;
      case 'District':
        selectedDistrict = newValue;
        break;
      case 'City':
        selectedCity = newValue;
        break;
      case 'Area':
        selectedArea = newValue;
        break;
    }
  }
}
