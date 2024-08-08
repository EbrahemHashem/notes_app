import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'My Notes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Text(
              'write your notes here to save it ',
              style: TextStyle(
                color: Colors.black.withOpacity(.25),
                fontSize: 20,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.trash),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27),
            child: Text(
              '8August,2024',
              style: TextStyle(
                color: Colors.black.withOpacity(.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
