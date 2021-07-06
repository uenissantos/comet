
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var snapshots = Firestore.instance
        .collection('pecas')
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

                          Text(item['titulo'].toString(),style: TextStyle(color: Colors.blueGrey[800],)),
                          SizedBox(width: 20,),
                          Text(item['modelo'].toString(),style: TextStyle(color: Colors.blueGrey[200]),),

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => modalCreate(context),
        tooltip: 'Adicionar novo',
        child: Icon(Icons.add),
      ),
    );



  }

  modalCreate(BuildContext context) {
    var form = GlobalKey<FormState>();

    var titulo = TextEditingController();
    var descricao = TextEditingController();
    var modelo =TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(child: AlertDialog(
          title: Text('Nova peça compativel'),
          content: Form(
            key: form,
            child: Container(
              height: MediaQuery.of(context).size.height /1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Título'),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ex.: cdi,estator',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: titulo,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este campo não pode ser vazio';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Text('apenas modelo e ano,separado por virgula'),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '(ex: carburada,2019)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: modelo,
                  ),
                  SizedBox(height: 20),
                  Text('descreva oque precisou fazer para adapitar a peça'),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'descricao',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: descricao,
                  ),

                  SizedBox(height: 20,),

                  BannerQuadrado()                ],
              ),
            ),
          ),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar'),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: ()  {
                setState(() {
                  if (form.currentState.validate()) {
                    Firestore.instance.collection('pecas').add({
                      'titulo': titulo.text,
                      'descricao': descricao.text,
                      'modelo':modelo.text,
                    });

                    Navigator.of(context).pop();
                  }
                });
              },
              color: Colors.green,
              child: Text('Salvar'),
            ),
          ],
        ),);
      },
    );
  }
}
