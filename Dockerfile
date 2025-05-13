# 1단계: JAR 빌드를 위한 베이스 이미지 (필요 시 멀티스테이지도 가능)
FROM openjdk:17-jdk
WORKDIR /app

# 빌드한 JAR 파일 복사
COPY build/libs/*SNAPSHOT.jar app.jar

# 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]