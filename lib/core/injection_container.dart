import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uuid/uuid.dart';

import '../data/datasources/cache/cache_service.dart';
import '../data/datasources/local/authentication_local_data_source.dart';
import '../data/datasources/local/contact_local_data_source.dart';
import '../data/datasources/local/setting_local_data_source.dart';
import '../data/datasources/local/sign_language_recognition_local_data_source.dart';
import '../data/datasources/local/user_local_data_source.dart';
import '../data/datasources/local/video_call_local_data_source.dart';
import '../data/datasources/remote/api_service.dart';
import '../data/datasources/remote/authentication_remote_data_source.dart';
import '../data/datasources/remote/caption_remote_data_source.dart';
import '../data/datasources/remote/contact_remote_data_source.dart';
import '../data/datasources/remote/external_link_remote_data_source.dart';
import '../data/datasources/remote/user_remote_data_source.dart';
import '../data/datasources/remote/video_call_remote_data_source.dart';
import '../data/plugins/network_plugin.dart';
import '../data/plugins/phone_number_formatter_plugin.dart';
import '../data/plugins/sign_language_recognition_plugin.dart';
import '../data/plugins/speech_recognition_plugin.dart';
import '../data/repositories/authentication_repository_impl.dart';
import '../data/repositories/caption_repository_impl.dart';
import '../data/repositories/contact_repository_impl.dart';
import '../data/repositories/external_link_repository_impl.dart';
import '../data/repositories/general_repository_impl.dart';
import '../data/repositories/setting_repository_impl.dart';
import '../data/repositories/sign_language_recognition_repository_impl.dart';
import '../data/repositories/speech_recognition_repository_impl.dart';
import '../data/repositories/user_repository_impl.dart';
import '../data/repositories/video_call_repository_impl.dart';
import '../domain/repositories/authentication_repository.dart';
import '../domain/repositories/caption_repository.dart';
import '../domain/repositories/contact_repository.dart';
import '../domain/repositories/external_link_repository.dart';
import '../domain/repositories/general_repository.dart';
import '../domain/repositories/setting_repository.dart';
import '../domain/repositories/sign_language_recognition_repository.dart';
import '../domain/repositories/speech_recognition_repository.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/repositories/video_call_repository.dart';
import '../domain/usecases/accept_invitation.dart';
import '../domain/usecases/authorization_status.dart';
import '../domain/usecases/close_sign_language_recognition.dart';
import '../domain/usecases/create_room.dart';
import '../domain/usecases/delete_account.dart';
import '../domain/usecases/disable_caption.dart';
import '../domain/usecases/disable_sign_language_recognition.dart';
import '../domain/usecases/disable_speech_recognition.dart';
import '../domain/usecases/disable_take_photo_snapshot.dart';
import '../domain/usecases/enable_caption.dart';
import '../domain/usecases/enable_sign_language_recognition.dart';
import '../domain/usecases/enable_speech_recognition.dart';
import '../domain/usecases/enable_take_photo_snapshot.dart';
import '../domain/usecases/flip_video_call_camera.dart';
import '../domain/usecases/format_phone_number.dart';
import '../domain/usecases/get_current_user.dart';
import '../domain/usecases/get_device_locale.dart';
import '../domain/usecases/get_privacy_and_policy.dart';
import '../domain/usecases/get_recent_call.dart';
import '../domain/usecases/get_support_content.dart';
import '../domain/usecases/get_terms_and_condition_content.dart';
import '../domain/usecases/has_permission.dart';
import '../domain/usecases/init_caption.dart';
import '../domain/usecases/init_contact.dart';
import '../domain/usecases/init_sign_language_recognition.dart';
import '../domain/usecases/init_speech_recognition.dart';
import '../domain/usecases/init_video_call.dart';
import '../domain/usecases/is_first_launch_app.dart';
import '../domain/usecases/is_phone_number_valid.dart';
import '../domain/usecases/join_room.dart';
import '../domain/usecases/leave_room.dart';
import '../domain/usecases/mute_video_call_audio.dart';
import '../domain/usecases/mute_video_call_video.dart';
import '../domain/usecases/refresh_contact_list.dart';
import '../domain/usecases/request_permission.dart';
import '../domain/usecases/resend_otp.dart';
import '../domain/usecases/reset_sign_language_recognition.dart';
import '../domain/usecases/set_is_first_launch_app.dart';
import '../domain/usecases/sign_out.dart';
import '../domain/usecases/start_sign_language_recognition.dart';
import '../domain/usecases/stream_caption.dart';
import '../domain/usecases/stream_current_user.dart';
import '../domain/usecases/stream_photo_snapshot.dart';
import '../domain/usecases/stream_sign_language_recognition_result.dart';
import '../domain/usecases/stream_sign_language_recognition_status.dart';
import '../domain/usecases/stream_speech_recognition_result.dart';
import '../domain/usecases/stream_speech_recognition_status.dart';
import '../domain/usecases/stream_video_call_invitations.dart';
import '../domain/usecases/stream_video_call_status.dart';
import '../domain/usecases/update_fcm_token.dart';
import '../domain/usecases/update_name.dart';
import '../domain/usecases/update_profile_picture.dart';
import '../domain/usecases/upload_caption.dart';
import '../domain/usecases/verify_otp.dart';
import '../domain/usecases/verify_phone_number.dart';
import '../presentation/blocs/account/account_bloc.dart';
import '../presentation/blocs/authorization/authorization_bloc.dart';
import '../presentation/blocs/contact_list/contact_list_bloc.dart';
import '../presentation/blocs/open_external_link/open_external_link_bloc.dart';
import '../presentation/blocs/recent_call/recent_call_bloc.dart';
import '../presentation/blocs/setup/setup_bloc.dart';
import '../presentation/blocs/sign_language_recognition/sign_language_recognition_bloc.dart';
import '../presentation/blocs/speech_recognition/speech_recognition_bloc.dart';
import '../presentation/blocs/video_call_caption/video_call_caption_bloc.dart';
import '../presentation/blocs/video_call_control/video_call_control_bloc.dart';
import '../presentation/services/navigator_service.dart';
import '../presentation/services/notification_service.dart';
import '../presentation/services/platform_service.dart';
import '../presentation/services/ui_service.dart';
import 'env.dart';

