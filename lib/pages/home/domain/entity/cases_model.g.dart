// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cases_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CasesModelAdapter extends TypeAdapter<CasesModel> {
  @override
  final int typeId = 1;

  @override
  CasesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CasesModel(
      global: fields[0] as Global,
      countries: (fields[1] as List)?.cast<Country>(),
      date: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CasesModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.global)
      ..writeByte(1)
      ..write(obj.countries)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CasesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
