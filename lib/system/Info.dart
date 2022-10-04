//https://template.thailocallink.com/app_api_v1/newsList
final String _base_url = "https://template.thailocallink.com/";
final String _base_url_api = _base_url + "app_api_v1";

class Info {
  String baseUrl = _base_url;
  String checkAppVersion = _base_url_api + '/checkAppVersion';

  String contentPrivacyPolicy = _base_url_api + '/contentPrivacyPolicy';
  String getAcceptPrivacyPolicy = _base_url_api + '/getAcceptPrivacyPolicy';
  String setAcceptPrivacyPolicy = _base_url_api + '/setAcceptPrivacyPolicy';

}
