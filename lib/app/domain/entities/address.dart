class Address {
  final String street;
  final String neighborhood;
  final String number;
  final String city;
  final String state;

  //Usar constantes
  const Address({
    required this.street,
    required this.number,
    required this.neighborhood,
    required this.city,
    required this.state,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        street: json['logradouro'],
        number: json['gia'],
        neighborhood: json['bairro'],
        city: json['localidade'],
        state: json['uf']);
  }

  factory Address.empty() {
    return const Address(
        street: '', number: '', neighborhood: '', city: '', state: '');
  }
}
