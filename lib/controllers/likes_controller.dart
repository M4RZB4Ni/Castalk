import 'package:castalk/apis/likes_api.dart';
import 'package:castalk/constraints/enums.dart';
import 'package:castalk/models/liked_entity_response/liked_entity_response.dart';
import 'package:get/get.dart';

class LikesController extends GetxController with StateMixin<LikedEntityModel> {
  late LikedEntityModel likedEntityModel = LikedEntityModel();
  final LikesApi _likesApi = LikesApi();

  RxBool loading = true.obs;
  //
  @override
  onInit() {
    super.onInit();
  }

  getLikedEntity() async {
    likedEntityModel =
        await _likesApi.likedEntities(entityType: EntityType.episode);
  }
}
