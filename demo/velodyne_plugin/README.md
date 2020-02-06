# Gazebo 실습 

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

> export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
```
## 실행 
```bash
> gazebo --verbose ../velodyne.world
> ./vel 3  (new terminal)
```