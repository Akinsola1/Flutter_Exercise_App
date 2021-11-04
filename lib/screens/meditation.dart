import 'package:excersise_app/constants/constant.dart';
import 'package:excersise_app/widget/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matcher/matcher.dart';

class meditation extends StatefulWidget {
  const meditation({Key? key}) : super(key: key);

  @override
  _meditationState createState() => _meditationState();
}

class _meditationState extends State<meditation> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Kbluecolor,
              image: DecorationImage(
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fill),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meditation',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                const Text(
                  '3-10 Min Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Text(
                      'Live happier and healthier by learning the foundamentals of meditation and mindfullness'),
                ),
                SizedBox(width: size.width * 0.6, child: searchbar()),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    session_card(
                      SeasonNo: 1,
                      isDone: true,
                    ),
                    session_card(
                      SeasonNo: 2,
                      isDone: true,
                    ),
                    session_card(
                      SeasonNo: 3,
                      isDone: true,
                    ),
                    session_card(
                      SeasonNo: 4,
                      isDone: false,
                    ),
                    session_card(
                      SeasonNo: 5,
                      isDone: false,
                    ),
                    session_card(
                      SeasonNo: 6,
                      isDone: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Meditation',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: Kshadowcolor,
                        ),
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assets/icons/Meditation_women_small.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basic 2',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text('Start your deepen practice ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/Lock.svg'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class session_card extends StatelessWidget {
  final int SeasonNo;
  bool isDone;
  session_card({
    Key? key,
    required this.SeasonNo,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isDone ? Kbluecolor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Kbluecolor)),
                      child: Icon(
                        FontAwesomeIcons.playCircle,
                        color: isDone ? Colors.white : Kbluecolor,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Section $SeasonNo',
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
