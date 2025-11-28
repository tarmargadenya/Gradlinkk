import 'package:flutter/material.dart';

class JobPostingPage extends StatefulWidget {
  @override
  _JobPostingPageState createState() => _JobPostingPageState();
}

class _JobPostingPageState extends State<JobPostingPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers hold the text the user types
  final titleController = TextEditingController();
  final typeController = TextEditingController();
  final industryController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final skillsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post a Job"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                // Job Title
                Text("Job Title"),
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Enter job title",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                // Job Type
                Text("Job Type"),
                TextFormField(
                  controller: typeController,
                  decoration: InputDecoration(
                    hintText: "e.g. Internship, Graduate Trainee",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                // Industry
                Text("Industry"),
                TextFormField(
                  controller: industryController,
                  decoration: InputDecoration(
                    hintText: "e.g. ICT, Finance, Marketing",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                // Location
                Text("Location"),
                TextFormField(
                  controller: locationController,
                  decoration: InputDecoration(
                    hintText: "e.g. Kampala, Remote",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                // Description
                Text("Job Description"),
                TextFormField(
                  controller: descriptionController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Describe the job role...",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                // Required Skills
                Text("Required Skills"),
                TextFormField(
                  controller: skillsController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "List required skills...",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // For now we just print
                      print("Job Posted:");
                      print("Title: ${titleController.text}");
                      print("Type: ${typeController.text}");
                      print("Industry: ${industryController.text}");
                      print("Location: ${locationController.text}");
                      print("Description: ${descriptionController.text}");
                      print("Skills: ${skillsController.text}");
                    },
                    child: Text("Publish Job"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
