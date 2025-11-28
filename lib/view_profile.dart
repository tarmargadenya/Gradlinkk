import 'package:flutter/material.dart';

class ViewProfileScreen extends StatelessWidget {
  // Sample data (in a real system this comes from the database)
  final String fullName = "Graduate Example";
  final String email = "graduate@example.com";
  final String university = "Makerere University";
  final String course = "BSc Information Systems";
  final String graduationYear = "2025";
  final String bio =
      "Motivated graduate passionate about technology and early-career opportunities.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // Profile Icon
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue,
                child: Text(
                  fullName[0],
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 15),

            // Name
            Center(
              child: Text(
                fullName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 5),

            // Email
            Center(
              child: Text(
                email,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),

            SizedBox(height: 25),
            Divider(),

            // Education Details Section
            Text(
              "Education Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            ProfileDetail(title: "University", value: university),
            ProfileDetail(title: "Course", value: course),
            ProfileDetail(title: "Graduation Year", value: graduationYear),

            SizedBox(height: 25),
            Divider(),

            // Bio Section
            Text(
              "About Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Text(
              bio,
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            SizedBox(height: 35),

            // Edit button (future feature)
            ElevatedButton(
              onPressed: () {
                // Future: Navigate to Edit Profile
              },
              child: Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}

// A simple reusable row widget
class ProfileDetail extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetail({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
