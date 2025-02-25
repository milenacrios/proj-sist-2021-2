import 'package:mobx/mobx.dart';

part 'restaurant_home_store.g.dart';

class RestaurantHomeStore = _RestaurantHomeStoreBase with _$RestaurantHomeStore;

abstract class _RestaurantHomeStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
