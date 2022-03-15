import 'top_album.dart';
import 'package:flutter/material.dart';
import 'list_album.dart';

class ListLagu extends StatefulWidget {
  final String albumName;
  final String imageUrls;
  const ListLagu({Key? key, required this.albumName,required this.imageUrls}) : super(key: key);

  @override
  _ListLaguState createState() => _ListLaguState();
}

class _ListLaguState extends State<ListLagu> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.albumName),
        actions: <Widget>[
          IconButton(onPressed: onPressed, icon: new Icon(Icons.favorite)),
          IconButton(onPressed: onPressed, icon: new Icon(Icons.share)),
        ],
      ),
      body:Center(
        child: Column(
          children: [
            Image.network(widget.imageUrls,),
            Text(widget.albumName),
          ],
        ),
      ),
    );
  }
  Widget _judul(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(

      ),
    );
  }

}



