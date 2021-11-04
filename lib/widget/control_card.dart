import 'package:excersise_app/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ControlCard extends StatelessWidget {
  final String svg;
  final String title;
  const ControlCard({
    Key? key,
    required this.svg,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Kshadowcolor,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(svg),
              Spacer(),
              Text(title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 18)),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
