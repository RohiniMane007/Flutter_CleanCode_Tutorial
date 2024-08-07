import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const InternetExceptionWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        ),
        const Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 50,
        ),
         const Padding(
           padding: EdgeInsets.only(top: 20),
           child: Text("Please check your internet connection"),
         ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: onPressed, child: const Text('Retry'))
      ],
    );
  }
}
