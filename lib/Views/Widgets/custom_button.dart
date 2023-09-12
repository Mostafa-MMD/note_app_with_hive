import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    this.isLoading = false,
  }) : super(key: key);

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextButton(
          onPressed: onTap,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : const Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.5,
                    letterSpacing: 2,
                  ),
                ),
        ),
      ),
    );
  }
}
