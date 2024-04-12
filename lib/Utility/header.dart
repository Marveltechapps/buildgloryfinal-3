import 'package:flutter/material.dart';
import 'package:mybuildglorywebsite/View/homepage.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Drawer.dart';

// Navigation bar widget
class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    // Variable to keep track of the current active page

    return ScreenTypeLayout(
      desktop: const Desk(),
      mobile: const MobileView(),
    );
  }
}

class Desk extends StatefulWidget {
  const Desk({super.key});

  @override
  State<Desk> createState() => _DeskState();
}

class _DeskState extends State<Desk> {
  @override
  Widget build(BuildContext context) {
    String activePage = '';
    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                navlogo(context),
              ],
            ),
            const SizedBox(width: 40),
            navButton(
              title: 'Buy',
              onPressed: () {
                setState(() => activePage = 'Buy');
                Navigator.pushNamed(context, '/Buy');
              },
              isActive: activePage == 'Buy',
            ),
            navButton(
              title: 'Sell',
              onPressed: () {
                setState(() => activePage = 'Sell');
                Navigator.pushNamed(context, '/Sell');
              },
              isActive: activePage == 'Sell',
            ),
            navButton(
              title: 'Exchange',
              onPressed: () {
                Navigator.pushNamed(context, '/Exchange');
              },
              isActive: activePage == 'exchange',
            ),
            navButton(
              title: 'Agent',
              onPressed: () {
                setState(() => activePage = 'Agent');
                Navigator.pushNamed(context, '/Agent');
              },
              isActive: activePage == 'Agent',
            ),
            navButton(
              title: 'Contact',
              onPressed: () {
                setState(() => activePage = 'Agent');
                Navigator.pushNamed(context, '/Contact Us');
              },
              isActive: activePage == 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}

Widget navButton({
  required String title,
  required VoidCallback onPressed,
  required bool isActive, // New parameter to indicate if the button is active
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.white.withOpacity(0.5);
          }
          return Colors.transparent;
        },
      ),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: const Color(0xFF234576),
        fontSize: 26,
        fontWeight: FontWeight.bold,
        decoration: isActive
            ? TextDecoration.underline
            : TextDecoration.none, // Conditionally underline
      ),
    ),
  );
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navlogo(context),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomAppdrawer()),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget navlogo(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const BuildHomepage()), // Replace YourDestinationPage with the target page
      );
    },
    child: Container(
      height: 60,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
