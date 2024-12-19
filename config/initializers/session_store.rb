Rails.application.config.session_store :redis_store, {
  servers: [
    {
      url: ENV.fetch("REDIS_SESSION_URL") { "redis://localhost:6379/1" },
      namespace: "sessions"
    }
  ],
  key: "_#{Rails.application.class.module_parent_name.downcase}_session", # 앱 이름 기반
  expire_after: 90.minutes, # 세션 만료 시간
  serializer: :json, # JSON 직렬화 사용
  threadsafe: false # Redis 세션 스토어는 기본적으로 스레드 세이프가 아님
}