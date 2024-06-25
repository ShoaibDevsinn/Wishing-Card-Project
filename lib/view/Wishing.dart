import 'package:flutter/material.dart';
import 'package:wishing_cards/components/card.dart';
import 'package:wishing_cards/components/colors.dart';
import 'package:wishing_cards/components/custom_card_colors.dart';
import 'package:wishing_cards/components/custom_images.dart';
import 'package:wishing_cards/components/uttlils.dart';

class WIshingScreens extends StatefulWidget {
  const WIshingScreens({super.key});

  @override
  State<WIshingScreens> createState() => _WIshingScreensState();
}

class _WIshingScreensState extends State<WIshingScreens> {
  int selectedindex = -1;
  int selectedcolor = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.blue,
                        child: Center(
                            child: Text(
                          "Create List",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                      ) ,
        body: Column(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(primaryimage),fit: BoxFit.cover)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      cursorColor: pimarycolor,cursorWidth: 3,
                      style: TextStyle(
                        fontFamily: "dancebold",
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: pimarycolor),
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(17, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Background",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Decorate your list with matching emojis",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        TextField(
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),
                          cursorColor: Colors.cyan,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.cyan, width: 2)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.cyan, width: 2)),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          "Image",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Pick an accent image",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.grey),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 9,
                                mainAxisSpacing: 9),
                            itemCount: decore.length,
                            shrinkWrap: true,
                            itemBuilder: ((context, index) {
                              return CustomImage(
                                ontap: () {
                                  setState(() {
                                    selectedindex = index;
                                    // if (selectedindex.contains(index)) {
                                    //   selectedindex.remove(index);
                                    // }
                                    // else{
                                    //   selectedindex.add(index);
                                    // }
                                    primaryimage = decore[index]["image"];
                                  });
                                },
                                index: index,
                                selectedindex: selectedindex,
                                image: decore[index]["image"],
                              );
                            })),
                            SizedBox(
                          height: 9,
                        ),
                        Text(
                          "Text Colors",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Pick an accent color",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.grey),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 9,
                                mainAxisSpacing: 9),
                            itemCount: colorlist.length,
                            shrinkWrap: true,
                            itemBuilder: ((context, index) {
                              return CustomCardColors(
                                ontap: () {
                                  setState(() {
                                    selectedcolor = index;
                                    // if (selectedindex.contains(index)) {
                                    //   selectedindex.remove(index);
                                    // }
                                    // else{
                                    //   selectedindex.add(index);
                                    // }
                                    pimarycolor = colorlist[index]["color"];
                                  });
                                },
                                index: index,
                                selectedcolor: selectedcolor,
                                color: colorlist[index]["color"],
                              );
                            })),
                      ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
