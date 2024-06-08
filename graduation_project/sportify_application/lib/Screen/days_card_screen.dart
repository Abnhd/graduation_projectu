import 'package:flutter/material.dart';
import 'package:sportify_application/widget/days_of_exersice.dart';
import 'package:sportify_application/widget/home_appbar.dart';
class days_card_screen extends StatefulWidget {
  const days_card_screen({super.key});

  @override
  State<days_card_screen> createState() => _days_card_screenState();
}

class _days_card_screenState extends State<days_card_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const HomeAppbar(),
                const SizedBox(height: 30),
                 days_of_exersice(),




              ]
            ),
          ),
        ),
      ),
    );
  }
  }