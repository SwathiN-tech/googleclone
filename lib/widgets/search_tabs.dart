import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/widgets/search_tab.dart';
class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
              SearchTab(icon: Icons.search, text: 'ALL',isActive: true,),
              SizedBox(width: 20,),
              SearchTab(icon: Icons.image, text: 'Images',isActive: true,),
               SizedBox(width: 20,),
              SearchTab(icon: Icons.map, text: 'Maps',isActive: true,),
               SizedBox(width: 20,),
              SearchTab(icon: Icons.article, text: 'News',isActive: true,),
               SizedBox(width: 20,),
              SearchTab(icon: Icons.shop, text: 'Shopping',isActive: true,),
               SizedBox(width: 20,),
               SearchTab(icon: Icons.more_vert, text: 'More',isActive: true,),
               SizedBox(width: 20,),
        ],
      ),
    );
  }
}