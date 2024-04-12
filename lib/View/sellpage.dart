import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/footer.dart';
import '../Utility/header.dart';
import 'contactpage.dart';

class SellView extends StatefulWidget {
  const SellView({super.key});

  @override
  State<SellView> createState() => _SellViewState();
}

class _SellViewState extends State<SellView> {
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
                        height:
                            MediaQuery.of(context).size.width > 600 ? 500 : 300,
                        fit: BoxFit.cover,
                        'assets/images/BuiltgloryHomepg/salebanner.png')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width > 600 ? 40 : 10,
                    vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sell',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).size.width > 600 ? 70 : 25,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600 ? 10 : 8,
                    ),
                    Text(
                      "Welcome our homes, just as they are, each \nwith its own unique charm and character. \nNo need for alterations or renovations—\nsimply move in and make it your own.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width > 600
                            ? 24
                            : 10, // Responsive font size
                        color: const Color(0xFFF2F2F2),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600 ? 40 : 20,
                    ),
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
          SingleChildScrollView(
            child: Center(
              child: SizedBox(
                height:
                    isLargeScreen ? 600 : 800, // Adjust the height for mobile
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
                          'Contact Details',
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
                        SizedBox(height: 50),
                        SizedBox(
                          height: 55,
                          width: isLargeScreen
                              ? screenWidth - 300
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
    )));
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
              decoration: InputDecoration(
            hintText: 'Enter Your Name',
            // hintStyle: TextStyle(
            //   // Adjust font size based on screen width
            //   fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 14,
            // ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Enter Your Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Enter Your Phone Number',
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
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Choose Property Type',
              border: OutlineInputBorder(),
            ),
            value: selectedValue,
            isExpanded: true,
            items: ['Option 1', 'Option 2', 'Option 3']
                .map((label) => DropdownMenuItem(
                      value: label,
                      child: Text(label),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
          const SizedBox(height: 10),
          const Text('Upload Property Files'),
          const SizedBox(height: 10),
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
              const SizedBox(width: 10),
              const Expanded(child: Text('No File Chosen')),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter more detail about your property',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
        ],
      ),
    );
  }
}
