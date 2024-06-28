# Tips & trick
## build aesd-assignments
```sh
make -C buildroot BR2_EXTERNAL=../base_external aesd-assignments-dirclean
#make -C buildroot BR2_EXTERNAL=../base_external aesd-assignments
make -C buildroot BR2_EXTERNAL=../base_external aesd-assignments-rebuild
./build.sh # to rebuild the image, rootfs
```