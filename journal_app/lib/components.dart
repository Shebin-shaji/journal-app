// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_app/constants.dart';
import 'package:journal_app/view/read_single_entry/read_single_entry.dart';

class JourneyTitle extends StatelessWidget {
  const JourneyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          "Journy",
          style: GoogleFonts.pacifico(
              textStyle: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 10
              ..color = Color(0xff00114f),
          )),
        ),
        Text(
          "Journy",
          style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        )
      ],
    );
  }
}

class JourneyButton extends StatelessWidget {
  const JourneyButton({super.key, required this.label, required this.fn});
  final String label;
  final fn;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: fn,
        child: Container(
          width: w * 0.8,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
              child: Text(
            label,
            style: kbuttonText,
          )),
        ));
  }
}

const kTextField = BoxDecoration(
    color: Colors.black26, borderRadius: BorderRadius.all(Radius.circular(10)));

class EntryTile extends StatelessWidget {
  const EntryTile(
      {super.key,
      required this.title,
      required this.entry,
      required this.date});
  final String title;
  final String entry;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 3,
                offset: Offset(0, 7))
          ]),
      child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadSingleEntry(
                    title: title,
                    date: date,
                    entry: entry,
                  ),
                ));
          },
          contentPadding: EdgeInsets.all(3),
          title: Text(
            title,
            style: TextStyle(
                color: Color(0xff00114f),
                fontWeight: FontWeight.w600,
                fontSize: 28),
          ),
          subtitle: Text(
            entry,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Color(0xff00114f), fontSize: 24),
          ),
          tileColor: Colors.white,
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${date.substring(5, 11)},${date.substring(0, 3)}',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00114f)),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                date.substring(17).trim(),
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00114f)),
              ),
            ],
          )),
    );
  }
}
