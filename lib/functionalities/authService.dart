import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch(e){
      return null;
    }
  }
  Future signInEmail(String _email, String _password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      User user = result.user;
      return user;
    } catch(e){
      return null;
    }
  }
  Future registerEmail(String email, String password) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return user;
    } catch(e){
      return null;
    }
  }
}