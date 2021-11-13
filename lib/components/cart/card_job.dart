import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mau_kerja/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class CardJob extends StatelessWidget {
  final String title;
  final String type;
  final String job;
  final String location;
  final String picture;
  final Function? onDelete;

  const CardJob(this.title, this.type, this.job, this.location, this.picture,
      {this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 200,
        height: 50,
        width: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: NetworkImage(picture),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        type,
                        style: greyTextStyle.copyWith(
                            fontWeight: regular, fontSize: 11),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                job,
                style:
                    whiteTextStyle.copyWith(fontWeight: medium, fontSize: 12),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.pin_drop_rounded,
                    color: thirdColor,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    location,
                    style: whiteTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
