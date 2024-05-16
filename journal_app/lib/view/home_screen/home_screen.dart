// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/components.dart';
import 'package:journal_app/constants.dart';
import 'package:journal_app/view/add_entry_screen/add_entry_screen.dart';
import 'package:journal_app/view/read_entry_screen/read_entry_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Container(
          width: w,
          height: h,
          decoration: kscreenBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JourneyTitle(),
              SizedBox(
                height: h * 0.045,
              ),
              Image(
                image: AssetImage("images/journal.png"),
                width: w * 0.51,
                height: h * 0.23,
              ),
              SizedBox(
                height: h * 0.08,
              ),
              JourneyButton(
                  label: 'Read Entries',
                  fn: () async {
                    await FirebaseFirestore.instance
                        .collection('entries')
                        .get()
                        .then((snapshot) {
                      List<QueryDocumentSnapshot> docList = snapshot.docs;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ReadEntryScreen(docs: docList),
                          ));
                    });
                  }),
              SizedBox(height: 20),
              JourneyButton(
                  label: 'Add Entries',
                  fn: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddEntryScreen(),
                        ));
                  })
            ],
          )),
    ));
  }
}
