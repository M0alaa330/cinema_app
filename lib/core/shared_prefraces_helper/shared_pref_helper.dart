import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheInitialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> getFavourite({required int itemId}) async {
    List<String> favourites =
        sharedPreferences.getStringList('favourites') ?? [];

    // Convert itemId to String before adding to the list
    if (!favourites.contains(itemId.toString())) {
      favourites.add(itemId.toString()); // Store itemId as a string
      await sharedPreferences.setStringList('favourites', favourites);
      print('Item added to favourites');
    } else {
      print('Item already in favourites');
    }
  }

  static Future<void> removeFavourite({required int itemId}) async {
    List<String> favourites =
        sharedPreferences.getStringList('favourites') ?? [];

    // Convert itemId to String before removing from the list
    if (favourites.contains(itemId.toString())) {
      favourites.remove(itemId.toString()); // Remove itemId as a string
      await sharedPreferences.setStringList('favourites', favourites);
      print('Item removed from favourites');
    } else {
      print('Item not found in favourites');
    }
  }

  static List<String> getFavourites() {
    return sharedPreferences.getStringList('favourites') ?? [];
  }
}
