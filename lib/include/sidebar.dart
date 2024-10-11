// sidebar.dart

import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final bool isVisible;
  final Function toggleSidebar;

  Sidebar({required this.isVisible, required this.toggleSidebar});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isVisible ? 60 : 0, // Set the width of the sidebar
      duration: Duration(milliseconds: 300),
      color: Color(0xFF1F2A44), // Darker shade for the sidebar
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSidebarButton(Icons.home, "Home", Colors.blue),
          SizedBox(height: 30),
          _buildSidebarButton(Icons.settings, "Settings", Colors.green, isActive: true),
        ],
      ),
    );
  }

  Widget _buildSidebarButton(IconData icon, String label, Color iconColor, {bool isActive = false}) {
    return Column(
      children: [
        // Show icon only if sidebar is visible
        if (isVisible)
          Icon(
            icon,
            color: isActive ? Colors.white : iconColor, // Use specified icon color
            size: 30,
          ),
        // Show label only if sidebar is visible
        if (isVisible)
          SizedBox(height: 5),
        if (isVisible)
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}
