import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pscomidas/app/global/widgets/app_bar/custom_app_bar.dart';
import 'package:pscomidas/app/modules/restaurant/restaurant_store.dart';
import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  final String title;
  const RestaurantPage({Key? key, this.title = 'RestaurantPage'})
      : super(key: key);
  @override
  RestaurantPageState createState() => RestaurantPageState();
}

class RestaurantPageState extends State<RestaurantPage> {
  final RestaurantStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: Drawer(
        elevation: 1,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: const Center(
            child: Text('Carrinho'),
          ),
        ),
      ),
      body: SafeArea(
        child: Observer(
          builder: (context) => Center(
            child: Text('${store.value}'),
          ),
        ),
      ),
    );
  }
}
