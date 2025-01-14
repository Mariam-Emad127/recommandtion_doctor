import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
final String ?message;
final int ? code;
@JsonKey(name: "data")
 final Map<String,dynamic>?errors;

 
  ApiErrorModel({required this.message,   this.code,  this.errors}   );

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);


  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);


 String getAllerrors(){
if(errors.isEmptyOrNull())return message?? "unKnown";
 

  final errormessage=errors?.entries.map( (e){
   final value=  e.value;
return "${value.join(',')}";

  }).join("\n");

return errormessage??"";

}

}