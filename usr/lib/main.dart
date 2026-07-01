import 'package:flutter/material.dart';

void main() {
  runApp(const ProposalApp());
}

class ProposalApp extends StatelessWidget {
  const ProposalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proposal HUT RI 81',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD32F2F), // Merah kebangsaan
          primary: const Color(0xFFD32F2F),
          secondary: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProposalScreen(),
      },
    );
  }
}

class ProposalScreen extends StatelessWidget {
  const ProposalScreen({super.key});

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16, height: 1.6)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, height: 1.6),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 800;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text(
          'Proposal HUT RI ke-81',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(isDesktop ? 40.0 : 20.0),
            child: const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Icon(Icons.flag, size: 64, color: Color(0xFFD32F2F)),
                          SizedBox(height: 16),
                          Text(
                            'PROPOSAL KEGIATAN\nPERINGATAN HUT KEMERDEKAAN RI KE-81',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Dusun Maguan\nTahun 2026',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 24),
                          Divider(thickness: 2),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                    Text(
                      'I. LATAR BELAKANG',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Kemerdekaan Republik Indonesia merupakan tonggak sejarah yang sangat penting bagi seluruh rakyat Indonesia. Pada tanggal 17 Agustus 2026, bangsa kita akan merayakan Hari Ulang Tahun (HUT) Kemerdekaan Republik Indonesia yang ke-81. Momen ini bukan sekadar seremonial tahunan, melainkan pengingat akan perjuangan, pengorbanan, dan cita-cita para pahlawan yang telah mewariskan kemerdekaan kepada generasi penerus.',
                      style: TextStyle(fontSize: 16, height: 1.6),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Di tingkat masyarakat, peringatan kemerdekaan adalah wadah untuk mempererat tali persaudaraan, meningkatkan semangat gotong royong, dan menumbuhkan rasa cinta tanah air. Bagi warga Dusun Maguan, semangat kebersamaan ini menjadi fondasi utama dalam membangun lingkungan yang harmonis, rukun, dan berdaya saing.',
                      style: TextStyle(fontSize: 16, height: 1.6),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Menyadari pentingnya menjaga dan meneruskan semangat kemerdekaan tersebut, Paguyuban Angkatan Muda Maguan merasa terpanggil untuk turut andil dalam mengisi kemerdekaan dengan kegiatan-kegiatan yang positif dan bermanfaat. Sebagai agen perubahan di lingkungan masyarakat, pemuda memiliki peran strategis dalam menjaga nilai-nilai luhur bangsa serta menggerakkan partisipasi aktif warga.',
                      style: TextStyle(fontSize: 16, height: 1.6),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Oleh karena itu, dalam rangka memperingati HUT RI ke-81 tahun 2026, Paguyuban Angkatan Muda Maguan berinisiatif menyelenggarakan serangkaian kegiatan perayaan di Dusun Maguan. Kegiatan ini dirancang tidak hanya untuk memeriahkan hari bersejarah, tetapi juga sebagai sarana edukasi, silaturahmi, dan pengembangan potensi warga, khususnya generasi muda di Dusun Maguan. Melalui proposal ini, kami memohon dukungan dan partisipasi dari seluruh pihak agar rangkaian acara Peringatan HUT RI ke-81 di Dusun Maguan dapat terlaksana dengan sukses dan membawa manfaat yang sebesar-besarnya bagi masyarakat.',
                      style: TextStyle(fontSize: 16, height: 1.6),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 32),
                    Text(
                      'II. TUJUAN KEGIATAN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Tujuan dari penyelenggaraan rangkaian kegiatan Peringatan HUT Kemerdekaan RI ke-81 di Dusun Maguan adalah sebagai berikut:',
                      style: TextStyle(fontSize: 16, height: 1.6),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 12),
                    _buildBulletPoint('Memperingati dan memeriahkan Hari Ulang Tahun Kemerdekaan Republik Indonesia yang ke-81.'),
                    _buildBulletPoint('Mengenang jasa dan pengorbanan para pahlawan bangsa yang telah berjuang merebut kemerdekaan.'),
                    _buildBulletPoint('Mempererat tali silaturahmi, persaudaraan, dan kekompakan antarwarga Dusun Maguan.'),
                    _buildBulletPoint('Menumbuhkan dan meningkatkan semangat nasionalisme, patriotisme, serta cinta tanah air di kalangan masyarakat, khususnya generasi muda.'),
                    _buildBulletPoint('Menjadi wadah untuk menyalurkan minat, bakat, dan kreativitas warga melalui berbagai perlombaan dan kegiatan positif.'),
                    _buildBulletPoint('Mendorong semangat gotong royong dan kepedulian sosial di lingkungan masyarakat Dusun Maguan.'),
                    SizedBox(height: 48),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Maguan, 30 Juni 2026',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Panitia Pelaksana\nPaguyuban Angkatan Muda Maguan',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 80),
                          Text(
                            '( ________________________ )',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Ketua Panitia',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
