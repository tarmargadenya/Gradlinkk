import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Section 1: About Us
            Text(
              "About Us",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            Text(
              "GradLink is a mobile application designed to help new graduates successfully transition "
              "from academic life to the professional world. The platform connects fresh graduates "
              "to entry-level jobs, internships, and graduate trainee programs while providing tools "
              "to strengthen their resumes and manage job applications effectively.",
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 24),

            // Section 2: History & Founders
            Text(
              "History & Founders",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            Text(
              "GradLink was created by the Binary Builders team as part of a university project at "
              "Makerere University Business School. The founders recognized a gap in the job market "
              "where graduates struggled to find tailored entry-level opportunities. To solve this, "
              "they designed a platform specifically focused on graduate employability, skills "
              "matching, and simplified job tracking.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),

            Text(
              "Founders:\n"
              "• Asiimwe Mercy Nayera\n"
              "• Nasejje Dorothy\n"
              "• Namarome Tarmar Gadenya\n"
              "• KwioCwiny Faith",
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 24),

            // Section 3: Contact Information
            Text(
              "Contact Information",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            Text(
              "Email: gradlink.support@example.com\n"
              "Phone: +256 700 000 000\n"
              "Address: Makerere University Business School, Kampala, Uganda",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
