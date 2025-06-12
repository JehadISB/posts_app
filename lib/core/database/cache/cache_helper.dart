import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
static late SharedPreferences sharedPreferences;

static Future<void> init() async {
  sharedPreferences=await SharedPreferences.getInstance();
}

static getStringData({required String key}){
  return sharedPreferences.getString(key);
}

static Future<bool> saveData({required String key, required dynamic value}) async {
  if(value is bool){
    return await sharedPreferences.setBool(key, value);
  }
  if(value is String){
    return await sharedPreferences.setString(key, value);
  }
  if(value is int){
    return await sharedPreferences.setInt(key, value);
  }
  else{
    return await sharedPreferences.setDouble(key, value);
  }

}

static bool? getBool({required String key}){
 return sharedPreferences.getBool(key);
}
static String? getString({required String key}){
  return sharedPreferences.getString(key);
}
static int? getInt({required String key}){
  return sharedPreferences.getInt(key);
}
static double? getDouble({required String key}){
  return sharedPreferences.getDouble(key);
}

static Future<bool> remove({required String key}) async {
  return await sharedPreferences.remove(key);
}

static Future<bool> clear() async {
  return await sharedPreferences.clear();
}

static Future<bool> setObject({required String key, required dynamic value,required Map<String,dynamic>object})async{
String jsonString=jsonEncode(object);
return await saveData(key: key, value: jsonString);
}

static Map<String,dynamic>? getObject({required String key}){
  String? jsonString =getString(key: key);
  if(jsonString != null){
    return jsonDecode(jsonString);
  }else{
    return null;
  }
}

}