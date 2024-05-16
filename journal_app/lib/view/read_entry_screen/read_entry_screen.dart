// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/components.dart';
import 'package:journal_app/constants.dart';
import 'package:journal_app/view/add_entry_screen/add_entry_screen.dart';

class ReadEntryScreen extends StatefulWidget {
  const ReadEntryScreen({super.key, required this.docs});
  final List<QueryDocumentSnapshot> docs;

  @override
  State<ReadEntryScreen> createState() => _ReadEntryScreenState();
}

class _ReadEntryScreenState extends State<ReadEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: kscreenBg,
              child: widget.docs.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        JourneyTitle(),
                        SizedBox(height: 20),
                        Expanded(
                            child: Center(
                                child: Text(
                          "Please Add Entry",
                          style: kbuttonText,
                        ))),
                        SizedBox(
                          height: 20,
                        ),
                        JourneyButton(
                            label: 'Add Entries',
                            fn: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddEntryScreen(),
                                  ));
                            }),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        JourneyTitle(),
                        SizedBox(height: 20),
                        Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return EntryTile(
                                      title:
                                          widget.docs.elementAt(index)['Title'],
                                      entry:
                                          widget.docs.elementAt(index)['Entry'],
                                      date:
                                          widget.docs.elementAt(index)['Date']);
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                      height: 10,
                                    ),
                                itemCount: widget.docs.length)),
                        SizedBox(
                          height: 20,
                        ),
                        JourneyButton(
                            label: "BACK",
                            fn: () {
                              Navigator.pop(context);
                            }),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ))),
    );
  }
}
