const String _envKey = 'DART_DEFINE_APP_ENV';

/// 环境类型
class EnvType {
  /// 开发环境
  static const String debug = "debug";

  /// 生产环境
  static const String prod = "prod";
}

/// 环境配置
class EnvConfig {
  final String type;
  final String baseUrl;

  EnvConfig({this.type = EnvType.debug, this.baseUrl = ""});
}

/// 环境配置
class Environment {
  /// 当前环境
  static const appEnv = String.fromEnvironment(_envKey);

  /// 开发环境
  static final EnvConfig _debugConfig = EnvConfig(
    type: EnvType.debug,
    baseUrl: "https://test-server.huione.life/app-api",
  );

  /// 生产环境
  static final EnvConfig _prodConfig = EnvConfig(
    type: EnvType.prod,
    baseUrl: "https://test-server.huione.life/app-api",
  );

  static EnvConfig get config => _getEnvConfig();

  static List<EnvConfig> envs = [
    _debugConfig,
    _prodConfig,
  ];

  // 根据不同环境返回对应的环境配置
  static EnvConfig _getEnvConfig() {
    /// 获取本地缓存的请求环境
    switch (appEnv) {
      case EnvType.debug:
        return _debugConfig;
      case EnvType.prod:
        return _prodConfig;
      default:
        return _debugConfig;
    }
  }
}
