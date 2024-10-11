import 'package:flutter/material.dart';
import 'package:grow_buddy_app/pages/main%20pages/Class%20Screens/daycare.dart';
import 'package:grow_buddy_app/utilities/Home Screen/class_pages.dart';
import 'package:grow_buddy_app/constant.dart';

class Classes extends StatelessWidget {
  const Classes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AddNewClass(
              onClassTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Daycare(),
                  ),
                );
              },
              classImageLocation: 'assets/images/classes.jpeg',
              className: "Daycare",
              numberOfStudents: "<no.of students>",
              containerBackgroundColor: kDayCareSectionColor,
              containerBorderColor: kDayCareSectionBorderColor,
            ),
            AddNewClass(
              onClassTap: () {},
              classImageLocation: 'assets/images/classes.jpeg',
              className: "Playgroup",
              numberOfStudents: "<no. of. students>",
              containerBackgroundColor: kPlayGroupSectionColor,
              containerBorderColor: kPlayGroupSectionBorderColor,
            ),
            AddNewClass(
              onClassTap: () {},
              classImageLocation: 'assets/images/classes.jpeg',
              className: "Pre Nursery",
              numberOfStudents: "<no. of. students>",
              containerBackgroundColor: kPreNurserySectionColor,
              containerBorderColor: kPreNurserySectionBorderColor,
            ),
            AddNewClass(
              onClassTap: () {},
              classImageLocation: 'assets/images/classes.jpeg',
              className: "Nursery",
              numberOfStudents: "<no. of. students>",
              containerBackgroundColor: kNurserySectionColor,
              containerBorderColor: kNurserySectionBorderColor,
            ),
            AddNewClass(
              onClassTap: () {},
              classImageLocation: 'assets/images/classes.jpeg',
              className: "K.G.",
              numberOfStudents: "<no. of. students>",
              containerBackgroundColor: kKGSectionColor,
              containerBorderColor: kKGSectionBorderColor,
            ),
          ],
        ),
      ),
    );
  }
}
