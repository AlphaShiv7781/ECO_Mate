import 'package:eco_mate/resources/recyle/RecyclePageOne.dart';
import 'package:flutter/material.dart';
import 'Input_page.dart';
import 'news/news.dart';
import 'resources/reduse/reduse.dart';
import 'resources/resuse/resuse.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 40, bottom: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 58.0, bottom: 50),
              child: Text(
                'ECO Mate',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                const NewRow(
                  text: ' CO2 Calc',
                  icon: Icons.calculate_outlined,
                  function: Input_page(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const NewRow(
                  text: 'Recycle',
                  icon: Icons.replay_circle_filled_rounded,
                  function: RecyclePageOne(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const NewRow(
                  text: 'Reuse',
                  icon: Icons.recycling_sharp,
                  function: Reuse(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const NewRow(
                  text: 'Reduce',
                  icon: Icons.reduce_capacity_rounded,
                  function: Reduce(),
                ),
                const SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'News',
                  icon: Icons.newspaper,
                  function: News(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final function;

  const NewRow({
    Key? key,
    required this.icon,
    required this.text, this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    function));
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white54),
          ),
        )
      ],
    );
  }
}
