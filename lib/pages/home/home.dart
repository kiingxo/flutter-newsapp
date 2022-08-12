import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';
import 'package:newsappdebugged/components/widgets/news_icons.dart';

import '../../components/widgets/tab_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  //creating the controllers for the two tabviews.
  late TabController? controller = TabController(length: 5, vsync: this);
  late TabController? controller2 = TabController(length: 5, vsync: this);
  int index = 0;

  // this is the listener to the fist controller.
  litenToController() {
    controller!.addListener(
      () {
        setState(() {
          index = controller!.index;
        });
      },
    );
  }

//this is the listener to the fist controller.
  litenToController2() {
    controller2!.addListener(
      () {
        setState(() {
          index = controller2!.index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //mediaquery to make my code responsive.
    double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;

    return SafeArea(
      top: true,
      left: true,
      right: true,
      //padding to create the space at the top of the home page.
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          //crossaxis.start to make the layouts start after thee given padding.
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //Row is replacing an appbar to put the logo and notification button.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Row to create the logo wth two different containers.
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: primaryorange,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                      ),
                      width: 70,
                      height: 33,
                      child: const Center(
                        child: Text(
                          "LATEST",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                      width: 55,
                      height: 33,
                      child: const Center(
                        child: Text(
                          "NEWS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const IconButton(
                  onPressed: null,
                  icon: Image(
                    width: 21,
                    height: 21,
                    image: AssetImage("assets/icons/bell.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTabbar(
              controller: controller,
              tabviewlabel1: "All News",
              tabviewlabel2: "Business",
              tabviewlabel3: "Politics",
              tabviewlabel4: "Tech",
              tabviewlabel5: "Health",
              whathappensontap: (int tabindex) {
                setState(() {
                  HapticFeedback.lightImpact();
                  index = tabindex;
                });
              },
            ),
            //calling the tabbarview
            SizedBox(
              height: h * 0.32,
              child: TabBarView(
                //calling the first controller listener
                controller: controller,
                children: const [
                  Placeholder(), //tabbarview1
                  Placeholder(), //tabbarview2
                  Placeholder(), //tabbarview3
                  Placeholder(), //tabbarview4
                  Placeholder(), //tabbarview15
                ],
              ),
            ),
            const Text(
              "Popular Redactions",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
              child: NewsIcon(),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Browse by",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTabbar(
              //calling the second controller listener
              controller: controller2,
              tabviewlabel1: 'Trending',
              tabviewlabel2: "Reccommendation",
              tabviewlabel3: 'Newest',
              tabviewlabel4: "Noteworth",
              tabviewlabel5: "this isnt suppopsed to be here",
              whathappensontap: (int tabbedinedex) {
                index = tabbedinedex;
              },
            ),
            SizedBox(
              height: h * 0.15,
              child: TabBarView(
                controller: controller2,
                children: const [
                  Placeholder(), //tabbarview1
                  Placeholder(), //tab barview2
                  Placeholder(), //tabbarview3
                  Placeholder(), //tabbarview4
                  Placeholder(), //tabbarview5
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
