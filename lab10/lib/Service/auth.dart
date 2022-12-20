import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lab10/home/home.dart';
import 'package:lab10/main.dart';
import 'package:lab10/rigester/Signin.dart';

anonymously() async {
  try {
    var auth = FirebaseAuth.instance;
    var users = await auth.signInAnonymously();
    print('users is:');
    print(users.user!.uid.toString());
  } catch (error) {
    print(error);
  }
}

checkuser() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = auth.currentUser?.uid;
    print("User id is:");
  } catch (error) {
    print(error);
  }
}

funcsignout() async {
  try {
    var auth = FirebaseAuth.instance;
    await auth.signOut();
    print("User isbsign out:");
  } catch (error) {
    print(error);
  }
}

Statechange() async {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}

creatAccount({required String email, required String password}) async {
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    Get.to(signin());
    print(user.user?.uid);
  } catch (error) {
    print(error);
  }
}

getEmail() {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });
  ;
}

signinWithEmail({required String email, required String password}) async {
  try {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    if (user.user?.uid != null) {
      Get.to(home());

    }
  } catch (error) {
    print(error);
  }
}

founsSignout() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = auth.signOut();
    prefs?.clear();
    Get.offAll(() => signin());
    print('User is Sign out');
  } catch (error) {
    print(error);
  }
}

updateEmaile({required String? newEmail}) async {
  try {
    var auth = FirebaseAuth.instance;
    var user = auth.currentUser?.updateEmail(newEmail!);
    print('update email');
  } catch (error) {
    print(error);
  }
}

