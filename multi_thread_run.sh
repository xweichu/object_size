client='xweichu@c240g1-031305.wisc.cloudlab.us'
ssh -p 22 $client << 'EOF'
    fio /users/xweichu/FIO/global.fio --rw=randwrite --bs=256k --directory=/mnt/cephfs/FIO/0.25MB/ --output-format=json --output=/users/xweichu/object_size/data/W0.25MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randwrite --bs=1024k --directory=/mnt/cephfs/FIO/1MB/ --output-format=json --output=/users/xweichu/object_size/data/W1MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randwrite --bs=4096k --directory=/mnt/cephfs/FIO/4MB/ --output-format=json --output=/users/xweichu/object_size/data/W4MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randwrite --bs=16384k --directory=/mnt/cephfs/FIO/16MB/ --output-format=json --output=/users/xweichu/object_size/data/W16MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randwrite --bs=65536k --directory=/mnt/cephfs/FIO/64MB/ --output-format=json --output=/users/xweichu/object_size/data/W64MB.json  --iodepth=1 --group_reporting=1 --numjobs=10

    fio /users/xweichu/FIO/global.fio --rw=randread --bs=256k --directory=/mnt/cephfs/FIO/0.25MB/ --output-format=json --output=/users/xweichu/object_size/data/R0.25MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randread --bs=1024k --directory=/mnt/cephfs/FIO/1MB/ --output-format=json --output=/users/xweichu/object_size/data/R1MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randread --bs=4096k --directory=/mnt/cephfs/FIO/4MB/ --output-format=json --output=/users/xweichu/object_size/data/R4MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randread --bs=16384k --directory=/mnt/cephfs/FIO/16MB/ --output-format=json --output=/users/xweichu/object_size/data/R16MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
    fio /users/xweichu/FIO/global.fio --rw=randread --bs=65536k --directory=/mnt/cephfs/FIO/64MB/ --output-format=json --output=/users/xweichu/object_size/data/R64MB.json  --iodepth=1 --group_reporting=1 --numjobs=10
EOF