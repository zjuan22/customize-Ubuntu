# Set sensible defaults
export PARALLEL_INSTALL=${PARALLEL_INSTALL-1}
export PROTOBUF_BRANCH=${PROTOBUF_BRANCH-v3.4.1}
export RTE_TARGET=${RTE_TARGET-x86_64-native-linuxapp-gcc}

# Download libraries
sudo apt-get update && sudo apt-get -y install g++ git automake libtool libgc-dev bison flex libfl-dev libgmp-dev libboost-dev libboost-iostreams-dev pkg-config python python-scapy python-ipaddr tcpdump cmake python-setuptools libprotobuf-dev libnuma-dev curl &
WAITPROC_APTGET="$!"
[ $PARALLEL_INSTALL -ne 0 ] || wait "$WAITPROC_APTGET"

git clone --recursive -b "${PROTOBUF_BRANCH}" https://github.com/google/protobuf &
WAITPROC_PROTOBUF="$!"
[ $PARALLEL_INSTALL -ne 0 ] || wait "$WAITPROC_PROTOBUF"

git clone --recursive https://github.com/p4lang/p4c &
WAITPROC_P4C="$!"
[ $PARALLEL_INSTALL -ne 0 ] || wait "$WAITPROC_P4C"

# Wait for apt-get to finish
[ $PARALLEL_INSTALL -ne 1 ] || wait "$WAITPROC_APTGET"

# Setup protobuf
[ $PARALLEL_INSTALL -ne 1 ] || wait "$WAITPROC_PROTOBUF"

cd protobuf
./autogen.sh
./configure
make -j 4
sudo make install -j 4
sudo ldconfig
cd ..


# Setup p4c
[ $PARALLEL_INSTALL -ne 1 ] || wait "$WAITPROC_P4C"

export P4C=`pwd`/p4c

cd p4c
./bootstrap.sh
cd build
cmake ..
make -j 4
sudo make install -j 4
cd ../..


# Print environment variables
echo "RTE_SDK=${RTE_SDK}"
echo "P4C=${P4C}"
