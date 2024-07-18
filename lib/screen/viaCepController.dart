import 'package:dio_browser_nativo/repositories/viaCepRepository.dart';
import 'package:flutter/material.dart';

class ViaCepController extends ValueNotifier<({String city, String street})>{
  ViaCepController() : super ((city: '', street: ''));


  final repository = ViaCepRepository();

  //implementar busca
  Future<void>getEndereco (String cepe) async{
    //pegar resultado
    value = await repository.getEndereco(cepe);
    // final result = await repository.getEndereco(cepe);
    // value = result;
  }

}