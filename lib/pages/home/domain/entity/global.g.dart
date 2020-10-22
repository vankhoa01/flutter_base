// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlobalAdapter extends TypeAdapter<Global> {
  @override
  final int typeId = 3;

  @override
  Global read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Global(
      newConfirmed: fields[0] as int,
      totalConfirmed: fields[1] as int,
      newDeaths: fields[2] as int,
      totalDeaths: fields[3] as int,
      newRecovered: fields[4] as int,
      totalRecovered: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Global obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.newConfirmed)
      ..writeByte(1)
      ..write(obj.totalConfirmed)
      ..writeByte(2)
      ..write(obj.newDeaths)
      ..writeByte(3)
      ..write(obj.totalDeaths)
      ..writeByte(4)
      ..write(obj.newRecovered)
      ..writeByte(5)
      ..write(obj.totalRecovered);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlobalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
