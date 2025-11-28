import 'package:flutter/material.dart';

class InterviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interview Details')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Job: Software Engineer Intern', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Company: Company A'),
            SizedBox(height: 10),
            Text('Interview Date: 5th Dec 2025'),
            SizedBox(height: 10),
            Text('Time: 10:00 AM'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // future: open email app
              },
              child: Text('Open Email App'),
            ),
          ],
        ),
      ),
    );
  }
}
