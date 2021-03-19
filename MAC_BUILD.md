# ORB-SLAM3 Mac build

See `README.md` for full instructions, these are supplemental for MacOS.

1. Install dependencies: OpenCV 3 (4 doesn't work out of the box) and boost:

`brew install opencv@3 boost`

2. Build with `build_mac.sh` instead of normal `build.sh`. Key differences are that `OpenCV_DIR="/usr/local/opt/opencv@3/"` is used to point to correct version of OpenCV and `-DCMAKE_CXX_FLAGS="-I /usr/local/include"` tells where to find the `boost` library.

`./build_mac.sh`


