import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/tabs/emei_category_tab.dart';
import 'package:projeto_ceu_univesp/tabs/cei_tab.dart';
import 'package:projeto_ceu_univesp/tabs/emef_tab.dart';
import 'package:projeto_ceu_univesp/tabs/home_tab.dart';
import 'package:projeto_ceu_univesp/tabs/places_tab.dart';
import 'package:projeto_ceu_univesp/tabs/postagem_tab.dart';
import 'package:projeto_ceu_univesp/tabs/uniceu_tab.dart';
import 'package:projeto_ceu_univesp/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),

        Scaffold(
          appBar: AppBar(
            title: Text("EMEI Paraisópolis"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: EmeiCategoryTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("CEI Paraisópolis"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: CeiTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("EMEF Paraisópolis"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: EmefTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("UNICEU Paraisópolis"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: UniceuTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Nova Postagem"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: PostagemTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Centro Unificado Céu"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: PlacesTab(),
        ),
      ],
    );
  }
}
