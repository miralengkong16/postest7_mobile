import 'package:flutter/material.dart';

class FormPengaduan extends StatefulWidget {
  const FormPengaduan({super.key});

  @override
  State<FormPengaduan> createState() => _FormPengaduanState();
}

enum Gender {
  none,
  Pria,
  Wanita,
}

enum Yeno {
  none,
  Yes,
  No,
}

class _FormPengaduanState extends State<FormPengaduan> {
  Gender? kelamin = Gender.none;
  Yeno? yeno = Yeno.none;
  String nama = '',
      namaorg = '',
      email = '',
      alamat = '',
      nohp = '',
      namaorg2 = '',
      tanggal = '';

  final ctrlNama = TextEditingController();
  final ctrltanggal = TextEditingController();
  final ctrlNamaorg = TextEditingController();
  final ctrlemail = TextEditingController();
  final ctrlnohp = TextEditingController();
  final ctrlnamaorg2 = TextEditingController();
  final ctrlalamat = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrltanggal.dispose();
    ctrlNama.dispose();
    ctrlNamaorg.dispose();
    ctrlemail.dispose();
    ctrlnohp.dispose();
    ctrlnamaorg2.dispose();
    ctrlalamat.dispose();
    super.dispose();
  }

  String getKelamin(Gender? value) {
    if (value == Gender.Pria) {
      return "Pria";
    } else if (value == Gender.Wanita) {
      return "Wanita";
    }
    return "";
  }

  String getyeno(Yeno? value) {
    if (value == Yeno.Yes) {
      return "memiliki  keresahan lain";
    } else if (value == Yeno.No) {
      return "tidak memiliki keresahan lain";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();

    SnackBar mySnackBar(String text) {
      return SnackBar(
        content: Text(
          "Data sudah di sesuaikan !!!",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        duration: Duration(seconds: 7),
        backgroundColor: Color(0xff9839f0),
        padding: EdgeInsets.all(15),
      );
    }

    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                    width: lebar,
                    height: tinggi / 6,
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Column(
                        children: [
                          Text(
                            "FORMULIR PENGADUAN",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff9839f0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlNama,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama Pengadu",
                      hintText: "Nama Lengkap",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrltanggal,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9839f0)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tanggal Pengaduan",
                      hintText: "12 Februari 2023",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlNamaorg,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Hal Yang Mau Diadukan",
                      hintText: "Banyak Preman",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlemail,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9839f0)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      hintText: "Masukkan Email",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlnohp,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nomor Telepon",
                      hintText: "+62 8123456789",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: ctrlalamat,
                  maxLines: 5,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Alamat",
                      hintText: "Jl. Menuju Surga",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    left: 8,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text("Jenis Kelamin",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9839f0),
                      ))),
              ListTile(
                title: Text("Pria",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: kelamin,
                  value: Gender.Pria,
                  onChanged: (Gender? value) {
                    setState(() {
                      kelamin = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Wanita",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: kelamin,
                  value: Gender.Wanita,
                  onChanged: (Gender? value) {
                    setState(() {
                      kelamin = value;
                    });
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    left: 8,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text("Apakah Anda Punya Keresahan Lain?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9839f0),
                      ))),
              ListTile(
                title: Text("Punya",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: yeno,
                  value: Yeno.Yes,
                  onChanged: (Yeno? value) {
                    setState(() {
                      yeno = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Tidak Punya",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: yeno,
                  value: Yeno.No,
                  onChanged: (Yeno? value) {
                    setState(() {
                      yeno = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlnamaorg2,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Masukkan Keresahan Lain",
                      hintText: "Sertakan Bukti ? ...",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),

              //alert
              ElevatedButton(
                onPressed: () {
                  SnackBar snackBar = mySnackBar(_myController.text);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    nama = ctrlNama.text;
                    nohp = ctrlnohp.text;
                    namaorg = ctrlNamaorg.text;
                    namaorg2 = ctrlnamaorg2.text;
                    email = ctrlemail.text;
                    alamat = ctrlalamat.text;
                    tanggal = ctrltanggal.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff9839f0),
                ),
                child: Text("NEXT"),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 40, left: 8, right: 8, bottom: 8),
                  width: lebar,
                  height: tinggi / 2,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          color: Color.fromARGB(255, 116, 112, 112))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "SURAT PERNYATAAN",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color(0xfff03e56)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text("Yang bertanda tangan di bawah ini :",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text("Nama Lengkap  : $nama",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email                   : $email",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nomor Telepon : $nohp",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text("Alamat                : $alamat",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              width: lebar,
                              margin: EdgeInsets.only(left: 16, right: 16),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Pada tanggal $tanggal,$nama ingin melakukan pengaduan, dengan jenis kelamin ${getKelamin(kelamin)}, yang mana ${getyeno(yeno)} $namaorg2.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
