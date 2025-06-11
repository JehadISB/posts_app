abstract class ApiConsumer {

Future<dynamic> get({
    required String path,
    Object? data,
    Map<String,dynamic>? queryParameters,
});
Future<dynamic> post({
    required String path,
    dynamic data,
    Map<String,dynamic>? queryParameters,
    bool isFormData=false,
});
Future<dynamic> patch({
    required String path,
    dynamic data,
    Map<String,dynamic>? queryParameters,
    bool isFormData=false,
});
Future<dynamic> delete({
    required String path,
    Object? data,
    Map<String,dynamic>? queryParameters,

});

}