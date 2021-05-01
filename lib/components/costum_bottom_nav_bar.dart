import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/Screens/Home/home_screen.dart';
import 'package:refineapp/Screens/Notebook/notebook_screen.dart';
import 'package:refineapp/Screens/StudyBook/study_book_screen.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:refineapp/enums.dart';

class CostumBottomNavBar extends StatelessWidget {
  const CostumBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = kPrimaryLightColor;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/notebook.svg",
                  color: MenuState.notebook == selectedMenu
                      ? yellowColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NotebookScreen();
                  }));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/open-book.svg",
                  color: MenuState.studybook == selectedMenu
                      ? yellowColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StudyBookScreen();
                  }));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? yellowColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
              ),
            ],
          ),
        ));
  }
}
