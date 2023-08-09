import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: const Text(
        'Sonraki Soru',
        textAlign: TextAlign.center,
      ),
    );
  }
}
