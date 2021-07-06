import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';


class Codigo extends StatefulWidget {
  const Codigo({Key key}) : super(key: key);

  @override
  _CodigoState createState() => _CodigoState();
}

class _CodigoState extends State<Codigo> {
  @override
  Widget build(BuildContext context) {
    var snapshots = Firestore.instance
        .collection('codigo')
    //  .where('excluido', isEqualTo: false)

        .snapshots();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: StreamBuilder(
        stream: snapshots,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> snapshot,) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.data.documents.length == 0) {
            return Center(child: Text('descupe, parece que nao temos peças compativeis'));
          }

          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (BuildContext context, int i) {
              var doc = snapshot.data.documents[i];
              var item = doc.data;


              if(i==6||i==12||i==20||i==28||i==30){

                return BannerC();}else{
                return SafeArea(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(5),
                      child:SafeArea(
                        child: Column(children: <Widget>[Row(children: <Widget>[

                          Text(' CODIGO ERRO '),SizedBox(width: 20,),
                          Text(item['codigo'].toString(),style: TextStyle(color: Colors. red,fontSize: 22),),

                        ],),
                          SizedBox(height: 20,),
                          Text(item['descricao'],style: TextStyle(color: Colors.blueGrey,fontSize: 20),)
                        ],),
                      )
                  ),
                );
              }
            },
          );
        },
      ),


    );
  }


}
