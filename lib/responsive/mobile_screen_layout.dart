import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/mobile/mobile_footer.dart';
// ignore: unused_import
import 'package:google_clone_tutorial/web/search_buttons.dart';
// ignore: unused_import
import 'package:google_clone_tutorial/web/web_footer.dart';
import 'package:google_clone_tutorial/widgets/search.dart';
// ignore: unused_import
import 'package:google_clone_tutorial/widgets/translation_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
            width: size.width + 0.34,
            child: const DefaultTabController(
                length: 2,
                child: TabBar(
                    labelColor: blueColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: blueColor,
                    tabs: [
                      Tab(
                        text: 'ALL',
                      )
                    ]))),
        actions: [
          IconButton(
            onPressed: () {},
            color: blueColor,
            icon: SvgPicture.asset(
              'assets/images/more_apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              height: 20,
              color: const Color(0xff1473EB),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Search(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                const MobileFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
