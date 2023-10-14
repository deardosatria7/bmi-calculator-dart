import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: customCard(
                  color: Color.fromARGB(255, 14, 25, 56),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 60.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 218, 218, 218),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                child: customCard(
                  color: Color.fromARGB(255, 14, 25, 56),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 60.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 218, 218, 218),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
          Expanded(child: Row()),
          Expanded(child: Row()),
          Expanded(child: Row()),
        ],
      ),
    );
  }
}

class customCard extends StatelessWidget {
  customCard(
      {required this.color, required this.cardChild, required this.onPress});
  final Color color;
  final Widget cardChild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(left: 1.0, right: 1.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 20, 20, 63),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
