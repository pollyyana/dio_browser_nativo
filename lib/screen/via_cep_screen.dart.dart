
import 'package:dio_browser_nativo/screen/viaCepController.dart';
import 'package:flutter/material.dart';

class ViaCepScreenDart extends StatefulWidget {
  const ViaCepScreenDart({super.key});

  @override
  State<ViaCepScreenDart> createState() => _ViaCepScreenDartState();
}

class _ViaCepScreenDartState extends State<ViaCepScreenDart> {
  final cepEC = TextEditingController();
  //instancia da controller
  final viaCepController = ViaCepController();

  @override
  void dispose() {
    cepEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca Logradouro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: cepEC,
              decoration: const InputDecoration(
                  label: Text('CEP ', style: TextStyle(fontSize: 16)),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  viaCepController.getEndereco(cepEC.text);
                },
                child: const Text('Buscar CEP')),
            const SizedBox(
              height: 16,
            ),
            //informações dentro do valueNotifier
            ValueListenableBuilder(
              valueListenable: viaCepController,
              builder: (_, viaCepControllerValue, child) {
                return Text('Logradouro: ${viaCepControllerValue.street}',
                    style: const TextStyle(fontSize: 16));
              },
            ),
            ValueListenableBuilder(
              valueListenable: viaCepController,
              builder: (_, viaCepControllerValue, child) {
                return Text('Cidade: ${viaCepControllerValue.city}',
                    style: const TextStyle(fontSize: 16));
              },
            ),
          ],
        ),
      ),
    );
  }
}
