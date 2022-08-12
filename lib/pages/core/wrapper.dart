import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';
import 'package:newsappdebugged/pages/eplore/explore.dart';

import '../../components/styles/custom_icons_icons.dart';
import '../home/home.dart';

// class Wrapper extends StatefulWidget {
//   const Wrapper({Key? key}) : super(key: key);

//   @override
//   State<Wrapper> createState() => _WrapperState();
// }

// class _WrapperState extends State<Wrapper> {
//   int currentIndex = 0;

//    List<Widget> screens = [
//     // this list is to put screens here
//     const Home(),
//     const Explore(),
//     const Explorepage(),
//     const Text("demo"),
//     const Text("demo"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         selectedItemColor: primaryorange,
//         iconSize: 25,
//         unselectedItemColor: unselectedGrey,
//         elevation: 0,
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         mouseCursor: null,
//         type: BottomNavigationBarType.fixed,
//         onTap: (int mytabbedindex) {
//           HapticFeedback.lightImpact();
//           mytabbedindex = currentIndex;
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(CustomIcons.home),
//             label: "home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CustomIcons.search),
//             label: "explore",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CustomIcons.coverage),
//             label: "coverage",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CustomIcons.inbox),
//             label: "inbox",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "user",
//           )
//         ],
//       ),
//       body: screens.elementAt(currentIndex),
//     );
//   }
// }

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    // this list is to put screens here
    const Home(),
    const Explore(),

    const Text("demo"),
    const Text("demo"),
    const Text("demo"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: primaryorange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (int mytappedindex) {
          setState(() {
            //when pressed it gives vibration feedbacks.
            HapticFeedback.lightImpact();
            _currentIndex = mytappedindex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.search),
            label: "explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.coverage),
            label: "Coverage",
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.inbox),
            label: "inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "user",
          )
        ],
      ),
      //changes the body of the scaffold with respect to the current
      body: _screens.elementAt(_currentIndex),
    );
  }
}
