import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isibi/app/modules/news/controllers/news_controller.dart';
import 'package:isibi/app/shared/page_index_controller.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/card.dart';
import 'package:isibi/app/routes/app_pages.dart';
import 'package:isibi/app/widgets/card_news.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // int _current = 0;
  // final CarouselController _controller = CarouselController();

  final pageC = Get.find<PageIndexController>();
  final homeC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Halo, Teman SIBI',
                    style: bold.copyWith(
                      fontSize: 25,
                    )),
                Text('Yuk Bersama Ciptakan #AksesTanpaBatas',
                    style: regular.copyWith(color: blueisibi, fontSize: 15)),
                SizedBox(height: 10),
                Container(
                  width: 330,
                  height: 150,
                  child: Image.asset(
                    "assets/images/bannerisibi.jpg",
                    fit: BoxFit.cover,
                  ),
                  // child: card(),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pembelajaran", style: bold.copyWith(fontSize: 22)),
                    GestureDetector(
                      onTap: () {
                        // Routing to List of category Pembelajaran
                      },
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LEARN);
                        },
                        child: Text("Lihat Semua",
                            style:
                                bold.copyWith(fontSize: 13, color: blueisibi)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.LIST_VIDEO,
                                  arguments: "salam");
                            },
                            child: Image.asset("assets/icons/salam.png"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(1)),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Salam", style: regular.copyWith(fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.LIST_VIDEO, arguments: "kata");
                            },
                            child: Image.asset("assets/icons/sapaan.png"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(1)),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Kata Sapaan",
                            style: regular.copyWith(fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.LIST_VIDEO,
                                  arguments: "angka");
                            },
                            child: Image.asset("assets/icons/angka.png"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(1)),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Angka", style: regular.copyWith(fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.LIST_VIDEO,
                                  arguments: "perkenalan");
                            },
                            child: Image.asset("assets/icons/salam.png"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(1)),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Perkenalan",
                            style: regular.copyWith(fontSize: 15))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Informasi Terkini",
                        style: bold.copyWith(fontSize: 22)),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.NEWS);
                      },
                      child: Text("Lihat Semua",
                          style: bold.copyWith(fontSize: 13, color: blueisibi)),
                    )
                  ],
                ),
                SizedBox(height: 7),
                Text("Jangan lewatkan informasi terkini dari I-SIBI",
                    style: regular.copyWith(fontSize: 13)),
                SizedBox(height: 10),
                Obx(() => Container(
                      height: Get.height * 0.23,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(right: 10),
                        children: [
                          CardNews(
                              image: homeC.image[0],
                              title: homeC.title[0],
                              content: homeC.content[0]),
                          CardNews(
                              image: homeC.image[1],
                              title: homeC.title[1],
                              content: homeC.content[1]),
                          CardNews(
                              image: homeC.image[2],
                              title: homeC.title[2],
                              content: homeC.content[2])
                        ],
                      ),
                    )),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       CardNews(
                //           image: homeC.image[0],
                //           title: homeC.title[0],
                //           content: homeC.content[0]),
                //       CardNews(
                //           image: homeC.image[1],
                //           title: homeC.title[1],
                //           content: homeC.content[1]),
                //       CardNews(
                //           image: homeC.image[2],
                //           title: homeC.title[2],
                //           content: homeC.content[2]),
                //       cardNews(),
                //       cardNews()
                //     ],
                //   ),
                // )
                // Container(
                //   height: Get.height * 0.2,
                //   child: ListView.separated(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: homeC.title.length,
                //       separatorBuilder: (context, index) => SizedBox(width: 10),
                //       itemBuilder: (context, index) {
                //         return CardNews(
                //             image: homeC.image[index],
                //             title: homeC.title[index],
                //             content: homeC.content[index]);
                //       }),
                // ),
                // Container(
                //   height: 150,
                //   child: ListView.separated(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: homeC.dataNews.length,
                //       separatorBuilder: (context, index) => SizedBox(width: 10),
                //       itemBuilder: (context, index) {
                //         final newsItem = homeC.dataNews[index];
                //         return CardNews(
                //             image: newsItem['post_thumbnail'],
                //             title: newsItem['post_title'],
                //             content: newsItem['post_content']);
                //       }),
                // ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   padding: EdgeInsets.all(10),
                //   child: Row(
                //     children: [
                //       CardNews(
                //           image: "assets/images/berita1.webp",
                //           title: "Etika Saat Berinteraksi Dengan Kaum Tuli",
                //           content:
                //               "Ketika kita berinteraksi dengan teman-teman yang memiliki berbagai kebutuhan khusus, penting untuk memahami dan menghormati perbedaan-perbedaan ini. Salah satu kelompok yang seringkali kurang mendapatkan perhatian adalah teman-teman yang tuli atau memiliki gangguan pendengaran. Berikut ini adalah beberapa prinsip etika yang penting untuk diikuti ketika berinteraksi dengan teman tuli. \n1.Gunakan Bahasa Isyarat\nSalah satu cara terbaik untuk berkomunikasi dengan teman tuli adalah dengan menggunakan bahasa isyarat. Bahasa isyarat adalah bahasa komunikasi visual yang sangat penting bagi komunitas tuli. Anda tidak perlu menjadi ahli dalam bahasa isyarat, tetapi belajar beberapa kata dan ungkapan dasar seperti salam, terima kasih, dan maaf akan sangat membantu dalam berkomunikasi dengan teman tuli. \n2. Jangan Berteriak\nBerbicara dengan suara keras atau berteriak tidak akan membantu teman tuli mendengar lebih baik. Sebaliknya, bicaralah dengan jelas dan lambat, tanpa perlu mengucapkan kata-kata berlebihan. Hal ini akan membantu teman tuli dalam membaca gerakan bibir dan ekspresi wajah Anda."),
                //       SizedBox(width: 10),
                //       CardNews(
                //           image: "assets/images/berita2.webp",
                //           title: "Tips Komunikasi Lancar dengan Teman Tuli",
                //           content:
                //               "Berinteraksi dengan teman tuli dapat menjadi pengalaman yang berharga dan berempati. Penting untuk menggunakan komunikasi visual, seperti isyarat tangan, mimik wajah yang jelas, dan ekspresi tubuh yang ramah. Pastikan berbicara dengan pelan dan jelas, memberikan mereka waktu untuk membaca bibir Anda. Perhatikan juga lingkungan sekitar yang memungkinkan komunikasi yang lebih efektif, seperti pencahayaan yang baik dan minimisasi kebisingan. Ingatlah bahwa kesabaran dan pengertian adalah kunci dalam membangun hubungan yang kuat dan saling menghormati.")
                //     ],
                //   ),
                // child: ListView.separated(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: homeC.dataNews.length,
                //   separatorBuilder: (context, index) => SizedBox(width: 10),
                //   itemBuilder: (context, index) {
                //     final newsItem = homeC.dataNews[index];
                //     CardNews(
                //         image: newsItem['image'],
                //         title: newsItem['title'],
                //         content: newsItem['content']);
                //   },
                // ),
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: 0,
          color: Color(0xff034A9E),
          animationCurve: Curves.bounceInOut,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.white,
          // style: TabStyle.fixedCircle,
          items: [
            Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
            Icon(
              Icons.camera_alt_outlined,
              size: 40,
              color: Colors.white,
            ),
            Icon(
              Icons.newspaper,
              size: 40,
              color: Colors.white,
            )
          ],
          onTap: (index) {
            pageC.changePage(index);
          },
        ));
  }
}
