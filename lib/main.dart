import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/identification_part/identifcationscreen.dart';
import 'package:gp_app/networking/local/shared_prefrences.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/EditProfile.dart';
import 'package:gp_app/view/MarketPlaceScreens/EditProductProfile.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/MarketPlaceScreens/MyStore.dart';
import 'package:gp_app/view/MarketPlaceScreens/NearByStores.dart';
import 'package:gp_app/view/MarketPlaceScreens/OrderScreen.dart';
import 'package:gp_app/view/MarketPlaceScreens/ProductDetails.dart';
import 'package:gp_app/view/PlantDetails.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/login_regestration/ForgetPassword.dart';
import 'package:gp_app/view/login_regestration/Login.dart';
import 'package:gp_app/view/login_regestration/PasswordUpdated.dart';
import 'package:gp_app/view/login_regestration/ResetPassword.dart';
import 'package:gp_app/view/login_regestration/SignUp.dart';
import 'package:gp_app/view/onboardingScreens/ConstWelcomeScreens.dart';
import 'package:gp_app/view/onboardingScreens/WelcomeScreen1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:gp_app/view/profile/Profile.dart';
import 'package:gp_app/view/profile/articles_List_View.dart';
import 'package:gp_app/view/profile/followers_grid.dart';
import 'package:gp_app/view/profile/following.dart';
import 'package:gp_app/view/profile/ownProfile.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
=======
//<<<<<<< HEAD
import 'package:provider/provider.dart';
//=======
>>>>>>> e9ddaf12c6e77fdf578350f5235e846baee4acc8
import 'package:gp_app/view/PlantDetails.dart';
import 'package:provider/provider.dart';
import 'networking/diohelper.dart';
import 'view/expert/CreateArticle.dart';
<<<<<<< HEAD
=======
//>>>>>>> c83a391da9fcc3051c08e2d6f42315aa743c1851
>>>>>>> e9ddaf12c6e77fdf578350f5235e846baee4acc8
import 'const.dart';
import 'identification_part/networking/bloc_observer.dart';
import 'identification_part/networking/cubit_bloc.dart';
import 'identification_part/plant_results/plant_result.dart';
import 'view/MarketPlaceScreens/EditProductProfile.dart';
import 'view/MarketPlaceScreens/EditProductProfile.dart';
import 'view/expert/ExpertsList.dart';
import 'view/expert/ExpertsList.dart';
import 'view/login_regestration/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver(); // Track Cubit Bloc
  DioHelper.init();
  await CacheHelper.init();
  await Firebase.initializeApp();

  Widget widget;
 String token = CacheHelper.getData(key: 'token');
 if (token != null) widget = Home();
 else widget = Login();

  runApp(MyApp(
    startWidget: widget,
   token: token,
  ));
}

class MyApp extends StatelessWidget {

 final Widget startWidget;
 final String token;

   MyApp({ this.token, this.startWidget}) ;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),
          BlocProvider(
          create: (context) => IdentificationCubit()),

          StreamProvider(
            create: (context) =>
            context
                .read<AuthenticationService>()
                .authStateChanges,
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
          theme: new ThemeData(
            fontFamily: 'Cabin',
            appBarTheme: AppBarTheme(
                backgroundColor: kInActiveBackButtonColor, elevation: 0.5,
                iconTheme:IconThemeData(color:KTextLightColour),

            foregroundColor: Colors.grey.shade700,
            centerTitle: true,

          ),

          primarySwatch: Colors.green,
          accentColor: Colors.grey.shade700,
          // Your app THeme color , used to change drawer colour
        ),
        home: startWidget,
        initialRoute: Home.id,
        routes: {
            ownProfile.id: (context) => ownProfile(),
          FollowersGrid.id: (context) => FollowersGrid(),
          FollowingGrid.id: (context) => FollowingGrid(),

          PlantDetails.id: (context) => PlantDetails(),
          OrdersScreen.id: (context) => OrdersScreen(),
          WelcomeScreen1.id: (context) => WelcomeScreen1(),
          EditProfile.id: (context) => EditProfile(),
          ConstWelcomeScreen.id: (context) => ConstWelcomeScreen(),
          SignUp.id: (context) => SignUp(),
          Login.id: (context) => Login(),
          ForgetPassword.id: (context) => ForgetPassword(),
          ResetPassword.id: (context) => ResetPassword(),
          PasswordUpdated.id: (context) => PasswordUpdated(),

          MyStore.id: (context) => MyStore(),
          NearBy.id: (context) => NearBy(),
          ProductDetails.id: (context)=> ProductDetails(),
          EditProductProfile.id: (context) => EditProductProfile(),
          SearchScreen.id: (context) => SearchScreen(),
          ExpertsList.id: (context) => ExpertsList(),
          CreateArticle.id: (context) => CreateArticle(),


          ArticlesListView.id: (context) => ArticlesListView(),

          //NotificationScreen.id: (context) => NotificationScreen(),
        }
       ),);
  }
}

class AuthenticationWrapper extends StatefulWidget {
  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return EditProfile();
    } else {
      return EditProfile();
    }
  }
}
