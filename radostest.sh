client='xweichu@c240g1-031307.wisc.cloudlab.us'

ssh -p 22 $client << 'EOF'
    cd /users/xweichu/bigdata

    rados bench -p test_pool 10 write -b 1048576 --no-cleanup > 1MB_W.log
    rados bench -p test_pool 10 seq > 1MB_R.log
    rados -p test_pool cleanup
    
    rados bench -p test_pool 10 write -b 2097152 --no-cleanup > 2MB_W.log
    rados bench -p test_pool 10 seq > 2MB_R.log
    rados -p test_pool cleanup
    
    rados bench -p test_pool 10 write -b 4194304 --no-cleanup > 4MB_W.log
    rados bench -p test_pool 10 seq > 4MB_R.log
    rados -p test_pool cleanup

    rados bench -p test_pool 10 write -b 8388608 --no-cleanup > 8MB_W.log
    rados bench -p test_pool 10 seq > 8MB_R.log
    rados -p test_pool cleanup
    
    rados bench -p test_pool 10 write -b 16777216 --no-cleanup > 16MB_W.log
    rados bench -p test_pool 10 seq > 16MB_R.log
    rados -p test_pool cleanup
    
    rados bench -p test_pool 10 write -b 33554432 --no-cleanup > 32MB_W.log
    rados bench -p test_pool 10 seq > 32MB_R.log
    rados -p test_pool cleanup
    
    rados bench -p test_pool 10 write -b 67108864 --no-cleanup > 64MB_W.log
    rados bench -p test_pool 10 seq > 64MB_R.log
    rados -p test_pool cleanup
 
EOF

scp $client:/users/xweichu/bigdata/* /Users/xweichu/Projects/object_size/obj_interface
