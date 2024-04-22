import 'package:flutter/material.dart';
import 'package:myapp/Components/customfield.dart';
import 'package:myapp/Constants/constants.dart';

class Dialogy {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        CustomTextField(
                            labelText: "Receiver's ID",
                            prefixIcon: Icons.person_4),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                            labelText: "TopUp Amount",
                            prefixIcon: Icons.price_change),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 14, backgroundColor: Colors.white),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 14, backgroundColor: primaryColor),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
