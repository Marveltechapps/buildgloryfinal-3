import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/View/sellpage.dart';
import '../Utility/footer.dart';
import '../Utility/header.dart';
import 'buypage.dart';
import 'contactpage.dart';
import 'exchangepage.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class BuildHomepage extends StatefulWidget {
  const BuildHomepage({super.key});

  @override
  State<BuildHomepage> createState() => _BuildHomepageState();
}

class _BuildHomepageState extends State<BuildHomepage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> imgList = [
      {
        'image': 'assets/images/Home/c1.png',
        'buttonText': 'Organic\nIndependent Home',
      },
      {
        'image': 'assets/images/Home/c2.png',
        'buttonText': 'Commercial Building',
      },
      {
        'image': 'assets/images/Home/c3.png',
        'buttonText': 'Plot & Layout',
      },
      {
        'image': 'assets/images/Home/c5.png',
        'buttonText': 'Apartment',
      },
      {
        'image': 'assets/images/Home/c4.png',
        'buttonText': 'Villa',
      },
      // Add more items as needed
    ];

    final List<String> imgpath = [
      'assets/images/Home/buylogo.png',
      'assets/images/Home/selllogo.png',
      'assets/images/Home/Exchange.png'
    ];
    final List<String> titles = ['Buy', 'Sell', 'Exchange'];
    final List<String> paragraphs = [
      'Builtglory encompasses a variety of\n   properties, including homes\napartments, plots of land and office\nspaces, offering diverse investment\n  opportunities in the property  \n                   market.   ',
      'Market your homes as they are,\nwithout making any alterations.',
      'Swap your current home for one of\n  our beautifully and Organically   \n designed properties through an \nexchange program that offers you \n an upgraded living experience..'
    ];
    final List<String> buttonTexts = ['Click Here', 'Click Here', 'Click Here'];
    double screenWidth = MediaQuery.of(context).size.width;
    //screenWidth > 600 ? screenWidth / 3 : screenWidth / 3;

    int itemsPerRow = MediaQuery.of(context).size.width > 600 ? 3 : 2;
    // Calculate the number of rows needed
    int numberOfRows = (imgList.length / itemsPerRow).ceil();

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Container(
              width: screenWidth,
              color: const Color(0xFF234576),
              height: MediaQuery.of(context).size.width > 600
                  ? 500
                  : 400, // Consider making this dynamic based on content or screen size
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/BuiltgloryHomepg/homebanner.png',
                      width: MediaQuery.of(context).size.width,
                      height:
                          MediaQuery.of(context).size.width > 600 ? 500 : 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    // Centering the content horizontally and vertically
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment
                          .center, // To keep the column's size just as big as its children
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width > 600
                              ? 80
                              : 40, // Responsive height
                          width: MediaQuery.of(context).size.width > 600
                              ? 290
                              : 145, // Responsive width
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBEB),
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ), // Your logo here
                        const SizedBox(
                            height: 15), // Space between logo and text
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Welcome to our property online platform! Discover \nyour dream home through our seamless buying, \nselling, and exchange services.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 600
                                  ? 24
                                  : 8, // Responsive font size
                              color: const Color(0xFFF2F2F2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.width > 600 ? 40 : 20,
                        ), // Space between text and button
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
                ],
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) {
                    // Determine screen width
                    double screenWidth = MediaQuery.of(context).size.width;

                    // Adjust widths and positions based on screen width
                    double cardWidth = screenWidth > 600
                        ? 500
                        : screenWidth *
                            0.9; // For wider screens use fixed width, for narrower screens use percentage
                    double containerWidth = screenWidth > 600
                        ? screenWidth / 3
                        : screenWidth; // Full width on smaller screens
                    double imageSize =
                        60; // Can adjust image size based on screen size if needed

                    return Container(
                      width: containerWidth,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(12),
                            height:
                                450, // You might want to adjust this based on content or screen size as well
                            width: cardWidth,
                            child: Stack(children: [
                              Card(
                                semanticContainer: true,
                                margin: const EdgeInsets.all(20.0),
                                borderOnForeground: true,
                                surfaceTintColor: const Color(0xFFDD93B2),
                                color: const Color(0xFFE4F1F8),
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 50),
                                      Text(
                                        titles[index],
                                        style: const TextStyle(
                                            color: Color(0xFF234576),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      const SizedBox(height: 5),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          paragraphs[index],
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      const Spacer(),
                                      ElevatedButton(
                                        onPressed: () {
                                          // This is where we'll navigate to different screens based on the index
                                          if (index == 0) {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        BuyView()));
                                          } else if (index == 1) {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SellView()));
                                          } else if (index == 2) {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ExchangeView()));
                                          }
                                        },
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xFFF2F2F2)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xFF234576)),
                                        ),
                                        child: Text(buttonTexts[index]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: screenWidth > 600
                                    ? 130
                                    : 130, // Adjust the position based on the screen width
                                child: Container(
                                  alignment: Alignment.center,
                                  height: imageSize,
                                  width: imageSize,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Image.asset(imgpath[index],
                                          color: Colors.white)),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // Dynamically adjust the height based on the screen size or content
              height: MediaQuery.of(context).size.width > 600 ? 800 : 800,
              color: const Color(0xFFEF5659),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Property List",
                      style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontSize:
                            MediaQuery.of(context).size.width > 600 ? 24 : 12,
                        fontWeight: FontWeight.w700,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 3.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(numberOfRows, (rowIndex) {
                        // Determine the start index for the items in this row
                        int startIndex = rowIndex * itemsPerRow;
                        // Determine the end index for the items in this row
                        int endIndex = startIndex + itemsPerRow;
                        // Slice the imgList to get only the items for this row
                        List<Map<String, String>> rowItems = imgList.sublist(
                            startIndex,
                            endIndex > imgList.length
                                ? imgList.length
                                : endIndex);

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            children: rowItems
                                .map((item) => Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: ClipRect(
                                              child: Container(
                                                child: Image.asset(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >
                                                          600
                                                      ? 260
                                                      : 160, // Adjust based on screen size
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width >
                                                          600
                                                      ? 380
                                                      : 280, // Adjust based on screen size
                                                  item['image']!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Your button action here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.black,
                                              backgroundColor:
                                                  Colors.white, // Text color
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        18.0), // Rounded corners
                                              ),
                                            ),
                                            child: Text(
                                              item['buttonText']!,
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        600
                                                    ? 16
                                                    : 8, // Adjust based on screen size
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            const Footer()
          ],
        ),
      ),
    ));
  }
}
