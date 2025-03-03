import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: size.width <= 768 ?10 :150,
            vertical: 15,
          ),
          child: Row(
            children: [
              Text(
                'India',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width:10,),
              Container(height: 20, width: 0.5, color: Colors.grey,),
              const SizedBox(width: 10,),
              const Icon(Icons.circle, color: Color(0xFF70757A), size:12, ),
              const SizedBox(width: 10,),
              const Text('100016, Mumbai, Maharashtra,',
              style: TextStyle(
                fontSize: 14,
                color: primaryColor,
              ),)
            ],
          ),
        ),
        const Divider(thickness: 0, height: 9, color: Colors.black26,),
        Container(
          color: footerColor, padding: const EdgeInsets.symmetric(horizontal: 50,),
          child: Row(
            children: [Text(
              'Help', style: TextStyle(color: Colors.grey[700], fontSize: 15,),
            ),
            const SizedBox(width: 20,),
            Text(
              'Send Feedback', style: TextStyle(color: Colors.grey[700], fontSize: 15,),
            ),
            const SizedBox(width: 20,),
             Text(
              'Privacy', style: TextStyle(color: Colors.grey[700], fontSize: 15,),
            ),
            const SizedBox(width: 20,),
             Text(
              'Terms', style: TextStyle(color: Colors.grey[700], fontSize: 15,),
            ),
            const SizedBox(width: 20,),
            ],
          ),
        )
      ],
    );
  }
}
