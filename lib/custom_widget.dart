import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Color containerColor;
  final String amountText;
  final String durationText;
  final String calculationsText;

  CustomWidget({
    required this.containerColor,
    required this.amountText,
    required this.durationText,
    required this.calculationsText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 140,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: containerColor.withOpacity(0.9),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, size: 40),
          ),
          const SizedBox(height: 8),
          Text(
            amountText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            durationText,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            calculationsText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
