import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subscription_dedicated_plan_update_model.freezed.dart';
part 'subscription_dedicated_plan_update_model.g.dart';

@freezed
class SubscriptionDedicatedPlanUpdateModel with _$SubscriptionDedicatedPlanUpdateModel{

  const SubscriptionDedicatedPlanUpdateModel._();

  factory SubscriptionDedicatedPlanUpdateModel({
    required String title,
    required String price,
    required String id,
  }) = _SubscriptionDedicatedPlanUpdateModel;

  factory SubscriptionDedicatedPlanUpdateModel.fromJson(Map<String, dynamic> map) => _$SubscriptionDedicatedPlanUpdateModelFromJson(map);

}
