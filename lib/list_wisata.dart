import 'package:flutter/material.dart';
import 'package:tugas2_124200049_nadifahabsari/detail_wisata.dart';
import 'package:tugas2_124200049_nadifahabsari/tourism_place.dart';

class ListWisata extends StatefulWidget {
  const ListWisata({Key? key}) : super(key: key);

  @override
  State<ListWisata> createState() => _ListWisataState();
}

class _ListWisataState extends State<ListWisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Wisata Turis"),
    ),
      body: ListView.builder(itemBuilder: (context,index){
        final TourismPlace wisata = tourismPlaceList[index];
        return Card(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailWisata(wisata: wisata);
              }));
            },
            child: Container(
              height: (MediaQuery.of(context).size.height)/4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.network(wisata.imageUrls[0], fit: BoxFit.cover, width: MediaQuery.of(context).size.width, color: Colors.black45, colorBlendMode: BlendMode.darken,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textAlignLeftWhite(wisata.name),
                      Container(
                        height: 35,
                        child: (
                          textAlignLeftWhite(wisata.location)
                        ),
                        ),
                      textAlignLeftWhite(wisata.ticketPrice)
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}

Widget textAlignLeftWhite(String text){
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(
      color: Colors.white,
      fontSize: 30,
    ),
  );
}


