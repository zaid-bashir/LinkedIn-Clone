import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/global_widgets/reactionbox.dart';
import 'package:linkedin_clone/app/ui/global_widgets/widget.dart';
import 'package:linkedin_clone/app/ui/pages/detailpost_page/detailpost_page.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import 'package:readmore/readmore.dart';

import '../../../theme/color_constant.dart';

Widget timelinePostBox({
  required String name,
  required String imagepath,
  required String description,
}) {
  return Container(
    width: Get.width * 0.8,
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13.0, right: 13.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => DetailPostPage());
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Souvik Banerjee",
                            style: GoogleFonts.roboto(
                                color: black1,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("celebrates this",
                              style: GoogleFonts.montserrat(
                                color: grey2,
                                fontSize: 15.0,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.8,
                height: 1.8,
                color: divider,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: grey2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        size: 40.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: person_name,
                        ),
                        Text(
                          "Founder & CEO at Generic Aadhaar | Managing Director at Swastya Lifestyle",
                          style: person_desc,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              '1w',
                              style: person_desc,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Icon(
                              Icons.public,
                              color: grey2,
                              size: 19.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              ReadMoreText(
                description,
                trimLines: 2,
                style: person_desc,
                colorClickableText: blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Image(image: AssetImage(imagepath))
        // Container(
        //     // height: Get.height * 0.4,
        //     width: Get.width,
        //     decoration: BoxDecoration(
        //       color: Colors.red,
        //       image: DecorationImage(
        //           image: AssetImage(imagepath), fit: BoxFit.cover),
        //     )),
        ,
        Container(
          height: 50.0,
          width: Get.width,
          color: Colors.white,
        ),

        SizedBox(
          height: 14.0,
        ),
        reactionBox(),
        SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: divider),
                  top: BorderSide(width: 1, color: divider))),
          child: Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up_alt,
                      color: grey2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Like",
                        style: GoogleFonts.actor(
                            color: grey2, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.comment,
                      color: grey2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Comment",
                        style: GoogleFonts.actor(
                            color: grey2, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: grey2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Share",
                        style: GoogleFonts.actor(
                            color: grey2, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      color: grey2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Send",
                        style: GoogleFonts.actor(
                            color: grey2, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 15.0,
        // ),
        dividerwidget(height: 4.0, thickness: 4.0),
      ],
    ),
  );
}
