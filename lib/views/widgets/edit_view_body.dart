import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_row.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const CustomAppRow(
            title: 'Edit NOTE',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(hintText: 'Titile'),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
