import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:uts_feelty/workout.dart';
import 'package:uts_feelty/nutrition.dart';
import 'package:uts_feelty/report.dart';
import 'package:uts_feelty/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.5),
          blurRadius: 25,
          offset: const Offset(0, 10),
        ),
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(37.5),
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.deepOrange,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(16),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Workout',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            GButton(
              icon: Icons.food_bank,
              text: 'Nutrition',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NutritionPage()),
                );
              },
            ),
            GButton(
              icon: Icons.monitor_heart,
              text: 'Report',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReportPage()),
                );
              },
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}