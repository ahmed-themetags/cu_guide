import 'package:cu_guide/data/static_data.dart';
import 'package:cu_guide/features/departments/view/department_tab_screen.dart';
import 'package:cu_guide/features/home/view/home_tab_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // for bottom navigation bar

  // List of screens for each bottom navigation tab
  static final List<Widget> _screens = [
    HomeTabScreen(),
    DepartmentTabScreen(),
    Text('Screen 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🚀 CU Guide – Chittagong University Companion'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.train,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                      child: Text(
                        'CU Guide',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(height: 5),
                  Center(
                      child: Text(
                        'Chittagong University Companion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
            ListTile(
              title: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "About Developer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Hi, I Am Ahmed Ullah. Formar student for Communication & journalism, University of Chittagong. 🎓✨",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Facebook: www.facebook.com/ahmedsohelcu",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Gmail: www.facebook.com/ahmedsohelcu",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Email: ahmedsohelcu@gmail.com",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "What We Offer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildBulletPoint(
                      "📅 Class & Exam Schedules – Stay updated with your department timetable."),
                  _buildBulletPoint(
                      "🏛 Department Details – Quick access to faculty and department information."),
                  _buildBulletPoint(
                      "🌳 Campus Map & Tourist Spots – Discover CU’s beautiful spots and historical landmarks."),
                  _buildBulletPoint(
                      "🚌 Transport Information – Easy guidance for bus, train, and local transport."),
                  _buildBulletPoint(
                      "📢 Notices & Announcements – Never miss an important update."),
                  const SizedBox(height: 20),
                  const Text(
                    "Our Vision",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "We believe the University of Chittagong is not just an institution – it’s a community and a home to thousands. CU Guide aims to connect students and visitors with everything they need, right at their fingertips.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Why CU Guide?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildBulletPoint(
                      "✅ Simple, modern, and user-friendly design."),
                  _buildBulletPoint(
                      "✅ Built with ❤️ using Flutter for speed and performance."),
                  _buildBulletPoint(
                      "✅ Constantly updated to match students’ real needs."),
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      "👉 CU Guide is more than an app – it’s your digital companion for university life.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Handle drawer tap if needed
              },
            ),
          ],
        ),
      ),

      body: SafeArea(
          child: _screens[_currentIndex]
      ),
      backgroundColor: Colors.green[50],
      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: Colors.blueAccent,
        backgroundColor: Colors.green,
        height: 60,
        index: _currentIndex,
        items: const <Widget>[
          Icon(Icons.home),
          Icon(Icons.school),
          Icon(Icons.train),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  static Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.4),
      ),
    );
  }
}
