
import 'package:json_annotation/json_annotation.dart';
part 'specializations_response_model.g.dart';
@JsonSerializable()
class SpecializationsResponseModel {
@JsonKey(name:"data")
List<Specialization?>?specialization;

SpecializationsResponseModel(this.specialization);
factory SpecializationsResponseModel.fromJson(Map<String,dynamic>json )=>_$SpecializationsResponseModelFromJson(json);

}



@JsonSerializable()
  class Specialization {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
List<Doctors?>?doctors;
  Specialization({this.id, this.name,this.doctors});
  factory Specialization.fromJson(Map<String,dynamic>json )=>_$SpecializationFromJson(json);


}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
   @JsonKey(name: "appoint_price")
   int? appointPrice;
   @JsonKey(name: "start_time")
  String? startTime;
  @JsonKey(name: "end_time")
  String? endTime;

  Doctors({this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
      this.appointPrice,
    this.startTime,
    this.endTime});
  factory Doctors.fromJson(Map<String,dynamic>json )=>_$DoctorsFromJson(json);

}
//
// import 'package:json_annotation/json_annotation.dart';
//
// part 'specializations_response_model.g.dart';
//
// @JsonSerializable()
// class SpecializationsResponseModel {
//   @JsonKey(name: 'data')
//   List<SpecializationsData?>? specializationDataList;
//
//   SpecializationsResponseModel({
//     this.specializationDataList,
//   });
//
//   factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
//       _$SpecializationsResponseModelFromJson(json);
// }
//
// @JsonSerializable()
// class SpecializationsData {
//   int? id;
//   String? name;
//   @JsonKey(name: 'doctors')
//   List<Doctors?>? doctorsList;
//
//   SpecializationsData({
//     this.id,
//     this.name,
//     this.doctorsList,
//   });
//
//   factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
//       _$SpecializationsDataFromJson(json);
// }
//
// @JsonSerializable()
// class Doctors {
//   int? id;
//   String? name;
//   String? email;
//   String? phone;
//   String? photo;
//   String? gender;
//   @JsonKey(name: 'appoint_price')
//   int? price;
//   String degree;
//
//   Doctors({
//     this.id,
//     this.name,
//     this.email,
//     this.phone,
//     this.photo,
//     this.gender,
//     this.price,
//     required this.degree,
//   });
//
//   factory Doctors.fromJson(Map<String, dynamic> json) =>
//       _$DoctorsFromJson(json);
// }