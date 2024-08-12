import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hintText: 'Title',
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hintText: 'Content',
                maxLines: 6,
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
