import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mau_kerja/screen/main_page.dart';
import 'package:mau_kerja/shared/theme.dart';

class AddJobPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController jobTypeController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController locController = TextEditingController();
  AddJobPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference jobs = firestore.collection("jobs");
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Job',
          style: GoogleFonts.poppins(
              color: lastColor, fontSize: 20, fontWeight: bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: titleController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Input Job',
                labelText: "Judul",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            TextFormField(
              keyboardType: TextInputType.multiline,
              controller: jobTypeController,
              decoration: const InputDecoration(
                hintText: 'Type',
                labelText: "Job Tybe",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            TextFormField(
              controller: jobController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Input Job',
                labelText: "Job",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            TextFormField(
              controller: locController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Location',
                labelText: "Input Location",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GestureDetector(
          onTap: () {
            jobs.add({
              'title': titleController.text,
              'type': jobTypeController.text,
              'job': jobController.text,
              'location': locController.text,
            });

            titleController.text = '';
            jobTypeController.text = '';
            jobController.text = '';
            locController.text = '';

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: primaryColor,
            ),
            child: Text(
              'Submit',
              style: secondTextColor.copyWith(fontSize: 20, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
