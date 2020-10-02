import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ShowAllScreen extends StatefulWidget {
  @override
  _ShowAllScreenState createState() => _ShowAllScreenState();
}

class _ShowAllScreenState extends State<ShowAllScreen> {
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
          "BUMN",
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
                padding: const EdgeInsets.only(bottom: 23.0, top: 8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F8FD),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(35)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "11 BUMN",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " ditemukan",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      JobList(
                        text1: 'Akomodasi',
                      ),
                      JobList(
                        text1: 'Akomodasi',
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
  final String text1;

  JobList({
    this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Row(
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detailScreen');
              },
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
        ],
      ),
    );
  }
}
