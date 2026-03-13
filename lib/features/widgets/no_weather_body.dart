import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Weather Around You ☀️',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Searching Now',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              const Icon(Iconsax.search_status, size: 28),
            ],
          ),
        ],
      ),
    );
  }
}
