import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
        top: 50,
      ),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Edit Notes',
            icon: Icons.check,
          ),
          CustomTextField(hintText: 'Title'),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
