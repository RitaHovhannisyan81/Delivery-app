import 'package:delivery_app/controller/provider/authProvider/auth_provider.dart';
import 'package:delivery_app/view/signinLogicScreen/signin_Logic_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFierbaseOptions.currentPlatform,
  );
  runApp(const UberEats());
}

class UberEats extends StatelessWidget {
  const UberEats({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, ___, __) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<MobileAuthProvider>(
            create: (_) => MobileAuthProvider(),
            )
        ],
          child:MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: const SignInLogicScreen())
          );
    });
  }
}
