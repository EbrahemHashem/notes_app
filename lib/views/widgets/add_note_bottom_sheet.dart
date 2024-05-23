import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Description',
            maxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          const CustomButton(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
