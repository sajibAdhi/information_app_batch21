import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Column(
                    children: [
                      CustomHeader(text: "Personal Information"),
                      CustomField(text: "Personal Details", icon: Icons.person),
                      CustomField(text: "Contact", icon: Icons.phone),
                      CustomField(text: "Career Application Information", icon: Icons.file_copy),
                      CustomField(text: "Preferred Area", icon: Icons.location_city),
                      CustomField(text: "Other Relevant Information", icon: Icons.info_rounded),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      CustomHeader(text: "Education / Training"),
                      CustomField(text: "Academic Qualification", icon: Icons.build),
                      CustomField(text: "Training Summary", icon: Icons.model_training),
                      CustomField(text: "Professional Certificate Summary", icon: Icons.file_download),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      CustomHeader(text: "Employment  History"),
                      CustomField(text: "Web Developer at AdovaSoft", icon: Icons.cases),
                      CustomField(text: "Programmer at AdovaSoft", icon: Icons.cases),

                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      CustomHeader(text: "Other Information"),
                      CustomField(text: "Specialization", icon: Icons.file_copy_sharp),
                      CustomField(text: "Language Proficiency", icon: Icons.language),
                      CustomField(text: "Reference", icon: Icons.person_add),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 180),
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomField({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),),
    );
  }
}


