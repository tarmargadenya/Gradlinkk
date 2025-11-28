import 'package:flutter/material.dart';
import 'job_posting.dart';

class EmployerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employer Dashboard"),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Metric Cards Row
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    title: "Users\nInteracted",
                    value: "120",   // replace with dynamic value later
                    color: Colors.blue.shade100,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    title: "Pending\nApplications",
                    value: "8",
                    color: Colors.orange.shade100,
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Post Job Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Post New Job"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobPostingPage()),
                  );
                },
              ),
            ),

            SizedBox(height: 24),

            Text(
              "Recent Applications",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // Recent Application Items
            _buildAppItem(
              jobTitle: "Data Intern",
              status: "Submitted",
            ),
            SizedBox(height: 12),
            _buildAppItem(
              jobTitle: "Finance Trainee",
              status: "Submitted",
            ),

            SizedBox(height: 16),

            // View More Button
            TextButton(
              onPressed: () {
                // navigate later
              },
              child: Text("View more applications"),
            ),
          ],
        ),
      ),
    );
  }

  // Metric Card Widget
  Widget _buildStatCard({
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Application Item Widget
  Widget _buildAppItem({
    required String jobTitle,
    required String status,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(jobTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 4),
              Text(
                status,
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16)
        ],
      ),
    );
  }
}
