import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postest4_1915016110_maulana_yusuf/constant.dart';
import 'package:postest4_1915016110_maulana_yusuf/screens/product/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture app',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _formKey = GlobalKey<FormState>();
  final namaLengkap = TextEditingController();
  String nama = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    "Welcome To \nFurniture App",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33, bottom: 30, right: 33),
                  child: Text(
                    "Aplikasi Furnitur adalah aplikasi yang dapat digunakan untuk membeli barang-barang furnitur secara online seperti: Meja, Kursi, Lemari dll.",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.webp"))),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80, top: 40, right: 80),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: namaLengkap,
                    maxLines: 1,
                    maxLength: 20,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(
                          fontFamily: "Lobster",
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nama Tidak Boleh Kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 30),
                  child: SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF0c3c78),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProductsScreen();
                              },
                            ),
                          );
                        }
                      },
                      child: Text("S U B M I T",
                          style: TextStyle(
                            fontFamily: 'Bangers',
                            fontSize: 20,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
