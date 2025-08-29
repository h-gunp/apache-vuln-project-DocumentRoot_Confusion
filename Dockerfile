# 1. 데비안 기반의 공식 아파치 이미지를 사용합니다.
FROM httpd:2.4.59

# 2. 데비안의 패키지 관리자인 'apt-get'을 사용하여
#    기본 perl과 CGI 필수 모듈(libcgi-pm-perl)을 함께 설치합니다.
RUN apt-get update && apt-get install -y perl libcgi-pm-perl && rm -rf /var/lib/apt/lists/*

# 3. 로컬의 CGI 스크립트 파일을 Docker 이미지 안의 'cgi-bin' 폴더로 복사합니다.
COPY ./htdocs/cgi-bin/ /usr/local/apache2/cgi-bin/

# 4. 복사된 CGI 스크립트에 실행 권한을 부여합니다.
RUN chmod +x /usr/local/apache2/cgi-bin/*.cgi