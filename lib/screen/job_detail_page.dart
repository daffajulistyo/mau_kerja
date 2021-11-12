// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:mau_kerja/shared/theme.dart';
import 'package:readmore/readmore.dart';

class JobDetailPage extends StatefulWidget {
  const JobDetailPage({Key? key}) : super(key: key);

  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    Widget mock({
      int? index,
      String? title,
    }) {
      return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index!;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 2 - 25,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: (selectedIndex == index) ? secondaryColor : whiteColor,
            ),
            child: Text(
              title!,
              style: (selectedIndex == index)
                  ? whiteTextStyle.copyWith(fontWeight: regular, fontSize: 14)
                  : blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            ),
          ));
    }

    return Scaffold(
        extendBody: true,
        backgroundColor: backgroudColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: GestureDetector(
                          onTap: (){
                          Navigator.pop(context);
                          },
                          child: Image.asset('assets/icons_back.png')),
                        ),
                        Text(
                          'Job Detail',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/icons_save.png'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    Center(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://www.freepnglogos.com/uploads/logo-ig-png/logo-ig-instagram-social-media-icon-social-media-icon-set-logo-2.png'))),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Senior UI Designer',
                            style: blackTextStyle.copyWith(
                                fontWeight: medium, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 34),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: whiteColor,
                                  ),
                                  child: Text(
                                    'Full Time',
                                    style: blackTextStyle.copyWith(
                                        fontWeight: regular, fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: whiteColor,
                                  ),
                                  child: Text(
                                    'Onsite',
                                    style: blackTextStyle.copyWith(
                                        fontWeight: regular, fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: whiteColor,
                                  ),
                                  child: Text(
                                    'Senior',
                                    style: blackTextStyle.copyWith(
                                        fontWeight: regular, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 56,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 409,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  color: whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32, horizontal: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            mock(index: 1, title: 'Description'),
                            mock(index: 2, title: 'Company')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      (selectedIndex == 1)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About this Job',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: medium, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                ReadMoreText(
                                  'Add Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for... Read More we hope that with this we can improve the quality of our user interface to customers, because it is very important for... Read More',
                                  trimLines: 4,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: greyColor),
                                  colorClickableText: secondaryColor,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: secondaryColor),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Job Responsibilities',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: medium, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const bullet(),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      'At least have 3 years of experience as a UI Designer',
                                      style: greyTextStyle.copyWith(
                                          fontWeight: regular, fontSize: 12),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const bullet(),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      'Able to work in a team or individually',
                                      style: greyTextStyle.copyWith(
                                          fontWeight: regular, fontSize: 12),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const bullet(),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      'Have a good passion in UI Design',
                                      style: greyTextStyle.copyWith(
                                          fontWeight: regular, fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            )
                          : Text(
                              "Delta's page is well-organized by topic, and showcases the company's values, including efforts to engage with the community and promote sustainability. They've included brief meta-descriptions below each category. The design allows for users to click-through if they want to learn more. Overall, Delta's company profile is simple and uncluttered, but includes all the necessary information to demonstrate why Delta is unique",
                              style: secondTextColor,
                              textAlign: TextAlign.center,
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'Apply ',
            style: primaryTextColor,
          ),
          icon: const Icon(Icons.subdirectory_arrow_right_sharp,size: 20,),
        ));
  }
}

class bullet extends StatelessWidget {
  const bullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: greyColor,
      ),
    );
  }
}
