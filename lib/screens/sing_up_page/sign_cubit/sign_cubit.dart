import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../sign_state/sign_state.dart';

class SignBloc extends Cubit<SignState> {
  SignBloc() : super(SignInitial());
}
