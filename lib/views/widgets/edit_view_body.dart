import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_row.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppRow(
            title: 'Edit NOTE',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
