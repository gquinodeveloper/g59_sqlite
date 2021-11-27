import 'package:g56_find_home/app/data/models/reservation_model.dart';
import 'package:g56_find_home/app/data/providers/reservation_provider.dart';
import 'package:get/get.dart';

class ReservationRepository {
  final _apiProvider = Get.find<ReservationProvider>();

  Future<String> insertReservation({
    required String token,
    required ReservationModel reservationModel,
  }) =>
      _apiProvider.insertReservation(
        token: token,
        reservationModel: reservationModel,
      );
}
