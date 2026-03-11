import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search City'),
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: Icon(Iconsax.back_square_copy, color: Color(0xff94D2BD)),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search For Cities",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Color(0xff94D2BD))),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Color(0xff94D2BD),
                    style: BorderStyle.solid
                    ),),
                    
            ),
              ),
              
          ),
        ),
      
      
    );
  }
}
