import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F8FD),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: TextField(
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Cari lowongan kerja',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/searchScreen');
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1.0, vertical: 1.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xff4E6CCE),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daftar BUMN",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/showAllScreen');
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Container(
                    height: 200,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: List.generate(8, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                            image: DecorationImage(
                              image:
                                  NetworkImage('https://robohash.org/$index'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terbaru",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                JobList(
                  gambar: 'assets/images/pertamina.png',
                  text1:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                ),
                JobList(
                  gambar: 'assets/images/telkom.png',
                  text1:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JobList extends StatelessWidget {
  final String gambar;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  JobList({
    this.gambar,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detailScreen');
        },
        child: Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage(gambar),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      "DIGITAL TALENT (Contract Based)",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff4E6CCE)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today,
                                        color: Colors.grey),
                                    SizedBox(width: 3.0),
                                    AutoSizeText(
                                      "27 August 2020 - 31 December 2020",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: Text(
                        text1,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
