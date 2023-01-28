import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodPrimeRibRoast extends StatelessWidget {
  const FoodPrimeRibRoast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                child: Image.asset(
                  'assets/img/primerib.png',
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///paragraf 1
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Prime Rib Roast',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(
                      'Prime Rib Roast adalah potongan daging sapi klasik dan empuk yang diambil dari potongan tulang rusuk primal. Pelajari cara membuat daging iga panggang yang sempurna untuk disajikan kepada keluarga dan teman Anda. Lihatlah resep dan tutorial foto Prime Rib Roast Klasik pemenang penghargaan dari What Cooking America untuk membantu Anda membuat Prime Rib Roast yang Sempurna.',
                      textAlign: TextAlign.center,
                    ),
                    Text('Waktu : 2 jam'),
                    Text('Untuk : 6 sampai 8 porsi'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                ///paragraf 2
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('BAHAN MAKANAN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue)),
                      ),
                    ),
                    Text('''1 Prime Rib Roast (iga sapi), kira-kira 8 pon
1/2 cangkir cuka balsamic berkualitas baik
1 cangkir (dikemas) daun peterseli Italia
8 siung bawang putih, cincang
1/4 sendok teh garam
Lada segar secukupnya
Garam secukupnya
1 gelas air
3 tetes saus Worcestershire'''),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                ///paragraf 3
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('assets/img/Group 12.png')),
                    Align(
                      child: Text('CARA MEMASAK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue)),
                      alignment: Alignment.center,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Text('1'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Flexible(
                            child: Text(
                          'Memanaskan lebih dulu oven ke 350 derajat F. Biarkan daging panggang pada suhu kamar selama 1 jam.',
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Text('2'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Flexible(
                            child: Text(
                          'Dalam panci kecil di atas api sedang-tinggi, rebus cuka balsamic hingga berkurang menjadi 1/4 cangkir, kira-kira 3 menit. Angkat dari api dan sisihkan.',
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Text('3'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Flexible(
                            child: Text(
                          'Cincang halus peterseli. Campur bersama bawang putih cincang, 1/4 sendok teh garam, dan lada dalam jumlah banyak. Dengan menggunakan ujung pisau yang tajam, buat 7 hingga 10 lubang sempit, masing-masing sedalam 1 1/2", di daging iga panggang. Isi lubang dengan campuran peterseli-bawang putih. Sebarkan campuran yang tersisa di atas permukaan daging ',
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Text('4'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Flexible(
                            child: Text(
                          'Tempatkan daging panggang, iga di dalam wajan pemanggang. Panggang selama 15 menit. Kurangi suhu oven hingga 325 derajat F. dan lanjutkan memanggang selama 2 hingga 2 1/2 jam lagi atau hingga suhu internal mencapai suhu yang diinginkan pada termometer daging (lihat di bawah). ',
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
