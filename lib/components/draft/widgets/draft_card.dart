import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_beta/db/student_forum/draft_table.dart';
import 'package:project_beta/theme/app_theme.dart';

class DraftCard extends StatelessWidget {
  final DraftModel draftModel;
  final VoidCallback onDeleteCalled;
  final VoidCallback onCardTap;

  DraftCard(
      {required this.draftModel,
      required this.onDeleteCalled,
      required this.onCardTap});

  @override
  Widget build(BuildContext context) {
    if (draftModel.id!.isEmpty) {
      return SizedBox();
    } else {
      return GestureDetector(
        onTap: onCardTap,
        child: Container(
          margin: EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(14.0)),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                draftModel.subject.toString(),
                style: GoogleFonts.barlow(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                draftModel.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColor.greenSpring),
              ),
              SizedBox(
                height: 5.0,
              ),
              GestureDetector(
                onTap: onDeleteCalled,
                child: Text(
                  "DELETE",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
