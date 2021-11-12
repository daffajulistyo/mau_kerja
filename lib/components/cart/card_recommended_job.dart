import 'package:flutter/material.dart';
import 'package:mau_kerja/models/mock/recommendedJob.dart';
import 'package:mau_kerja/shared/theme.dart';

class CardRecommendedJob extends StatelessWidget {
  final RecommendedJob? recommendedJob;
  
 // ignore: use_key_in_widget_constructors
 const CardRecommendedJob(this.recommendedJob);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 148,
      width: MediaQuery.of(context).size.width - 100,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      // color: thirdColor,
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                          image: NetworkImage(
                              recommendedJob!.picture!),
                          fit: BoxFit.contain)),
                ),
                Text(
                  recommendedJob!.salary!,
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              recommendedJob!.title!,
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 14),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              recommendedJob!.location!,
              style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 12),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: MediaQuery.of(context).size.width / 3 - 16 - 28 - 7,
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(recommendedJob!.schedule!,style: blackTextStyle.copyWith(fontWeight: regular,fontSize: 12),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: MediaQuery.of(context).size.width / 3 - 16 - 28 - 7,
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(recommendedJob!.type!,style: blackTextStyle.copyWith(fontWeight: regular,fontSize: 12),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: MediaQuery.of(context).size.width / 3 - 16 - 28 - 7,
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(recommendedJob!.place!,style: blackTextStyle.copyWith(fontWeight: regular,fontSize: 12),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
