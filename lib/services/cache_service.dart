import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheService{
  Future<void> init();
  String? getString(String key);
  Future<void> setString(String key,String? value);
}

@LazySingleton(as: CacheService,env: [Environment.prod])
class RealCacheService extends CacheService{

  @override
  Future<void> init() async {

    _instance = await SharedPreferences.getInstance();
    
  }

  SharedPreferences? _instance;
  
  @override
  String? getString(String key) {
    assert(_instance != null , 'Must call init before accessing instances');    
    return _instance?.getString(key);
  }
  
  @override
  Future<void> setString(String key, String? value) async {
    final i = _instance;
    assert(i != null , 'Must call init before accessing instances');
    if (i == null) {
      return;
    }
    if (value == null) {
      await i.remove(key);
    }else{
      await i.setString(key, value) ;
    }
  }

}

@LazySingleton(as: CacheService,env: [Environment.dev,Environment.test])
class FakeCacheService extends CacheService{

  final _cacheMap = <String,String>{};

  @override
  Future<void> init() async {}
  
  @override
  String? getString(String key) {
    return _cacheMap[key];
  }
  
  @override
  Future<void> setString(String key, String? value) async{
    if (value == null) {
      _cacheMap.remove(key);
    } else {
      _cacheMap[key] = value ;
    }
  }
 


}
