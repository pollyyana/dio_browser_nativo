import 'package:flutter/material.dart';

class ViaCepScreenDart extends StatefulWidget {
  const ViaCepScreenDart({super.key});

  @override
  State<ViaCepScreenDart> createState() => _ViaCepScreenDartState();
}

class _ViaCepScreenDartState extends State<ViaCepScreenDart> {
  final cepEC = TextEditingController();

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
            SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Buscar CEP')),
            const SizedBox(
              height: 16,
            ),
            Text('Logradouro: ', style: TextStyle(fontSize: 16)),
            Text('Cidade: ', style: TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}
