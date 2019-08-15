    mkdir build
    cd build

    cmake                                            \
    -DTrilinos_ENABLE_Amesos=ON                      \
    -DTrilinos_ENABLE_Epetra=ON                      \
    -DTrilinos_ENABLE_Ifpack=ON                      \
    -DTrilinos_ENABLE_AztecOO=ON                     \
    -DTrilinos_ENABLE_Sacado=ON                      \
    -DTrilinos_ENABLE_Teuchos=ON                     \
    -DTrilinos_ENABLE_MueLu=ON                       \
    -DTrilinos_ENABLE_ML=ON                          \
    -DTrilinos_VERBOSE_CONFIGURE=OFF                 \
    -DTPL_ENABLE_MPI=ON                              \
    -DBUILD_SHARED_LIBS=ON                           \
    -DCMAKE_VERBOSE_MAKEFILE=OFF                     \
    -DCMAKE_BUILD_TYPE=RELEASE                       \
    -DCMAKE_INSTALL_PREFIX:PATH=/opt/trilinos \
    ../

    make -j8 install
