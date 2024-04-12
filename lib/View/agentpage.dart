import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/Utility/footer.dart';
import '../Utility/header.dart';
import 'contactpage.dart';

class AgentView extends StatefulWidget {
  const AgentView({super.key});

  @override
  State<AgentView> createState() => _AgentViewState();
}

class _AgentViewState extends State<AgentView> {
  String? selectedOption = 'Buy';
  String? selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;

    // Adjust sizing based on screen width
    // final double cardWidth = isLargeScreen ? screenWidth * 0.8 : screenWidth;
    // final double cardMargin = isLargeScreen ? 20.0 : 0;
    String? selectedValue;
    String selectedOption = 'Buy'; // Default value
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const NavBar(),
          Container(
            width: screenWidth,
            color: const Color(0xFF234576), // Container's background color
            height: screenWidth > 600 ? 650 : 360,
            child: Stack(children: [
              Positioned(
                height: screenWidth > 600 ? 650 : 360,
                width: screenWidth,
                child: ClipRect(
                    child: Image.asset(
                        width: screenWidth,
                        // height: screenWidth > 600 ? 700 : 300,
                        fit: BoxFit.cover,
                        'assets/images/BuiltgloryHomepg/agentbanner.png')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth > 600 ? 40 : 10, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Agent',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth > 600 ? 70 : 25,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 10),
                    Text(
                      "They helps people buy, sell, or rent \nproperties. Research markets, list \nproperties, find suitable options for \nclients, negotiate deals, handle legal \naspects, manage transactions, build \nrelationships, and stay updated on \nindustry trends. They work on \ncommission, earning a percentage of \nthe final sale or rental price.",
                      style: TextStyle(
                        fontSize:
                            screenWidth > 600 ? 24 : 10, // Responsive font size
                        color: const Color(0xFFF2F2F2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: screenWidth > 600 ? 55 : 25,
                      width: screenWidth > 600
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
                    )
                  ],
                ),
              ),
            ]),
          ),
          screenWidth > 600
              ? SizedBox(
                  height: 700,
                  width: isLargeScreen ? screenWidth * 0.8 : screenWidth,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const Text(
                            'Contact Details',
                            style: TextStyle(
                                color: Color(0xFF234576),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              // Left section with 3 widgets
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Name',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Phone Number',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      const Text("Choose One"),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 5),
                                            Radio<String>(
                                              value: 'Buy',
                                              groupValue: selectedOption,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedOption = value!;
                                                });
                                              },
                                            ),
                                            const Text('Buy'),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            // Sell Radio Option
                                            Radio<String>(
                                              value: 'Sell',
                                              groupValue: selectedOption,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedOption = value!;
                                                });
                                              },
                                            ),
                                            const Text('Sell'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      const Text('Upload Property Files'),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                              hintText: 'Choose Files',
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            )),
                                          ),
                                          const SizedBox(width: 10),
                                          const Expanded(
                                              child: Text('No File Chosen')),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      TextFormField(
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter more detail about your property',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              // Right section with 5 widgets
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Email',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      DropdownButtonFormField<String>(
                                        decoration: const InputDecoration(
                                          // This is where we set up the TextField look
                                          labelText: 'Choose Property Type',
                                          border: OutlineInputBorder(),
                                        ),
                                        value: selectedValue,
                                        isExpanded: true,
                                        items: [
                                          'Option 1',
                                          'Option 2',
                                          'Option 3'
                                        ]
                                            .map((label) => DropdownMenuItem(
                                                  value: label,
                                                  child: Text(label),
                                                ))
                                            .toList(),
                                        //hint: Text('Select a option'),
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 55,
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () {
                                // Your button action here
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(
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
                )
              : SizedBox(
                  height: 900,
                  width: isLargeScreen ? screenWidth * 0.8 : screenWidth,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const Text(
                            'Contact Details',
                            style: TextStyle(
                                color: Color(0xFF234576),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              // Left section with 3 widgets
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Name',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Phone Number',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      const Text("Choose One"),
                                      TextFormField(
                                          decoration: InputDecoration(
                                        hintText: 'Enter Your Email',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )),
                                      const SizedBox(height: 15),
                                      DropdownButtonFormField<String>(
                                        decoration: const InputDecoration(
                                          // This is where we set up the TextField look
                                          labelText: 'Choose Property Type',
                                          border: OutlineInputBorder(),
                                        ),
                                        value: selectedValue,
                                        isExpanded: true,
                                        items: [
                                          'Option 1',
                                          'Option 2',
                                          'Option 3'
                                        ]
                                            .map((label) => DropdownMenuItem(
                                                  value: label,
                                                  child: Text(label),
                                                ))
                                            .toList(),
                                        //hint: Text('Select a option'),
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value;
                                          });
                                        },
                                      ),
                                      const Text("Choose One"),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 5),
                                            Radio<String>(
                                              value: 'Buy',
                                              groupValue: selectedOption,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedOption = value!;
                                                });
                                              },
                                            ),
                                            const Text('Buy'),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            // Sell Radio Option
                                            Radio<String>(
                                              value: 'Sell',
                                              groupValue: selectedOption,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedOption = value!;
                                                });
                                              },
                                            ),
                                            const Text('Sell'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      const Text('Upload Property Files'),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                              hintText: 'Choose Files',
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            )),
                                          ),
                                          const SizedBox(width: 10),
                                          const Expanded(
                                              child: Text('No File Chosen')),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      TextFormField(
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter more detail about your property',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              // Right section with 5 widgets
                            ],
                          ),
                          SizedBox(
                            height: 55,
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () {
                                // Your button action here
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(
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
                          ),
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
}
