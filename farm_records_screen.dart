class FarmRecord {
  final String id;
  final String farmName;
  final String location;
  final String teaType;
  final double quantityKg;
  final String harvestDate;
  final String notes;

  FarmRecord({
    required this.id,
    required this.farmName,
    required this.location,
    required this.teaType,
    required this.quantityKg,
    required this.harvestDate,
    this.notes = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'farmName': farmName,
      'location': location,
      'teaType': teaType,
      'quantityKg': quantityKg,
      'harvestDate': harvestDate,
      'notes': notes,
    };
  }

  factory FarmRecord.fromMap(Map<String, dynamic> map) {
    return FarmRecord(
      id: map['id'],
      farmName: map['farmName'],
      location: map['location'],
      teaType: map['teaType'],
      quantityKg: map['quantityKg'],
      harvestDate: map['harvestDate'],
      notes: map['notes'] ?? '',
    );
  }
}// TODO Implement this library.