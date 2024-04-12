import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/View/agentpage.dart';
import 'package:mybuildglorywebsite/View/buypage.dart';
import 'package:mybuildglorywebsite/View/contactpage.dart';
import 'package:mybuildglorywebsite/View/exchangepage.dart';
import 'package:mybuildglorywebsite/View/sellpage.dart';

class CustomAppdrawer extends StatelessWidget {
  const CustomAppdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF27374D),
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 150,
                  height: 100,
                ),
              ],
            ),
          ),

          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Buy'),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const BuyView()), // Replace YourDestinationPage with the target page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.sell),
            title: const Text('Sell'),
            onTap: () {
              // Navigate to the leaves screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SellView()), // Replace YourDestinationPage with the target page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment_return_rounded),
            title: const Text('Exchange'),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const ExchangeView()), // Replace YourDestinationPage with the target page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Agent'),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const AgentView()), // Replace YourDestinationPage with the target page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Contact'),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Contactpage()), // Replace YourDestinationPage with the target page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Close'),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.pop(context);
            },
          ),
          // Divider(
          //   color: Colors.grey,
          // ),
          // ListTile(
          //   leading: Icon(Icons.logout_outlined),
          //   title: Text('Logout'),
          //   onTap: () {
          //     logout(); // Clear the session or token
          //     Navigator.of(context).pop(); // Close the dialog
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (BuildContext context) => LoginScreen(),
          //       ),
          //     ); // Navigate to the login screen
          //   },
          //   // Navigator.pushNamed(context, '/');
          //   // Navigate to the dashboard screen
          // ), // Add more list tiles for other screens as needed
        ],
      ),
    );
  }
}
