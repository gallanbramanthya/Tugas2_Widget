import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Daftar Menu Toko Pedia',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Menu> menuList = [
    Menu(
      namaMenu: 'Kue Putu',
      hargaMenu: 'Rp 15.000',
      deskripsiMenu: 'Kudapan tradisional Indonesia yang terbuat dari tepung beras dan diisi dengan gula merah. Kue ini dibungkus dengan parutan kelapa dan dikukus dalam tabung bambu.',
      ratingMenu: 5,
      fotoMenu: 'https://th.bing.com/th/id/OIP.5gCQS1vITS97SC06qf12WwHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
    ),
    Menu(
      namaMenu: 'Kue Lapis',
      hargaMenu: 'Rp 6.000',
      deskripsiMenu: 'Kue tradisional Indonesia yang terbuat dari tepung beras, tepung kanji, santan, gula pasir, garam, dan pewarna. Kue ini dibuat dengan cara mengukus adonan secara berlapis-lapis dengan warna yang berbeda-beda.',
      ratingMenu: 5,
      fotoMenu: 'https://th.bing.com/th/id/OIP.g7bwIh6Zqzz_UJE5au88ZgHaHC?w=205&h=195&c=7&r=0&o=5&dpr=1.4&pid=1.7',
    ),

    Menu(
      namaMenu: 'Kue Sus',
      hargaMenu: 'Rp 8.000',
      deskripsiMenu: 'Kue kering yang terbuat dari pâte à choux, yaitu adonan tepung terigu, air, garam, dan mentega yang dimasak hingga matang dan berongga. Kue sus biasanya diisi dengan vla, custard, atau krim.',
      ratingMenu: 3,
      fotoMenu: 'https://th.bing.com/th?id=OIP.ydxzyQYnyCAoh5F8L6_m4QAAAA&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.4&pid=3.1&rm=2'
    ),

    Menu(
      namaMenu: 'Kue Klepon',
      hargaMenu: 'Rp 5.000',
      deskripsiMenu: 'Kue tradisional Indonesia yang terbuat dari tepung ketan yang dibentuk seperti bola-bola kecil dengan isi gula merah dan ditaburi parutan kelapa.',
      ratingMenu: 4,
      fotoMenu: 'https://i1.wp.com/www.adakuliner.com/wp-content/uploads/2017/11/resep-cara-membuat-kue-klepon-ubi-jalar.jpg?fit=1557%2C964&ssl=1',
    ),

    Menu(
      namaMenu: 'Kue Rainbow',
      hargaMenu: 'Rp 10.000',
      deskripsiMenu: 'kue yang terbuat dari adonan bolu yang diwarnai dengan berbagai warna. Adonan ini kemudian dipanggang atau dikukus secara berlapis-lapis sehingga menghasilkan kue dengan warna yang indah dan menarik.',
      ratingMenu: 4,
      fotoMenu: 'https://th.bing.com/th/id/OIP.uVUEa1RpqQhMaVveF309mAHaE8?w=242&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Menu Toko Pedia', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 33, 13, 185)
        ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(menuList[index]);
        },
      ),
      ),
    );
  }

  Widget _buildMenuItem(Menu menu) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.all(16.0),
      color: const Color.fromARGB(255, 162, 197, 244),
      child: Container(
        decoration: BoxDecoration(
        border: Border.all(
        color: const Color.fromARGB(255, 33, 13, 185),
        width: 3.0,
          ),
        borderRadius: BorderRadius.circular(10.0),
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
              menu.fotoMenu,
              fit: BoxFit.cover
            )
            ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu.namaMenu,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    menu.hargaMenu,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    menu.deskripsiMenu,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      for (int i = 0; i < menu.ratingMenu; i++)
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 168, 139, 14),
                          size: 30.0,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}

class Menu {
  String namaMenu;
  String hargaMenu;
  String deskripsiMenu;
  int ratingMenu;
  String fotoMenu;

  Menu({
    required this.namaMenu,
    required this.hargaMenu,
    required this.deskripsiMenu,
    required this.ratingMenu,
    required this.fotoMenu,
  });
}