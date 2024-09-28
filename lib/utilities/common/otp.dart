import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  OTPTextField({super.key, required this.numberOfDigits});

  var fieldData = [];
  int index_i = 0;
  final int numberOfDigits;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(numberOfDigits, (index) {
        return SizedBox(
          width: 40,
          child: TextField(
            // controller: controllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1, // Single digit input
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              counterText: "", // Hide counter
            ),
            onChanged: (value) {
              if (value.length == 1 && index != 5) {
                FocusScope.of(context).nextFocus(); // Move to the next field
              } else if (value.isEmpty && index != 0) {
                FocusScope.of(context)
                    .previousFocus(); // Move to the previous field
              }

              fieldData[index_i] = value;
              index_i++;
              print(fieldData);
            },
          ),
        );
      }),
    );
  }
}
