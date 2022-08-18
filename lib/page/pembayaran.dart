import 'package:flutter/material.dart';
import 'package:flutter_gethuk_apps/page/succes.dart';


import '../theme.dart';


class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('Pembayaran', style: textHeaderStyle),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Text('Alamat', style: textPrimaryStyle),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image(
                            image: AssetImage('assets/google-maps.png'),
                          ))),
                  Expanded(
                    child: Text(
                        'PERUM BERKOH BARU NO.8, Mersi, Berkoh, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53146',
                        style: textPrimaryStyle),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text('Metode Pembayaran', style: textPrimaryStyle),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 50,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3.0,
                                blurRadius: 5.0)
                          ],
                          color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset('assets/cod.png'),
                          const SizedBox(height: 10),
                          Text(
                            'Cash On Delivery',
                            textAlign: TextAlign.center,
                            style: textThirdStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 50,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3.0,
                                blurRadius: 5.0)
                          ],
                          color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset('assets/tf.png'),
                          const SizedBox(height: 10.0),
                          Text(
                            'Transfer',
                            textAlign: TextAlign.justify,
                            style: textThirdStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 50,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3.0,
                                blurRadius: 5.0)
                          ],
                          color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset('assets/scan.png'),
                          const SizedBox(height: 10.0),
                          Text(
                            'QRIS',
                            textAlign: TextAlign.justify,
                            style: textThirdStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 250,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Text(
                          'Masukan Kode Voucher',
                          style: textThirdStyle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text('Discount'),
                        ),
                        Container(
                          child: Text('Rp. 0'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text('Total'),
                        ),
                        Container(
                          child: Text('Rp. 0'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      child: const Text(
                        'Pesan Sekarang',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: textButtonStyle,
                        fixedSize: const Size(335.0, 52.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuccesScreen()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
