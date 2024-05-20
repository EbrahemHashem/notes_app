import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppRow extends StatelessWidget {
  const CustomAppRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'NOTES',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
