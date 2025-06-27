# 경량 리눅스 이미지
FROM ubuntu:22.04

# 작업 디렉토리 설정
WORKDIR /app

# 실행 파일 복사
COPY graal-vm-app /app/graal-vm-app

# 실행 권한 부여
RUN chmod +x /app/graal-vm-app

# (필요시) 포트 노출
EXPOSE 8080

# 실행
ENTRYPOINT ["/app/graal-vm-app"]