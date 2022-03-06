import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subscription_dedicated_plan_delete_model.freezed.dart';
part 'subscription_dedicated_plan_delete_model.g.dart';

@freezed
class SubscriptionDedicatedPlanDeleteModel with _$SubscriptionDedicatedPlanDeleteModel{

  const SubscriptionDedicatedPlanDeleteModel._();

  factory SubscriptionDedicatedPlanDeleteModel({
    required String id,
  }) = _SubscriptionDedicatedPlanDeleteModel;

  factory SubscriptionDedicatedPlanDeleteModel.fromJson(Map<String, dynamic> map) => _$SubscriptionDedicatedPlanDeleteModelFromJson(map);

}
