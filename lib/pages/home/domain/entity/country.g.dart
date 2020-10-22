// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryAdapter extends TypeAdapter<Country> {
  @override
  final int typeId = 2;

  @override
  Country read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Country(
      country: fields[0] as String,
      countryCode: fields[1] as String,
      slug: fields[2] as String,
      newConfirmed: fields[3] as int,
      totalConfirmed: fields[4] as int,
      newDeaths: fields[5] as int,
      totalDeaths: fields[6] as int,
      newRecovered: fields[7] as int,
      totalRecovered: fields[8] as int,
      date: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Country obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.countryCode)
      ..writeByte(2)
      ..write(obj.slug)
      ..writeByte(3)
      ..write(obj.newConfirmed)
      ..writeByte(4)
      ..write(obj.totalConfirmed)
      ..writeByte(5)
      ..write(obj.newDeaths)
      ..writeByte(6)
      ..write(obj.totalDeaths)
      ..writeByte(7)
      ..write(obj.newRecovered)
      ..writeByte(8)
      ..write(obj.totalRecovered)
      ..writeByte(9)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
