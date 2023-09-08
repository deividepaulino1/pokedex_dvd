import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show({
    required BuildContext context,
    required String message,
    required IconData icon,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1500),
        content: Center(
          child: Row(
            children: [
              Icon(
                icon,
                size: 22,
                color: Colors.red.shade600,
              ),
              const SizedBox(width: 5),
              Text(
                message,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white, // Cor de fundo do Snackbar
        elevation: 10.0,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.yellow.shade600, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        dismissDirection: DismissDirection.horizontal,

        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 140,
          left: 80,
          right: 35,
        ),
      ),
    );
  }
}
