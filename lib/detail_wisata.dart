import 'package:flutter/material.dart';
import 'package:tugas2_124200049_nadifahabsari/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailWisata extends StatefulWidget {
  const DetailWisata({Key? key, required this.wisata}) : super(key: key);
  final TourismPlace wisata;

  @override
  _DetailWisataState createState() => _DetailWisataState();
}

class _DetailWisataState extends State<DetailWisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Wisata"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: (MediaQuery
                .of(context)
                .size
                .height) / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.wisata.imageUrls[index]),
                );
              },
              itemCount: widget.wisata.imageUrls.length,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10,),
                Text("${widget.wisata.name}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("${widget.wisata.openDays} | ${widget.wisata.openTime}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("Harga : ${widget.wisata.ticketPrice}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("Lokasi : ${widget.wisata.location}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("${widget.wisata.description}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("${widget.wisata.imageAsset}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("${widget.wisata.imageUrls}",
                  style:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}