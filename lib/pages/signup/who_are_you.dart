import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/signup/sign_up_home.dart';

class WhoAreYou extends StatefulWidget {
  const WhoAreYou({super.key});

  @override
  State<WhoAreYou> createState() => _WhoAreYouState();
}

enum Designation { Teacher, Student }

class _WhoAreYouState extends State<WhoAreYou> {
  Designation? _character;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Who are you?"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/who_are_you.png'),
              Column(
                children: [
                  ListTile(
                    title: Text("Teacher"),
                    iconColor: kPrimaryColor1,
                    horizontalTitleGap: 20,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    leading: Radio<Designation>(
                      activeColor: kPrimaryColor1,
                      splashRadius: 10.0,
                      value: Designation.Teacher,
                      groupValue: _character,
                      onChanged: (Designation? value) {
                        setState(() {
                          _character = Designation.Teacher;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        _character = Designation.Teacher;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpHome(),
                          ),
                        );
                      });
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ListTile(
                    title: Text("Student"),
                    iconColor: kPrimaryColor1,
                    horizontalTitleGap: 20,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    leading: Radio<Designation>(
                      activeColor: kPrimaryColor1,
                      splashRadius: 10.0,
                      value: Designation.Student,
                      groupValue: _character,
                      onChanged: (Designation? value) {
                        setState(() {
                          _character = Designation.Student;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        _character = Designation.Student;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
