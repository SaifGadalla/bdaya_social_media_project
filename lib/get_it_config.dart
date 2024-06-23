import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';


import 'package:social_media_bdaya/get_it_config.config.dart';
	
final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
  externalPackageModulesBefore: [
    ExternalModule(BdayaFlutterCommonPackageModule),
  ],
)  
void configureDependencies({String? env}) => getIt.init(
  environment: env,
);
