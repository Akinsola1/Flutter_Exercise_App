import 'package:excersise_app/screens/meditation.dart';
import 'package:excersise_app/widget/control_card.dart';
import 'package:excersise_app/widget/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
                color: Color(0xfff5ceb8),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage('assets/images/undraw_pilates_gpdb.png'))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                    color: Color(0xfff2bea1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/menu.svg')),
            ),
            Text(
              'Good Evening \n Faruq ',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            searchbar(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  ControlCard(
                    svg: 'assets/icons/Hamburger.svg',
                    title: 'Diet \n Recomendation',
                  ),
                  ControlCard(  
                    svg: 'assets/icons/Excrecises.svg',
                    title: 'Kegel \n Excersise',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => meditation()));
                    },
                    child: ControlCard(
                      svg: 'assets/icons/Meditation.svg',
                      title: 'Meditation',
                    ),
                  ),
                  ControlCard(
                    svg: 'assets/icons/yoga.svg',
                    title: 'Yoga',
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
            ),
          ),
        ],
      ),
    );
  }
}

