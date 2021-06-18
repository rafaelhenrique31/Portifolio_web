import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'funcoes.dart';

void main() {

  runApp(MaterialApp(
    home: Portifolio(),
    debugShowCheckedModeBanner: false,
  ));
}

class Portifolio extends StatefulWidget {
  @override
  _PortifolioState createState() => _PortifolioState();
}

class _PortifolioState extends State<Portifolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: Colors.black38,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    color: Colors.black87,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 25),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'rafael henrique'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                inherit: false,color: Colors.blue),
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Portfólio feito em'.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                              FlutterLogo(style: FlutterLogoStyle.horizontal,size: 150,)
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:  Color(0xff7c94b6),
                            image:  DecorationImage(
                              image: AssetImage('imagens/minha.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              color: Colors.black,
                              width: 8,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 400,
                          width: 600,
                        ),
                        SizedBox(width: 50,),
                        Container(
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(height: 5,width: 80,color: Colors.blue,),
                                    Text('Rafael Henrique Da Silva',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,inherit:false ),),
                                    Container(height: 5,width: 80,color: Colors.blue,),
                                  ],),
                                SizedBox(height: 50,),
                                Row(children: [
                                  Icon(Icons.navigate_next,color: Colors.blue,),
                                  Text('Estudante de Analise e deselvolvimento de sistemas',style: TextStyle(inherit: false,fontSize: 15),),
                                ],),
                                Row(children: [
                                  Icon(Icons.navigate_next,color: Colors.blue,),
                                  Text('Programador Jr',style: TextStyle(inherit: false,fontSize: 15),),
                                ],)
                              ],),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Projetos criados'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              inherit: false),
                        ),
                        Container(
                          height: 800,
                          width: double.infinity,
                          child: GridView.count(crossAxisCount: 5,
                            children: [
                              card('imagens/flow01.png'),
                              card('imagens/flow02.png'),
                              card('imagens/flow03.png'),
                              card('imagens/flow04.png'),
                              card('imagens/flow05.png'),
                              card('imagens/ampla.png'),
                              card('imagens/weather.png'),
                              card('imagens/site01.png'),
                              card('imagens/site02.png'),
                              card('imagens/site03.png'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        width: 650,
                        child: Column(
                          children: [
                            Text(
                              'Tecnologias que ja tive contato'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  inherit: false),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterLogo(
                                  size: 150,
                                  style: FlutterLogoStyle.stacked,
                                ),
                                Image.asset('imagens/.net.jpg',width: 150,height: 120,),
                                Image.asset('imagens/dart.png',width: 150,height: 150,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('imagens/cpp_logo.png',width: 150,height: 120,),
                                Image.asset('imagens/sql.png',width: 150,height: 150,),
                                Image.asset('imagens/firebase.png',width: 150,height: 150,),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 500,
                        width: 650,
                        child: Column(
                          children: [
                            Text(
                              'Repositorio'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  inherit: false),
                            ),
                            InkWell(
                              onTap: openURL,
                              child: Image.asset('imagens/git.png'),
                            ),
                            SizedBox(height: 15,),
                            Text('Meus projetos publicados no git',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: openURL,
                                        child: Image.asset('imagens/git.png',width: 100,height: 100,),
                                      ),
                                      Text('Site wix',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: openURL,
                                        child: Image.asset('imagens/git.png',width: 100,height: 100,),
                                      ),
                                      Text('controle chamados',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.white,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Contato'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                inherit: false),
                          ),
                          Text('Formas de entrar em contato comigo',
                            style: TextStyle(
                                inherit: false,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child:Image.asset('imagens/linkedin.png',width: 70,height: 70,),
                                onTap: openURL,
                              ),
                              SizedBox(width: 15,),
                              InkWell(
                                child:Image.asset('imagens/face.png',width: 70,height: 70,),
                                onTap: openURL,
                              ),
                              SizedBox(width: 15,),
                              InkWell(
                                child:Image.asset('imagens/twitter-logo.png',width: 70,height: 70,),
                                onTap: twiter,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ));
  }
}
