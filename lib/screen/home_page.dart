import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mau_kerja/components/cart/card_job.dart';
import 'package:mau_kerja/components/cart/card_popular_job.dart';
import 'package:mau_kerja/components/cart/card_recommended_job.dart';
import 'package:mau_kerja/models/mock/popularJob.dart';
import 'package:mau_kerja/models/mock/recommendedJob.dart';
import 'package:mau_kerja/screen/job_detail_page.dart';
import 'package:mau_kerja/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference jobs = firestore.collection("jobs");
    return Scaffold(
      backgroundColor: backgroudColor,
      // appBar: AppBar(
      //   toolbarHeight: 0,
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.green,
      //   ),
      //   // ignore: deprecated_member_use
      //   backwardsCompatibility: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: primaryColor,
                        ),
                        Icon(
                          Icons.notifications_active,
                          color: primaryColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hello Daffa',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Find Your Dream Job',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width:
                              MediaQuery.of(context).size.width - 48 - 43 - 14,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: ),
                            color: lastColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: secondaryColor,
                                ),
                                contentPadding: const EdgeInsets.all(0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none),
                                hintStyle: greyTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: medium,
                                ),
                                hintText: "Search users",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const JobDetailPage()));
                          },
                          child: Container(
                            width: 43,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: lastColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Recommended for you',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: mockRecommendedJob
                        .map((e) => CardRecommendedJob(e))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Job',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    StreamBuilder<QuerySnapshot>(
                      stream: jobs.orderBy('title').snapshots(),
                      builder: (_, snapshot) {
                        if (snapshot.hasData) {
                          return GridView.count(
                            physics: const ScrollPhysics(),
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            childAspectRatio: (3 / 2.41),
                            shrinkWrap: true,
                            children: snapshot.data!.docs
                                .map(
                                  (e) => CardJob(
                                    (e.data() as dynamic)['title'],
                                    (e.data() as dynamic)['type'],
                                    (e.data() as dynamic)['job'],
                                    (e.data() as dynamic)['location'],
                                    (e.data() as dynamic)['picture'],
                                    onDelete: () {
                                      jobs.doc(e.id).delete();
                                    },
                                  ),
                                )
                                .toList(),
                          );
                        } else {
                          return const Text('Loading');
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // const CardPopularJob()
                    // GridView.count(
                    //   physics: const ScrollPhysics(),
                    //   mainAxisSpacing: 10,
                    //   crossAxisCount: 2,
                    //   crossAxisSpacing: 10,
                    //   childAspectRatio: (3 / 2.41),
                    //   shrinkWrap: true,
                    //   children:
                    //       mockPopularJob.map((e) => CardPopularJob(e)).toList(),
                    // ),
                    // ListView(
                    //   children: [
                    //     StreamBuilder<QuerySnapshot>(
                    //         stream: jobs.snapshots(),
                    //         builder: (_, snapshot) {
                    //           if (snapshot.hasData) {
                    //             return Column(
                    //                 children: snapshot.data!.docs
                    //                     .map(
                    //                       (e) => CardPopularJob(
                    //                         (e.data() as dynamic)["title"],
                    //                         (e.data() as dynamic)["subTitle"],
                    //                         (e.data() as dynamic)["job"],
                    //                         (e.data() as dynamic)["location"],
                    //                       ),
                    //                     )
                    //                     .toList());
                    //           } else {
                    //             return const Text('Loading Data');
                    //           }
                    //         },
                    //       )
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},

      //   label: Text(
      //     'Add Job ',
      //     style: primaryTextColor,
      //   ),
      //   icon: const Icon(
      //     Icons.subdirectory_arrow_right_sharp,
      //     size: 20,
      //   ),
      // ),
    );
  }
}
