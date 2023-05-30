class ApiUri {
  static String totalPeopleUri = 'guest/create';
  static String createOrder = 'order/create';
  static Uri khaltiUri =
      Uri.parse('https://khalti.com/api/qr/generate_dynamic/');
  static String createFeedback = 'feedback/create';
  static String getTables = "table/list?itemsPerPage=200&page=1";

  static Uri fonePayQrUrl = Uri.parse(
      'https://merchantapi.fonepay.com/api/merchant/merchantDetailsForThirdParty/thirdPartyDynamicQrDownload');

  static String mocoQrUri = "https://merchant.moco.com.np/mpi/qr";

  ///user auth
  static String login = "user/login";

  ///Please concatinate the order id you get after this url...

  static String getDeviceInfo({required String deviceId}) => 'device/$deviceId';

  static String getOrderList({required String orderId}) => 'order/$orderId';

  static String getUserById({required String userId}) => 'user/$userId';

  static String changeDeviceMode(String deviceId) => 'device/$deviceId/mode';

  static String fetchMenuItems =
      'menuitem/list?itemsPerPage=200&page=1&showAs=group';

  static String fetchClientSettings = 'setting/list?itemsPerPage=200&page=1';

  static getOrderById(String orderId) => 'order/$orderId';

  static updateOrder(String orderId) =>
      'order/$orderId/update?updateType=append';

  static String createPaymentUri = 'payment/create';

  static String sendCardInfoToTab(String cardId, String deviceId) {
    return 'card/$cardId/send-to-tablet?deviceUuid=$deviceId';
  }

  static String getCardData({required String userId}) => 'card/$userId';

  static String getOwnerByCardId({required String cardUuid}) =>
      'card/$cardUuid/owner';

  static String loadBalance({required String customerId}) =>
      'customer/$customerId/load-balance';

  static String changeTable({required String tableId}) =>
      "table/$tableId/attach";
  static String detachTable({required String tableId}) =>
      "table/$tableId/detach";

  static String getTableById(String tableId) => "table/$tableId";
  static String getTableList = "table/list?itemsPerPage=200&page=1";
}

class WSUrl {
  static String localWS = "ws://127.0.0.1:2020";
}
