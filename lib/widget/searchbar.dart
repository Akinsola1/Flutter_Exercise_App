import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: 38, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(29)),
        child: TextFormField(
          autocorrect: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              icon: SvgPicture.asset('assets/icons/search.svg')),
        ));
  }
}

