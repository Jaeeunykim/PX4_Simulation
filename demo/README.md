# Gazebo 실습 

## build 방법 

- build 디렉토리 생성
    - > mkdir build 
- Plugin 빌드
    - > cd build
    - > cmake ..
    - > make
- 환경변수 설정
    - > export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:~/velodyne_plugin/build
- 실행 
    - > gazebo --verbose ../velodyne.world
    - > ./vel 3  (new terminal)