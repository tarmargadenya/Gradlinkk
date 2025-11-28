import 'package:flutter/material.dart';
import 'view_profile.dart';
class ProfileViewScreen extends StatelessWidget {
  final String fullName = "Jane Doe";
  final String email = "janedoe@gmail.com";
  final String university = "Makerere University";
  final String course = "BSc Computer Science";
  final String graduationYear = "2025";
  final String bio =
      "Aspiring software engineer passionate about mobile applications, data processing, and building youth-focused technology solutions.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // Profile Icon
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Text(
                  fullName[0],
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            // NAME
            Text(
              fullName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5),
            Text(
              email,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),

            SizedBox(height: 20),
            Divider(),

            // PROFILE DETAILS
            SizedBox(height: 10),
            Text(
              "Education Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            ProfileItem(title: "University", value: university),
            ProfileItem(title: "Course", value: course),
            ProfileItem(title: "Graduation Year", value: graduationYear),

            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),

            // BIO
            Text(
              "About Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              bio,
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            SizedBox(height: 30),

            // EDIT BUTTON (future functionality)
            ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewProfileScreen()),
    );
  },
  child: Text("View Profile"),
),

          
              
              
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final String value;

  const ProfileItem({required this.title, required this.value});

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
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
