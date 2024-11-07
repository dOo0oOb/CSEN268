// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/AnimatedAlignExample.dart';
import '../widgets/AnimatedContainerExample.dart';
import '../widgets/AnimatedCrossFadeExample.dart';
import '../widgets/AnimatedOpacityExample.dart';
import '../widgets/AnimatedRotationExample.dart';
import '../widgets/AnimatedSwitcherExample.dart';
import '../widgets/HeroExample.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 200, // Give a fixed height or wrap with Flexible
//               child: AnimatedSwitcherExample(),
//             ),
//             SizedBox(
//               height: 200,
//               child: Rotation(),
//             ),
//             SizedBox(
//               height: 200,
//               child: AnimatedContainerExampleApp(),
//             ),
//             SizedBox(
//               height: 200,
//               child: CombinedOpacityExampleApp(),
//             ),
//             SizedBox(
//               height: 200,
//               child: AnimatedAlignExampleApp(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title,}) : super(key: key);
  final String title;

  final List<Widget> animationExamples = [
    const AnimatedSwitcherExample(),
    const HeroExample(),
    const AnimatedRotationExample(),
    const AnimatedContainerExample(),
    const CombinedOpacityExample(),
    const AnimatedAlignExample(),
    const CrossFadeExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation Examples'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0), // Add padding around the ListView
        itemCount: animationExamples.length,
        itemBuilder: (context, index) {
          final widgetName = animationExamples[index].runtimeType.toString();
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0), // Add padding between each card
            child: Card(
              color: const Color.fromARGB(255, 179, 206, 234),
              child: ListTile(
                title: Text(widgetName),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => animationExamples[index]),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
