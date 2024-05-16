import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxInt current = 0.obs;
  final getStorage = GetStorage();

  final title = [
    "Etika Saat Berinteraksi Dengan Kaum Tuli",
    "Tips Komunikasi Lancar dengan Teman Tuli",
    "Mengenal Sistem Isyarat Bahasa Indonesia (SIBI)"
  ].obs;

  final image = [
    "https://img-cdn.medkomtek.com/0wCYZ1rjZxVTDRyy_fN3Gne8XjU=/730x411/smart/filters:quality(100):strip_icc():format(webp)/article/9ukfD6W7n0JJVny9QGRrD/original/034665600_1638512412-Cara-Teman-Tuli-Berlatih-Kemampuan-Bicara.jpg",
    "https://images.genpi.co/resize/1200x675-100/uploads/data/images/komunikasi.webp",
    "https://s3-publishing-cmn-svc-prd.s3.ap-southeast-1.amazonaws.com/article/FpdGJvUMHq_9PrMYXv1p9/original/052480300_1614851312-Tidak-Bisa-Bahasa-Isyarat-Ini-Tips-Berkomunikasi-dengan-Orang-Tuli-by-yamasan-Canva.jpg"
  ].obs;

  final content = [
    "Ketika kita berinteraksi dengan teman-teman yang memiliki berbagai kebutuhan khusus, penting untuk memahami dan menghormati perbedaan-perbedaan ini. Salah satu kelompok yang seringkali kurang mendapatkan perhatian adalah teman-teman yang tuli atau memiliki gangguan pendengaran. Berikut ini adalah beberapa prinsip etika yang penting untuk diikuti ketika berinteraksi dengan teman tuli. \n1.Gunakan Bahasa Isyarat\nSalah satu cara terbaik untuk berkomunikasi dengan teman tuli adalah dengan menggunakan bahasa isyarat. Bahasa isyarat adalah bahasa komunikasi visual yang sangat penting bagi komunitas tuli. Anda tidak perlu menjadi ahli dalam bahasa isyarat, tetapi belajar beberapa kata dan ungkapan dasar seperti salam, terima kasih, dan maaf akan sangat membantu dalam berkomunikasi dengan teman tuli. \n2. Jangan Berteriak\nBerbicara dengan suara keras atau berteriak tidak akan membantu teman tuli mendengar lebih baik. Sebaliknya, bicaralah dengan jelas dan lambat, tanpa perlu mengucapkan kata-kata berlebihan. Hal ini akan membantu teman tuli dalam membaca gerakan bibir dan ekspresi wajah Anda.",
    "Berinteraksi dengan teman tuli dapat menjadi pengalaman yang berharga dan berempati. Penting untuk menggunakan komunikasi visual, seperti isyarat tangan, mimik wajah yang jelas, dan ekspresi tubuh yang ramah. Pastikan berbicara dengan pelan dan jelas, memberikan mereka waktu untuk membaca bibir Anda. Perhatikan juga lingkungan sekitar yang memungkinkan komunikasi yang lebih efektif, seperti pencahayaan yang baik dan minimisasi kebisingan. Ingatlah bahwa kesabaran dan pengertian adalah kunci dalam membangun hubungan yang kuat dan saling menghormati.",
    "Berinteraksi dengan teman tuli dapat menjadi pengalaman yang berharga dan berempati. Penting untuk menggunakan komunikasi visual, seperti isyarat tangan, mimik wajah yang jelas, dan ekspresi tubuh yang ramah. Pastikan berbicara dengan pelan dan jelas, memberikan mereka waktu untuk membaca bibir Anda. Perhatikan juga lingkungan sekitar yang memungkinkan komunikasi yang lebih efektif, seperti pencahayaan yang baik dan minimisasi kebisingan. Ingatlah bahwa kesabaran dan pengertian adalah kunci dalam membangun hubungan yang kuat dan saling menghormati.",
  ].obs;
  final List<Map<String, dynamic>> dataNews = [
    {
      "id": 1,
      "post_title": "Etika Saat Berinteraksi Dengan Kaum Tuli",
      "post_content":
          "Ketika kita berinteraksi dengan teman-teman yang memiliki berbagai kebutuhan khusus, penting untuk memahami dan menghormati perbedaan-perbedaan ini. Salah satu kelompok yang seringkali kurang mendapatkan perhatian adalah teman-teman yang tuli atau memiliki gangguan pendengaran. Berikut ini adalah beberapa prinsip etika yang penting untuk diikuti ketika berinteraksi dengan teman tuli. \n1.Gunakan Bahasa Isyarat\nSalah satu cara terbaik untuk berkomunikasi dengan teman tuli adalah dengan menggunakan bahasa isyarat. Bahasa isyarat adalah bahasa komunikasi visual yang sangat penting bagi komunitas tuli. Anda tidak perlu menjadi ahli dalam bahasa isyarat, tetapi belajar beberapa kata dan ungkapan dasar seperti salam, terima kasih, dan maaf akan sangat membantu dalam berkomunikasi dengan teman tuli. \n2. Jangan Berteriak\nBerbicara dengan suara keras atau berteriak tidak akan membantu teman tuli mendengar lebih baik. Sebaliknya, bicaralah dengan jelas dan lambat, tanpa perlu mengucapkan kata-kata berlebihan. Hal ini akan membantu teman tuli dalam membaca gerakan bibir dan ekspresi wajah Anda.",
      "post_thumbnail":
          "https://img-cdn.medkomtek.com/0wCYZ1rjZxVTDRyy_fN3Gne8XjU=/730x411/smart/filters:quality(100):strip_icc():format(webp)/article/9ukfD6W7n0JJVny9QGRrD/original/034665600_1638512412-Cara-Teman-Tuli-Berlatih-Kemampuan-Bicara.jpg",
    },
    {
      "id": 2,
      "post_title": "Tips Komunikasi Lancar dengan Teman Tuli",
      "post_content":
          "Berinteraksi dengan teman tuli dapat menjadi pengalaman yang berharga dan berempati. Penting untuk menggunakan komunikasi visual, seperti isyarat tangan, mimik wajah yang jelas, dan ekspresi tubuh yang ramah. Pastikan berbicara dengan pelan dan jelas, memberikan mereka waktu untuk membaca bibir Anda. Perhatikan juga lingkungan sekitar yang memungkinkan komunikasi yang lebih efektif, seperti pencahayaan yang baik dan minimisasi kebisingan. Ingatlah bahwa kesabaran dan pengertian adalah kunci dalam membangun hubungan yang kuat dan saling menghormati.",
      "post_thumbnail":
          "https://img-cdn.medkomtek.com/0wCYZ1rjZxVTDRyy_fN3Gne8XjU=/730x411/smart/filters:quality(100):strip_icc():format(webp)/article/9ukfD6W7n0JJVny9QGRrD/original/034665600_1638512412-Cara-Teman-Tuli-Berlatih-Kemampuan-Bicara.jpg",
    },
    {
      "id": 3,
      "post_title": "Mengenal Sistem Isyarat Bahasa Indonesia (SIBI)",
      "post_content":
          "Berinteraksi dengan teman tuli dapat menjadi pengalaman yang berharga dan berempati. Penting untuk menggunakan komunikasi visual, seperti isyarat tangan, mimik wajah yang jelas, dan ekspresi tubuh yang ramah. Pastikan berbicara dengan pelan dan jelas, memberikan mereka waktu untuk membaca bibir Anda. Perhatikan juga lingkungan sekitar yang memungkinkan komunikasi yang lebih efektif, seperti pencahayaan yang baik dan minimisasi kebisingan. Ingatlah bahwa kesabaran dan pengertian adalah kunci dalam membangun hubungan yang kuat dan saling menghormati.",
      "post_thumbnail":
          "https://img-cdn.medkomtek.com/0wCYZ1rjZxVTDRyy_fN3Gne8XjU=/730x411/smart/filters:quality(100):strip_icc():format(webp)/article/9ukfD6W7n0JJVny9QGRrD/original/034665600_1638512412-Cara-Teman-Tuli-Berlatih-Kemampuan-Bicara.jpg",
    },
  ].obs;

  void changeIndex(int index) async {
    current.value = index;
  }

  @override
  void onInit() {
    // getStorage.write("status", null);
    print(dataNews[0]['post_thumbnail']);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
