import 'package:flutter/material.dart';

class JobsFeedScreen extends StatelessWidget {
  final List<Map<String, String>> jobs = [
    {'title': 'Software Engineer Intern', 'company': 'Company A'},
    {'title': 'Graduate Trainee - Marketing', 'company': 'Company B'},
    {'title': 'Junior Data Analyst', 'company': 'Company C'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jobs Feed')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(jobs[index]['title']!),
                subtitle: Text(jobs[index]['company']! + ' • Entry Level'),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tracker');
                  },
                  child: Text('Apply'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
