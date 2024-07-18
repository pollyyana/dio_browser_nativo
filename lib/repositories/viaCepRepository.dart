import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dio_browser_nativo/rest_client/dio_rest_client.dart';

class ViaCepRepository {
//records tras multiplos retornos, nesse exemplo nao precisaria do model
// record nomeado
  Future<({String city, String street})> getEndereco(String cepe) async {
    //instancia de restclient
    try {
      final restClient = DioRestClient();
      //acesso ao serviço
      final Response(:data) =
          await restClient.get('https://viacep.com.br/ws/$cepe/json/');
      return (
        city: data['localidade'] as String,
        street: data['logradouro'] as String
      );
    } on DioException catch (e, s) {
      log('Erro ao buscar CEP $cepe', stackTrace: s);
      throw (city: 'Nao encontrada', street: 'Nao encontrado');
    }
  }
}



    /// A classe [Response] contém a carga útil (que pode ser transformada)
    // que responde à requisição, e outras informações da resposta.
    /// data: Representa a carga útil (dados) da resposta. Seu tipo T pode variar dependendo do conteúdo esperado na resposta.
    /// Response(:data): Este é um uso específico de Dart que usa uma sintaxe de desestruturação para extrair o campo data do objeto Response que é retornado pela requisição HTTP.