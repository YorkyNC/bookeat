import 'package:bookeat/src/features/home/domain/entities/get_promotions_entity.dart';
import 'package:bookeat/src/features/home/domain/request/get_promotions_request.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import 'i_home_remote.dart';

@named
@LazySingleton(as: IHomeRemote)
class HomeRemoteImpl implements IHomeRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  HomeRemoteImpl(this.client);
  Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };
  @override
  Future<Either<DomainException, GetPromotionsEntity>> getPromotions(GetPromotionsRequest request) async {
    final queryParams = request.toJson()..removeWhere((key, value) => value == null);

    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.promotions}',
      queryParameters: queryParams,
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        if (result.statusCode == 200) {
          return Right(GetPromotionsEntity.fromJson(result.data));
        } else {
          return Left(
            UnknownException(message: result.statusMessage ?? 'Unknown error'),
          );
        }
      },
    );
  }
}
