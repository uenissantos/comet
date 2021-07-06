import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/PE%C3%87AS/view/Codigos.dart';
import 'package:comunidadecomet/PE%C3%87AS/view/home_page.dart';
import 'package:comunidadecomet/manuais/manuais.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  final String currentUserId;

  const Home({Key key, this.currentUserId}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}








class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  //string para enviar resultado a tela inicio
  // ignore: unused_field
  String _resultado = "";
  @override
  Widget build(BuildContext context) {
//lista de classes a ser exibida
    List<Widget> telas = [
      Manuais(),
HomePage(),

      Codigo()
    ];
    return Scaffold(
      appBar:AppBar(title: Center(child:  BannerC(

      )),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
        //child: ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual, //definicao de cor altomatica
        onTap: (indice) {
          setState(() {
            //configurar o current index
            _indiceAtual = indice; //indice quer dizer o indice selecionado
          });
        },
        type: BottomNavigationBarType.shifting,

        fixedColor: Colors.black,
        items: [

          BottomNavigationBarItem(
            title: Text("manuais"),
            icon: Icon(Icons.library_books),
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            title: Text("pecas"),
            icon: Icon(Icons.add),
            backgroundColor: Colors.blueGrey,
          ),

          BottomNavigationBarItem(
            title: Text('Erro'),
            icon: Icon(Icons.error),
            backgroundColor: Colors.blueGrey,
          ),

        ],
      ),
    );
  }
}
