/// アプリ起動時の状態を表現するenum
enum AppLaunchStatus {
  authorized,
  unauthorized,
  loading,
  error,
  ;

  bool get isAuthorized => this == AppLaunchStatus.authorized;
  bool get isUnauthorized => this == AppLaunchStatus.unauthorized;
  bool get isLoading => this == AppLaunchStatus.loading;
  bool get hasError => this == AppLaunchStatus.error;
}
