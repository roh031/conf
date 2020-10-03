sync && swapoff -a && sysctl vm.swappiness=5 && sysctl vm.vfs_cache_pressure=50 && sysctl vm.drop_caches=3 && swapon -a && sync
