# Gazebo 실습 


## 구현
- [Gazebo World Class API 참조](https://osrf-distributions.s3.amazonaws.com/gazebo/api/dev/classgazebo_1_1physics_1_1World.html#details)
- Load 함수 
    - setGravity()

## build 방법 
- build 디렉토리 생성
```bash
> mkdir build 
```    
- Plugin 빌드
```bash
> cd build
> cmake ..
> make
```
## 환경변수 설정
```bash
> export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${PX4_Simulation}/demo/velodyne_plugin/build
```
## 실행 
```bash
> gazebo --verbose ../velodyne.world
> ./vel 3  (new terminal)
```

## 실행 결과 