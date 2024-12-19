Rails.application.config.session_store :redis_store, {
  servers: [
    {
      url: ENV.fetch("REDIS_SESSION_URL") { "redis://localhost:6379/1" },
      namespace: "session"
    }
  ],
  key: "_jedaeroweb_home_renovation",
  expire_after: 90.minutes # 세션 만료 시간
}