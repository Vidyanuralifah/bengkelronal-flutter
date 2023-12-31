import 'package:get/get.dart';
import 'package:pemesanan_service_mobil/app/Providers/bookingServiceProvider.dart';
import 'package:pemesanan_service_mobil/app/models/bookingServiceModel.dart';
import 'package:pemesanan_service_mobil/app/pages/widgets/snackBar/SnackbarWidget.dart';

class BookingServiceController {
  var booking_service = List<BookingServiceModel>.empty().obs;

  void postData(
    String kendaraan_id,
    String user_id,
    String detail_service,
    String tanggal,
    int hari,
    String jam,
    String keluhan,
  ) {
    if (hari == 6 || hari == 7) {
      return print('gaboleh');
    }
    if (kendaraan_id != '' &&
        user_id != '' &&
        detail_service != null &&
        tanggal != DateTime.monday &&
        jam != '00:00' &&
        keluhan != '') {
      booking_service.add(BookingServiceModel(
        kendaraan_id: kendaraan_id,
        user_id: user_id,
        detail_service: detail_service,
        tanggal: tanggal,
        jam: jam,
        keluhan: keluhan,
      ));

      BookingServiceProvicer()
          .postData(
              kendaraan_id, user_id, detail_service, tanggal, jam, keluhan)
          .then((value) {
        if (value.statusCode == 200) {
          SnackBarWidget()
              .snackBarSuccess("Berhasil Booking Service Kendaraan..");
          Get.back();
        }
        print(value.body);
      });
    } else {
      SnackBarWidget().snackBarError("Semua Data Wajib Di Isi");
    }
  }
}
