import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          "DIGITAL TALENT (Contract Based)",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/detail.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  height: 90.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/pertamina.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
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
                Container(
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F8FD),
                    borderRadius: BorderRadius.only(topLeft:  Radius.circular(35)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Wrap(
                        children: <Widget>[
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu ligula et lorem venenatis faucibus. Phasellus posuere velit at enim venenatis dignissim. Fusce nec metus a lacus volutpat bibendum. Praesent a tempus metus. Vestibulum quis quam ac felis aliquam sagittis ac vel sapien. Nam tincidunt tempor lacus. Nunc id facilisis nulla.\n\nQuisque sem sem, vestibulum sit amet tellus eget, semper condimentum orci. Nam quis nunc libero. Vestibulum convallis lobortis arcu, vitae finibus ligula. Vivamus vitae libero sit amet urna efficitur vehicula quis sit amet eros. Proin vel nisi ut turpis dignissim sollicitudin ut id dui. Praesent aliquet dictum lacus, in egestas tortor cursus et. Nam rutrum, leo in rutrum sollicitudin, elit nulla consectetur lorem, non sagittis ex augue non lacus. In rhoncus ut dui eleifend fermentum. Nam lobortis leo dui, et ullamcorper nulla aliquam nec. Nunc suscipit tristique dapibus. Fusce feugiat egestas aliquam. Nam volutpat lacinia pharetra. Morbi pulvinar libero in posuere dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu ligula et lorem venenatis faucibus. Phasellus posuere velit at enim venenatis dignissim. Fusce nec metus a lacus volutpat bibendum. Praesent a tempus metus. Vestibulum quis quam ac felis aliquam sagittis ac vel sapien. Nam tincidunt tempor lacus. Nunc id facilisis nulla.\n\nQuisque sem sem, vestibulum sit amet tellus eget, semper condimentum orci. Nam quis nunc libero. Vestibulum convallis lobortis arcu, vitae finibus ligula. Vivamus vitae libero sit amet urna efficitur vehicula quis sit amet eros. Proin vel nisi ut turpis dignissim sollicitudin ut id dui. Praesent aliquet dictum lacus, in egestas tortor cursus et. Nam rutrum, leo in rutrum sollicitudin, elit nulla consectetur lorem, non sagittis ex augue non lacus. In rhoncus ut dui eleifend fermentum. Nam lobortis leo dui, et ullamcorper nulla aliquam nec. Nunc suscipit tristique dapibus. Fusce feugiat egestas aliquam. Nam volutpat lacinia pharetra. Morbi pulvinar libero in posuere dictum.",
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xffF5F8FD),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F8FD),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xff4E6CCE), width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Share',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xff4E6CCE),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Kunjungi Situs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffF5F8FD),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
