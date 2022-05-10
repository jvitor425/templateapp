import 'package:templateapp/components/itemCards.dart';
import 'package:templateapp/components/itemExpandable.dart';

import 'components/botton_navy_bar.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/floatButton.dart';

void main() {
  runApp(Desafio());
}

class Desafio extends StatefulWidget {
  const Desafio({Key key}) : super(key: key);

  @override
  State<Desafio> createState() => _DesafioState();
}

class _DesafioState extends State<Desafio> {
  bool change = true;

  void ButtonEye() {
    setState(() {
      change = !change;
    });
  }

  Color colorItemNavBar(bool input) {
    return (input ? Color(0xFFFFFFFF) : Color(0xFF210457));
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: change ? Color(0xFFE6E6E6) : Color(0xFF101010),
        body: SafeArea(
          child: Column(
            children: [
              /// Imagem e Nome com o olá
              Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/stitch.png'),
                        radius: 50,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 135),
                              child: Text(
                                'Olá',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontFamily: 'MarkerFelt',
                                  color: change
                                      ? Color(0xFF5123A5)
                                      : Color(0xFFDAD5E5),
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Text(
                              'Joao!',
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 45,
                                fontFamily: 'MarkerFelt',
                                color: change
                                    ? Color(0xFF210457)
                                    : Color(0xFFFFFFFF),
                              ),
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                      )
                    ],
                  )),

              /// Texto com botao do olhinho
              Container(
                /// Linha do Texto com o olhinho
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Parabens! Esse mês você fez',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'MarkerFelt',
                        color: change ? Color(0xFF5123A5) : Color(0xFFDAD5E5),
                      ),
                    ),
                    IconButton(
                        onPressed: ButtonEye,
                        color: change ? Color(0xFF4F426F) : Color(0xFF4F426F),
                        icon: Icon(
                            change ? Icons.visibility : Icons.visibility_off))
                  ],
                ),
              ),

              /// Cards
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    /// Card com os Icones de novidades
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Card(
                        color: change ? Color(0xFFD7D3E2) : Color(0xFF210457),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ItemCards(
                                number: change ? '12' : '*',
                                icon: Icons.shop_2,
                                title: 'novos\npedidos',
                                colorIcon: colorItemNavBar(!change),
                                colorTitle: change
                                    ? Color(0xFF5123A5)
                                    : Color(0xFFDAD5E5),
                              ),
                              ItemCards(
                                number: change ? '20' : '*',
                                icon: Icons.people,
                                title: 'novos\nclientes',
                                colorIcon: colorItemNavBar(!change),
                                colorTitle: change
                                    ? Color(0xFF5123A5)
                                    : Color(0xFFDAD5E5),
                              ),
                              ItemCards(
                                number: change ? '20' : '*',
                                icon: Icons.location_city,
                                title: 'novos\ncidades',
                                colorIcon: colorItemNavBar(!change),
                                colorTitle: change
                                    ? Color(0xFF5123A5)
                                    : Color(0xFFDAD5E5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    /// Card com o Icone e o valor
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Card(
                        color: change ? Color(0xFFD7D3E2) : Color(0xFF210457),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.shop_2,
                                color: colorItemNavBar(!change),
                                size: 55,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: change ? 0 : 55,
                                          bottom: 6,
                                          top: 5),
                                      child: Container(
                                        child: Text(
                                          change
                                              ? 'R\$ 34.000,00'
                                              : 'R\$ ---,--',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontFamily: 'ConcertOne',
                                              color: change
                                                  ? Color(0xFF5123A5)
                                                  : Color(0xFFDAD5E5)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'em novos pedidos',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'MarkerFelt',
                                            color: change
                                                ? Color(0xFF230658)
                                                : Color(0xFFFFFFFF)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        /// Icones na base (Home)
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: change ? Color(0xFFE6E6E6) : Color(0xFF000000),
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: colorItemNavBar(change),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 18,
                  color: colorItemNavBar(change),
                ),
              ),
              activeColor: colorItemNavBar(!change),
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.shop_2,
                size: 30,
                color: colorItemNavBar(change),
              ),
              title: Text(
                'Pedidos',
                style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 18,
                  color: colorItemNavBar(change),
                ),
              ),
              activeColor: colorItemNavBar(!change),
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.people,
                size: 30,
                color: colorItemNavBar(change),
              ),
              title: Text(
                'Clientes',
                style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 18,
                  color: colorItemNavBar(change),
                ),
              ),
              activeColor: colorItemNavBar(!change),
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 30,
                color: colorItemNavBar(change),
              ),
              title: Text(
                'Gráfico',
                style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 18,
                  color: colorItemNavBar(change),
                ),
              ),
              activeColor: colorItemNavBar(!change),
            ),
          ],
        ),

        /// Icone que se escone (ADD)
        floatingActionButton: ExpandableFab(
          distance: 112.0,
          children: [
            ItemExpandable(title: 'representantes', icon: Icons.person_add),
            ItemExpandable(title: 'pedidos', icon: Icons.add_shopping_cart),
            ItemExpandable(title: 'clientes', icon: Icons.person_add),
          ],
        ),
      ),
    );
  }
}
