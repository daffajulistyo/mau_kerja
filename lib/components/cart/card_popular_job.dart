// ignore_for_file: use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:mau_kerja/models/mock/popularJob.dart';
import 'package:mau_kerja/shared/theme.dart';

class CardPopularJob extends StatefulWidget {
  final PopularJob? popularJob;

  const CardPopularJob(this.popularJob);

  @override
  State<CardPopularJob> createState() => _CardPopularJobState();
}

class _CardPopularJobState extends State<CardPopularJob> {
  // List<dynamic> jobList = [];

  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/jobs.json');
  //   final data = await json.decode(response);

  //   setState(() {
  //     jobList = data['jobs'].map((data) => Jobs.fromJson(data)).toList();
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();

  //   readJson();
  // }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
    //     child: ListView.builder(
    //       padding: const EdgeInsets.all(10),
    //       itemCount: jobList.length,
    //       itemBuilder: (context, index) {
    //         return jobsComponent(jobs: jobList[index]);
    //       },
    //     ),
      
    // );
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
                    image: NetworkImage(widget.popularJob!.picture!),
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
                    widget.popularJob!.title!,
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.popularJob!.subTitle!,
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
            widget.popularJob!.job!,
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
                widget.popularJob!.location!,
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

  // jobsComponent({required Jobs jobs}) {
  //   return Container(
  //       height: 50,
  //       width: 156,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         color: primaryColor,
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(10),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Container(
  //                   width: 32,
  //                   height: 32,
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(6),
  //                     image: DecorationImage(
  //                       image: AssetImage(jobs.picture!),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   width: 8,
  //                 ),
  //                 Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       jobs.title!,
  //                       style: whiteTextStyle.copyWith(
  //                         fontWeight: medium,
  //                         fontSize: 16,
  //                       ),
  //                     ),
  //                     Text(
  //                       jobs.subTitle!,
  //                       style: greyTextStyle.copyWith(
  //                           fontWeight: regular, fontSize: 11),
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //             const SizedBox(
  //               height: 19,
  //             ),
  //             Text(
  //               jobs.job!,
  //               style:
  //                   whiteTextStyle.copyWith(fontWeight: medium, fontSize: 12),
  //             ),
  //             const SizedBox(
  //               height: 4,
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Icon(
  //                   Icons.pin_drop_rounded,
  //                   color: thirdColor,
  //                   size: 16,
  //                 ),
  //                 const SizedBox(
  //                   width: 4,
  //                 ),
  //                 Text(
  //                   jobs.location!,
  //                   style: whiteTextStyle.copyWith(
  //                     fontWeight: regular,
  //                     fontSize: 12,
  //                   ),
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ));
  // }
}
