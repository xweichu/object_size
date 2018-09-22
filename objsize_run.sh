client='xweichu@c240g1-031305.wisc.cloudlab.us'
ssh -p 22 $client << 'EOF'

    rm /mnt/cephfs/FIO/0.25MB/Test.0.0
    rm /mnt/cephfs/FIO/0.5MB/Test.0.0
    rm /mnt/cephfs/FIO/1MB/Test.0.0
    rm /mnt/cephfs/FIO/2MB/Test.0.0
    rm /mnt/cephfs/FIO/4MB/Test.0.0
    rm /mnt/cephfs/FIO/8MB/Test.0.0
    rm /mnt/cephfs/FIO/16MB/Test.0.0
    rm /mnt/cephfs/FIO/32MB/Test.0.0
    rm /mnt/cephfs/FIO/64MB/Test.0.0

    fio /users/xweichu/FIO/global.fio --rw=read --bs=256k --directory=/mnt/cephfs/FIO/0.25MB/ --output-format=json --output=/users/xweichu/object_size/data/R0.25MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=512k --directory=/mnt/cephfs/FIO/0.5MB/ --output-format=json --output=/users/xweichu/object_size/data/R0.5MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=1024k --directory=/mnt/cephfs/FIO/1MB/ --output-format=json --output=/users/xweichu/object_size/data/R1MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=2048k --directory=/mnt/cephfs/FIO/2MB/ --output-format=json --output=/users/xweichu/object_size/data/R2MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=4096k --directory=/mnt/cephfs/FIO/4MB/ --output-format=json --output=/users/xweichu/object_size/data/R4MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=8192k --directory=/mnt/cephfs/FIO/8MB/ --output-format=json --output=/users/xweichu/object_size/data/R8MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=16384k --directory=/mnt/cephfs/FIO/16MB/ --output-format=json --output=/users/xweichu/object_size/data/R16MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=32768k --directory=/mnt/cephfs/FIO/32MB/ --output-format=json --output=/users/xweichu/object_size/data/R32MB.json
    fio /users/xweichu/FIO/global.fio --rw=read --bs=65536k --directory=/mnt/cephfs/FIO/64MB/ --output-format=json --output=/users/xweichu/object_size/data/R64MB.json


    fio /users/xweichu/FIO/global.fio --rw=write --bs=256k --directory=/mnt/cephfs/FIO/0.25MB/ --output-format=json --output=/users/xweichu/object_size/data/W0.25MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=512k --directory=/mnt/cephfs/FIO/0.5MB/ --output-format=json --output=/users/xweichu/object_size/data/W0.5MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=1024k --directory=/mnt/cephfs/FIO/1MB/ --output-format=json --output=/users/xweichu/object_size/data/W1MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=2048k --directory=/mnt/cephfs/FIO/2MB/ --output-format=json --output=/users/xweichu/object_size/data/W2MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=4096k --directory=/mnt/cephfs/FIO/4MB/ --output-format=json --output=/users/xweichu/object_size/data/W4MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=8192k --directory=/mnt/cephfs/FIO/8MB/ --output-format=json --output=/users/xweichu/object_size/data/W8MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=16384k --directory=/mnt/cephfs/FIO/16MB/ --output-format=json --output=/users/xweichu/object_size/data/W16MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=32768k --directory=/mnt/cephfs/FIO/32MB/ --output-format=json --output=/users/xweichu/object_size/data/W32MB.json
    fio /users/xweichu/FIO/global.fio --rw=write --bs=65536k --directory=/mnt/cephfs/FIO/64MB/ --output-format=json --output=/users/xweichu/object_size/data/W64MB.json

    cd /users/xweichu/object_size
    git add data/
    git commit -m "uplaod data from test server"
    git push origin master
EOF
