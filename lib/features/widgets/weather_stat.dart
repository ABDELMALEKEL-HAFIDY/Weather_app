import 'package:flutter/material.dart';

class WeatherStat extends StatelessWidget {
  const WeatherStat({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey,),
        SizedBox(height: 8,),
        Text(text,style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff0f1c44),
          ),)
      ],
    );
  }
}
