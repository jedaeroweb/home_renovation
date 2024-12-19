Rails.application.config.session_store :redis_store, {
  servers: [
    {
      url: ENV.fetch("REDIS_SESSION_URL") { "redis://localhost:6379/1" },
      namespace: "session"
    }
  ],
  key: "_home_renovation",
  expire_after: 90.minutes, # 세션 만료 시간
  threadsafe: false, # 이 옵션을 추가해 동시성 문제 방지
  serializer: :json # 세션 데이터 직렬화 방식 설정
}