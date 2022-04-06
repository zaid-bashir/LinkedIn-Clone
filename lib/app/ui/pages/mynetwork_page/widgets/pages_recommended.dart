import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/pagesmodel.dart';
import 'package:linkedin_clone/app/ui/pages/seemorepages_page/seemorepages_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget recommededPages() {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Container(
          color: Colors.white,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 13.0, right: 13.0, top: 10.0, bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pages you may like",
                  style: GoogleFonts.lato(
                      fontSize: 17.0, color: Color(0xff434343)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 10.0),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 240.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    border: Border.all(color: dividerColor, width: 1.5)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Container(
                          // decoration: BoxDecoration(color: Colors.yellow),
                          height: 120.0,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              pageslist[index].coverPhoto,
                                            ),
                                            fit: BoxFit.fill)),
                                    height: 60.0,
                                    width: Get.width,
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                  top: 30,
                                  bottom: 7.0,
                                  left: 45,
                                  right: 45,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              pageslist[index].image,
                                            ),
                                            fit: BoxFit.fill)),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: Column(
                          children: [
                            Text(
                              pageslist[index].name,
                              style: lato17,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "${pageslist[index].followers.toString()} followers",
                              style: lato13,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 7.0, left: 13.0, right: 13.0),
                        child: Container(
                          height: 34.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: blue, width: 1.5),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Center(
                            child: Text(
                              "Connect",
                              style: bluetext.copyWith(fontSize: 16.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(SeeMorePages());
          },
          child: Text(
            "See all",
            style: show_more,
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    ),
  );
}
