set -e

echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir -p build
cd build
OpenCV_DIR="/usr/local/opt/opencv@3/" cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-I /usr/local/include"
make -j

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir -p  build
cd build
OpenCV_DIR="/usr/local/opt/opencv@3/" cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-I /usr/local/include"
make -j

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir -p  build
cd build
OpenCV_DIR="/usr/local/opt/opencv@3/" cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-I /usr/local/include"
make -j
