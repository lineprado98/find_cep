import 'package:find_cep/app/core/utils/service_locator.dart';
import 'package:find_cep/app/domain/entities/address.dart';
import 'package:find_cep/app/presenter/pages/home/address_details.dart';
import 'package:find_cep/app/presenter/store/app_page_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final store = getIt.get<AppPageStore>();
  final TextEditingController cep = TextEditingController();
  late Address res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (context) {
        return store.isLoading == false
            ? Center(
                child: Column(
                children: [
                  const SizedBox(height: 50),
                  TextField(
                    controller: cep,
                    decoration: const InputDecoration(
                      filled: true,
                      hintText: 'CEP',
                      fillColor: Colors.transparent,
                      focusColor: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        store.findAddress(cep: cep.text).then((_) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddressDetails(
                                        addressDetails: store.response,
                                        isError: store.isError,
                                      )));
                        });
                        cep.text = '';
                      },
                      child: const Text('Search')),
                ],
              ))
            : const Center(
                child: CircularProgressIndicator(),
              );
      }),
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title)),
    );
  }
}
