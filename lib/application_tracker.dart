import 'package:flutter/material.dart';

class Application_Tracker extends StatelessWidget {
  final List<Map<String, String>> applications = [
    {'job': 'Software Engineer Intern', 'status': 'Submitted'},
    {'job': 'Junior Data Analyst', 'status': 'Interview Scheduled'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Application Tracker')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: applications.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(applications[index]['job']!),
                subtitle: Text('Status: ${applications[index]['status']}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/interview');
                  },
                  child: Text('Details'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
