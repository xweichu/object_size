client='xweichu@c240g1-031305.wisc.cloudlab.us'
ssh -p 22 $client << 'EOF'
    mkdir /mnt/cephfs/FIO
    mkdir /mnt/cephfs/FIO/0.25MB
    mkdir /mnt/cephfs/FIO/1MB
    mkdir /mnt/cephfs/FIO/4MB
    mkdir /mnt/cephfs/FIO/16MB
    mkdir /mnt/cephfs/FIO/64MB

    sudo setfattr -n ceph.dir.layout -v "stripe_unit=262144 stripe_count=1 object_size=262144 pool=cephfsdata" /mnt/cephfs/FIO/0.25MB/
    sudo setfattr -n ceph.dir.layout -v "stripe_unit=1048576 stripe_count=1 object_size=1048576 pool=cephfsdata" /mnt/cephfs/FIO/1MB/
    sudo setfattr -n ceph.dir.layout -v "stripe_unit=4194304 stripe_count=1 object_size=4194304 pool=cephfsdata" /mnt/cephfs/FIO/4MB/
    sudo setfattr -n ceph.dir.layout -v "stripe_unit=16777216 stripe_count=1 object_size=16777216 pool=cephfsdata" /mnt/cephfs/FIO/16MB/
    sudo setfattr -n ceph.dir.layout -v "stripe_unit=67108864 stripe_count=1 object_size=67108864 pool=cephfsdata" /mnt/cephfs/FIO/64MB/

    mkdir /users/xweichu/FIO

    echo "[global]
ioengine=libaio
direct=1
size=20g
lat_percentiles=1

[Test]" >> /users/xweichu/FIO/global.fio

EOF