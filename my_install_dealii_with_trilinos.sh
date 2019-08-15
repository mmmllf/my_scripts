cmake \
-DCMAKE_INSTALL_PREFIX=/opt/dealii_with_trilinos  \
-DDEAL_II_COMPONENT_DOCUMENTATION=ON                            \
-DDEAL_II_DOXYGEN_USE_MATHJAX=ON                  \
-DDEAL_II_WITH_MPI=ON                             \
-DP4EST_DIR=/opt/p4est                    \
-DTRILINOS_DIR=/opt/trilinos                      \
-DDEAL_II_WITH_GSL:BOOL=OFF \
..

make -j8

make -j8 install

make test 
