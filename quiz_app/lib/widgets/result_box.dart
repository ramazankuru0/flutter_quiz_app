import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({super.key, required this.result, required this.questionLength, required this.onPressed});
  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.background,
      content: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sonuç', style: TextStyle(color: AppColors.white, fontSize: 22)),
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow
                  : result < questionLength / 2
                      ? AppColors.incorrect
                      : AppColors.correct,
              child: Text(
                '$result/$questionLength',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              result == questionLength / 2
                  ? 'İdare Eder'
                  : result < questionLength / 2
                      ? 'Tekrar Dene'
                      : 'Harika',
              style: const TextStyle(color: AppColors.white),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: onPressed,
              child: const Text(
                'Tekrar Dene',
                style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
