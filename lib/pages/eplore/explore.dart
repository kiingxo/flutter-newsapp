import 'package:flutter/material.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';
import 'package:newsappdebugged/components/widgets/button.dart';
import 'package:newsappdebugged/models/userintrest.dart';
import 'package:newsappdebugged/pages/eplore/explorebody.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Center(
                  child: Title(
                    color: Colors.black,
                    child: const Text(
                      "Pick your Interests",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "We'll use this info to personalize your feed to recommend things you'll like.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // GridView(
                //   children: [],
                //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //     maxCrossAxisExtent: 200,
                //     childAspectRatio: 3 / 2,
                //     mainAxisSpacing: 20,
                //     crossAxisSpacing: 20,
                //   ),
                // ),
                const Explorebody(
                  assetname1: "assets/images/Rectangle15.png",
                  assetname2: "assets/images/Rectangle15.png",
                  assetdescription1: "Politics",
                  assetdescription2: "Business",
                ),
                const SizedBox(
                  height: 15,
                ),
                const Explorebody(
                  assetname1: "assets/images/Rectangle15.png",
                  assetname2: "assets/images/Rectangle15.png",
                  assetdescription1: "Culture",
                  assetdescription2: "Health",
                ),
                const SizedBox(
                  height: 15,
                ),
                const Explorebody(
                  assetname1: "assets/images/Rectangle15.png",
                  assetname2: "assets/images/Rectangle15.png",
                  assetdescription1: "Nature",
                  assetdescription2: "Sports",
                ),
                const SizedBox(
                  height: 15,
                ),
                const Explorebody(
                  assetname1: "assets/images/Rectangle15.png",
                  assetname2: "assets/images/Rectangle15.png",
                  assetdescription1: "Tech",
                  assetdescription2: "Local",
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableButton(
                    text: "Save",
                    color: Colors.orange,
                    press: () {},
                    textcolor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





// class _Containerbody extends StatefulWidget {
//   const _Containerbody({Key? key}) : super(key: key);

//   @override
//   State<_Containerbody> createState() => __ContainerbodyState();
// }

// class __ContainerbodyState extends State<_Containerbody> {
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return SizedBox(
//       height: 0.5 * h,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: w * 0.4,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: const [
//                     Image(
//                       image: AssetImage("assets/images/Rectangle15.png"),
//                     ),
//                     Text(
//                       "Politics",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                     )
//                   ],
//                 ),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//               Container(
//                 width: w * 0.4,
//                 child: const Image(
//                   image: AssetImage("assets/images/Rectangle15.png"),
//                 ),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
