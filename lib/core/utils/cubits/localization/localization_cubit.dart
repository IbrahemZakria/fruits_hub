import 'package:bloc/bloc.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());
  static bool isAraic =
      SharedPreferance.getData<String>(Constant.languageCode) == 'en'
      ? false
      : true;

  Future<void> changeLanguage(String lang) async {
    final langsaved = SharedPreferance.getData<String>(Constant.languageCode);

    if (langsaved != lang || langsaved == null) {
      await SharedPreferance.setData(key: Constant.languageCode, value: lang);

      emit(LanguageChangedState(lang));
    } else {
      showUserMessage(message: "message");
      emit(LanguageChangedState(lang));
    }
  }
}
