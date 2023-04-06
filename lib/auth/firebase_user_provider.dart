import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TukoShopFirebaseUser {
  TukoShopFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TukoShopFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TukoShopFirebaseUser> tukoShopFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TukoShopFirebaseUser>(
      (user) {
        currentUser = TukoShopFirebaseUser(user);
        return currentUser!;
      },
    );
