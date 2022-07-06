// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkResponse _$$_WorkResponseFromJson(Map<String, dynamic> json) =>
    _$_WorkResponse(
      companyName: json['companyName'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      startDate: startDateFromTimestamp(json['startDate'] as Timestamp),
      endDate: endDateFromTimestamp(json['endDate'] as Timestamp?),
    );

Map<String, dynamic> _$$_WorkResponseToJson(_$_WorkResponse instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
