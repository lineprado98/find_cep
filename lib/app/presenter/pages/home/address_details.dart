import 'package:find_cep/app/domain/entities/address.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  final Address addressDetails;
  final bool isError;
  const AddressDetails(
      {super.key, required this.addressDetails, required this.isError});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.isError == true
            ? Text('Address not found')
            : Column(
                children: [
                  Text('Street:${widget.addressDetails.street}'),
                  Text('Neighborhood: ${widget.addressDetails.neighborhood}'),
                  Text('City:${widget.addressDetails.city}'),
                  Text('State:${widget.addressDetails.state}'),
                ],
              ),
      ),
      appBar: AppBar(title: Text('Address details')),
    );
  }
}