final sl = GetIt.instance;

bool _isInitialized = false;

Future<void> setup() async {
  if (_isInitialized) {
    return;
  } else {
    _isInitialized = true;
  }

  /// Services
  sl.registerLazySingleton<PlatformService>(() => PlatformServiceImpl());
  sl.registerLazySingleton<NavigatorService>(() => NavigatorServiceImpl());
  sl.registerLazySingleton<NotificationService>(() => NotificationServiceImpl(
      FirebaseMessaging.instance, FlutterLocalNotificationsPlugin()));
  sl.registerLazySingleton<UiService>(() => UiServiceImpl(sl(), sl()));

  /// Standard BLoC
  sl.registerFactory(() => RecentCallBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => VideoCallControlBloc(sl(), sl(), sl()));
  sl.registerFactory(() => VideoCallCaptionBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => SignLanguageRecognitionBloc(
      sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => SpeechRecognitionBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => OpenExternalLinkBloc(sl(), sl(), sl()));

  /// Singleton BLoC
  sl.registerLazySingleton(() => AuthorizationBloc(sl(), sl()));
  sl.registerFactory(() => SetupBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerLazySingleton(() => ContactListBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerLazySingleton(
      () => AccountBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));

  /// Use cases
  sl.registerLazySingleton(() => VerifyPhoneNumber(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
  sl.registerLazySingleton(() => ResendOtp(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));
  sl.registerLazySingleton(() => GetAuthStatus(sl()));
  sl.registerLazySingleton(() => RefreshContactList(sl()));

  sl.registerLazySingleton(() => InitVideoEngine(sl()));
  sl.registerLazySingleton(() => CreateRoom(sl()));
  sl.registerLazySingleton(() => JoinRoom(sl()));
  sl.registerLazySingleton(() => LeaveRoom(sl()));
  sl.registerLazySingleton(() => StreamVideoCallStatus(sl()));
  sl.registerLazySingleton(() => StreamVideoCallInvitations(sl()));
  sl.registerLazySingleton(() => FlipVideoCallCamera(sl()));
  sl.registerLazySingleton(() => MuteVideoCallAudio(sl()));
  sl.registerLazySingleton(() => MuteVideoCallVideo(sl()));
  // sl.registerLazySingleton(() => StreamVideoFrame(sl()));
  sl.registerLazySingleton(() => EnableTakePhotoSnapshot(sl()));
  sl.registerLazySingleton(() => DisableTakePhotoSnapshot(sl()));
  sl.registerLazySingleton(() => StreamPhotoSnapshot(sl()));

  sl.registerLazySingleton(() => const HasPermission());
  sl.registerLazySingleton(() => const RequestPermission());
  sl.registerLazySingleton(() => IsFirstLaunchApp(sl()));
  sl.registerLazySingleton(() => SetIsFirstLaunchApp(sl()));
  sl.registerLazySingleton(() => GetRecentCall());
  sl.registerLazySingleton(() => UpdateName(sl()));
  sl.registerLazySingleton(() => UpdateFcmToken(sl()));
  sl.registerLazySingleton(() => StreamCurrentUser(sl()));
  sl.registerLazySingleton(() => UpdateProfilePicture(sl()));
  sl.registerLazySingleton(() => GetCurrentUser(sl()));
  sl.registerLazySingleton(() => DeleteAccount(sl()));

  /// Caption usecase
  sl.registerLazySingleton(() => InitCaption(sl()));
  sl.registerLazySingleton(() => EnableCaption(sl()));
  sl.registerLazySingleton(() => DisableCaption(sl()));
  sl.registerLazySingleton(() => StreamCaption(sl()));
  sl.registerLazySingleton(() => UploadCaption(sl()));

  /// Sign language usecase
  sl.registerLazySingleton(() => InitSignLanguageRecognition(sl()));
  sl.registerLazySingleton(() => EnableSignLanguageRecognition(sl()));
  sl.registerLazySingleton(() => DisableSignLanguageRecognition(sl()));
  sl.registerLazySingleton(() => CloseSignLanguageRecognition(sl()));
  sl.registerLazySingleton(() => StreamSignLanguageRecognitionResult(sl()));
  sl.registerLazySingleton(() => StreamSignLanguageRecognitionStatus(sl()));
  // sl.registerLazySingleton(() => AnalyzeVideoFrame(sl()));
  sl.registerLazySingleton(() => StartSignLanguageRecognition(sl()));
  sl.registerLazySingleton(() => ResetSignLanguageRecognition(sl()));

  /// Speech recognition use case
  sl.registerLazySingleton(() => InitSpeechRecognition(sl()));
  sl.registerLazySingleton(() => EnableSpeechRecognition(sl()));
  sl.registerLazySingleton(() => DisableSpeechRecognition(sl()));
  sl.registerLazySingleton(() => StreamSpeechRecognitionResult(sl()));
  sl.registerLazySingleton(() => StreamSpeechRecognitionStatus(sl()));

  /// Contact use cases
  sl.registerLazySingleton(() => InitContact(sl()));

  // Open external link use case
  sl.registerLazySingleton(() => GetPrivacyPolicyContent(sl()));
  sl.registerLazySingleton(() => GetTermsAndConditionContent(sl()));
  sl.registerLazySingleton(() => GetSupportContent(sl()));

  /// Invitation use cases
  sl.registerLazySingleton(() => AcceptInvitation(sl()));

  /// General use cases
  sl.registerLazySingleton(() => FormatPhoneNumber(sl()));
  sl.registerLazySingleton(() => IsPhoneNumberValid(sl()));
  sl.registerLazySingleton(() => GetDeviceLocale(sl()));

  /// Repositories
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(sl(), sl(), BehaviorSubject()));
  sl.registerLazySingleton<ContactRepository>(
      () => ContactRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<SettingRepository>(
      () => SettingRepositoryImpl(sl()));
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<VideoCallRepository>(
      () => VideoCallRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<CaptionRepository>(
      () => CaptionRepositoryImpl(sl()));
  sl.registerLazySingleton<SignLanguageRecognitionRepository>(
      () => SignLanguageRecognizerRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<SpeechRecognitionRepository>(
      () => SpeechRecognitionRepositoryImpl(sl()));
  sl.registerLazySingleton<ExternalLinkRepository>(
      () => ExternalLinkRepositoryImpl(sl()));
  sl.registerLazySingleton<GeneralRepository>(
      () => GeneralRepositoryImpl(sl()));

  /// Data sources
  sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(sl(), sl()));
  sl.registerLazySingleton<AuthenticationRemoteDatSource>(
      () => AuthenticationRemoteDatSourceImpl(sl(), sl(), sl()));
  sl.registerLazySingleton<ContactLocalDataSource>(
      () => ContactLocalDataSourceImpl(sl(), sl()));
  sl.registerLazySingleton<SettingLocalDataSource>(
      () => SettingLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(sl(), sl(), sl(), sl()));
  sl.registerLazySingleton<UserLocalDataSource>(
      () => UserLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<ContactRemoteDataSource>(
      () => ContactRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<VideoCallLocalDataSource>(
      () => VideoCallLocalDataSourceImpl());
  sl.registerLazySingleton<VideoCallRemoteDataSource>(
      () => VideoCallRemoteDataSourceImpl(sl(), sl(), sl(), sl(), sl()));
  sl.registerLazySingleton<CaptionRemoteDataSource>(
      () => CaptionRemoteDataSourceImpl(sl(), sl()));
  sl.registerLazySingleton<SignLanguageRecognitionLocalDataSource>(
      () => SignLanguageRecognitionLocalDataSourceImpl());

  // External repository data source
  sl.registerLazySingleton<ExternalLinkRemoteDataSource>(
      () => const ExternalLinkRemoteDataSourceImpl());

  /// Internal Plugins
  sl.registerLazySingleton<SpeechRecognitionPlugin>(
      () => SpeechRecognitionPluginImpl(sl(), sl()));
  sl.registerLazySingleton<SignLanguageRecognitionPlugin>(
      () => SignLanguageRecognitionPluginImpl(sl()));
  sl.registerLazySingleton<ApiService>(() => ApiServiceImpl(sl()));
  sl.registerLazySingleton<CacheService>(() => CacheServiceImpl(sl()));
  sl.registerLazySingleton<NetworkPlugin>(
      () => NetworkPluginImpl(sl(), Env.baseUrl));
  sl.registerLazySingleton<PhoneNumberFormatterPlugin>(
      () => PhoneNumberFormatterPluginImpl());

  /// External plugin
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final remoteConfig = FirebaseRemoteConfig.instance;
  final imagePicker = ImagePicker();
  const uuid = Uuid();
  const secureStorage = FlutterSecureStorage();
  final speechToText = SpeechToText();
  final dio = Dio();
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => secureStorage);
  // sl.registerLazySingleton(() => FirebaseMessaging.instance);
  // sl.registerLazySingleton(() => FlutterLocalNotificationsPlugin());
  sl.registerLazySingleton<EnvironmentState>(() => Env.environment);
  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => firestore);
  sl.registerLazySingleton(() => storage);
  sl.registerLazySingleton(() => remoteConfig);
  sl.registerLazySingleton(() => imagePicker);
  sl.registerLazySingleton(() => uuid);
  sl.registerLazySingleton(() => speechToText);
  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => sharedPreferences);

  /// Post Creation
  final authorizationBloc = sl<AuthorizationBloc>();
  final authenticationRepository = sl<AuthenticationRepository>();
  final generalRepository = sl<GeneralRepository>();

  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));
  await authenticationRepository.init();

  final latestAuthStatus = await authenticationRepository.getLatestAuthStatus();
  latestAuthStatus.fold(
    (failure) => authorizationBloc
        .add(AuthorizationEvent.authStatusChanged(failure: failure)),
    (status) => authorizationBloc
        .add(AuthorizationEvent.authStatusChanged(status: status)),
  );

  await generalRepository.init();
}
