#기반 이미지
FROM --platform=linux/amd64 python:3.8-slim-buster as build

#실행할 명령어

#작업 디렉토리 설정
WORKDIR /usr/src/app

#파일을 복사
COPY requirements.txt ./

#RUN pip3 install -r requirements.txt

RUN pip3 install django
RUN pip3 install djangorestframework

#현재 디렉토리의 모든 내용을 기반 이미지에 복사
COPY . .

#포트 개방
EXPOSE 80

#명령 수행
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]