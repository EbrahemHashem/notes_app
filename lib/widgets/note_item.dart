import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Flutter Notes",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: const Text(
                "Notes App can save your notes",
                style: TextStyle(
                  color: Color.fromARGB(172, 0, 0, 0),
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  size: 25,
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text(
                'May24 , 2024 ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
