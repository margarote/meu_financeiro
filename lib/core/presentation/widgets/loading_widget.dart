import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          alignment: Alignment.center,
          children: const [
            Icon(Icons.monetization_on, size: 150),
            SizedBox(
              width: 140,
              height: 140,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.cyanAccent,
              ),
            ),
          ],
        ),
      );
  }
}