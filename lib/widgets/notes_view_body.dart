import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 30,
        left: 30,
        top: 50,
        bottom: 20,
      ),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
