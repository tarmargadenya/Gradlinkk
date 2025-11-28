import 'package:flutter/material.dart';
import 'application_tracker.dart';
import 'interview.dart';
import 'job_feed.dart';
import 'login_screen.dart';
import 'job_posting.dart';
import 'employer_dashboard.dart';
import 'AboutUs.dart';
import 'view_profile.dart';
import 'profile_view.dart';
import 'signup.dart';
import 'theme.dart';


void main() {
  runApp(GradLinkApp());
}

class GradLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GradLink',
      theme: gradLinkTheme(),    // Apply global theme
      home: LoginScreen(),     // start page
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/jobs': (context) => JobsFeedScreen(),
        '/tracker': (context) => Application_Tracker(),
        '/interview': (context) => InterviewScreen(),
        '/post_job': (context) => JobPostingPage(),
        '/employer': (context) => EmployerDashboard(),
        '/AboutUs': (context) => AboutUs(),
        '/profile': (context) => ViewProfileScreen(),
        '/profile_view': (context) => ProfileViewScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}
