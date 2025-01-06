import 'package:matrixclient/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:matrixclient/modules/edokumen2022/pagecoordinator/bloc/pagecoordinator_bloc.dart';
import 'package:matrixclient/modules/vwformpage/vwoldformpage.dart';

class VwAppInstanceParam{
  VwAppInstanceParam({
    this.loginResponse,
    required this.appBloc,

});
  final VwLoginResponse? loginResponse;
  final PagecoordinatorBloc appBloc;

}