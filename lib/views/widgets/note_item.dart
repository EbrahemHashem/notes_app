import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        right: 13,
        left: 15,
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
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Text(
                'build your career with me',
                style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            'May 21, 2022',
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
