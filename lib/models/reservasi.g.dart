// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservasi.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReservationAdapter extends TypeAdapter<Reservation> {
  @override
  final int typeId = 1;

  @override
  Reservation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reservation()
      ..name = fields[0] as String
      ..phone = fields[1] as String
      ..date = fields[2] as DateTime
      ..people = fields[3] as int;
  }

  @override
  void write(BinaryWriter writer, Reservation obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.people);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReservationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
