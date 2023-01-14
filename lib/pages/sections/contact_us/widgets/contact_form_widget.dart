import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/utilities/extensions.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class ContactFormWidget extends StatefulWidget {
  const ContactFormWidget({Key? key}) : super(key: key);

  @override
  State<ContactFormWidget> createState() => _ContactFormWidgetState();
}

class _ContactFormWidgetState extends State<ContactFormWidget> {
  late TextEditingController _nameController;
  late TextEditingController _contentController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _contentController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Have Something To Write?',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text!.isValidName()) ? null : 'Please insert valid name!';
                      },
                      decoration: const InputDecoration(
                        hintText: 'Your Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text != null && text.isValidEmail)
                            ? null
                            : 'Please insert valid email!';
                      },
                      decoration: const InputDecoration(
                        hintText: 'Your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                minLines: 3,
                maxLines: 10,
                validator: (text) {
                  return (text!.isValidName(minLength: 10))
                      ? null
                      : 'Please insert valid message!, at least 10 characters';
                },
                decoration: const InputDecoration(
                  hintText: 'Your Message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: AppStyles.elevatedButtonYellowStyle,
                onPressed: _sendMail,
                child: const Text('Send'),
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _sendMail() async {
    final String mail =
        'mailto:${DeveloperInfo.mail}?subject=${_nameController.text.trim()}&body=${_contentController.text.trim()}';
    LauncherMethods.launchUrlFromString(mail);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
