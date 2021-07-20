# Docker를 활용한 pytorch 개발 환경 설정하기


1. Docker Image Pull 하기 (원하는 버전으로)

https://hub.docker.com/r/pytorch/pytorch/tags?page=1&ordering=last_updatedhttps://hub.docker.com/r/pytorch/pytorch/tags?page=1&ordering=last_updated

2. Docker Container 실행 하기

~~~
# volume 설정
# ssh port 설정 (900 port로 ssh 접속)
# jupyter notebook용 port 설정 (9010)
# gpu 사용 설정

docker run -it -p 9000:22 -p 9010:9010 --gpus 1 -v [host dir]:/root/data/ --name [container name] [image] 
~~~

3. Docker Container에서 필요 사항 설치하기

- 설치 항목
   - tmux
   - net-tools
   - ssh 서버
   - vim
   - jupyter lab
- ssh 서버와 jupyter 

~~~
apt-get update 
apt-get install git -y
git clone https://github.com/y-rok/pytorch_devel
cd pytorch_devel
sh setting.sh
~~~
