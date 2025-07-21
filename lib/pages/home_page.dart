import 'package:flutter/material.dart';
import '../widgets/home_widgets.dart';
import '../widgets/drawer_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pawares_Jaithum'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHeader(),
              SizedBox(height: 40),
              _buildMenuButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          'Worksheet',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildMenuButtons(BuildContext context) {
    return Column(
      children: [
        MenuButton(
          title: 'Profile',
          subtitle: 'ดูข้อมูลส่วนตัว',
          icon: Icons.person,
          color: Colors.green,
          route: '/profile',
        ),
        SizedBox(height: 16),
        MenuButton(
          title: 'Image Gallery',
          subtitle: 'ดูคลังรูปภาพ',
          icon: Icons.photo_library,
          color: Colors.purple,
          route: '/image-gallery',
        ),
        SizedBox(height: 16),
        MenuButton(
          title: 'Mix Layout',
          subtitle: 'เลเอาต์ผสม',
          icon: Icons.dashboard,
          color: Colors.orange,
          route: '/mix-layout',
        ),
        SizedBox(height: 16),
        MenuButton(
          title: 'GetX and Navigation',
          subtitle: 'การจัดการสถานะและนำทาง',
          icon: Icons.navigation,
          color: Colors.red,
          route: '/getx-navigation',
        ),
      ],
    );
  }
}
