import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F8FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // centerTitle: true,
        title: Text(
          "SEARCH",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          new IconButton(
            color: Colors.black,
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                          size: 30.0,
                        ),
                        hintText: 'Cari pekerjaan',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 100,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: List.generate(4, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(4, 4),
                              ),
                            ],
                            image: DecorationImage(
                              image: NetworkImage('https://robohash.org/$index'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F8FD),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "10 Jobs",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " ditemukan",
                            style: TextStyle(fontSize: 18.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
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
            ],
          ),
        ],
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
