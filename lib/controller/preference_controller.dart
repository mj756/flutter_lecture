import 'package:shared_preferences/shared_preferences.dart';

class PreferenceController
{
  static const String prefKeyIsLoggedIn='isLoggedIn';
  static const String prefKeyLoggedInUserId='userId';
  static const String prefKeyUserDetail='userDetail';

  static late final  SharedPreferences prefObject;

  static Future<void> init() async
  {
    prefObject = await SharedPreferences.getInstance();
  }

  static void setIntValue(String key,int value)
  {
    prefObject.setInt(key, value);
  }
  static void setBooleanValue(String key,bool value)
  {
    prefObject.setBool(key, value);
  }
  static void setStringValue(String key,String value)
  {
    prefObject.setString(key, value);
  }
  static void clear()
  {
    prefObject.clear();
  }

  static bool getBoolean(String key)
  {
     return prefObject.getBool(key) ?? false;
  }
  static String getString(String key)
  {
     return prefObject.getString(key) ?? '';
  }

}