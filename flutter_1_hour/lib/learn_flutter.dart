import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn FLutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/macaw.jpeg'),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.pink,
            child: const Center(
              child: Text(
                "This is a text widget",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch
                    ? Colors.cyan
                    : Colors.red, //if true then cyan, if false then red
              ),
              onPressed: () {
                debugPrint("You pressed the Elevated Button");
              },
              child: const Text("Elevated Button")),
          OutlinedButton(
              onPressed: () {
                debugPrint("You pressed the Outlined Button");
              },
              child: const Text("Outlined Button")),
          TextButton(
              onPressed: () {
                debugPrint("You pressed the Text Button");
              },
              child: const Text("Text Button")),
          GestureDetector(
            behavior: HitTestBehavior
                .opaque, //any time i tap on the row the print resolves
            onTap: () {
              debugPrint("This is the Row");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                ),
                Text("Row Widget"),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              }),
          Image.network(
              "https://static.wikia.nocookie.net/lovenikki/images/b/b5/Blue_Phoenix%27s_Letter.png/revision/latest?cb=20190922113523")
        ]),
      ),
    );
  }
}
