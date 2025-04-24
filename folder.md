1. /bin
2. /sbin
3. /etc
     /profile 或 /enviroment =>系統環境變數 
       - 更新指令
           source /etc/profile
    /network/interfaces => 網路設定配置
       ```
           auto eth0
           iface eth0 inet dhcp
       ```
    /etc/resolv.conf
       -修改 sudo vim /etc/resolvconf/resolv.conf.d/base
       ```
           domain twnic.com.tw
           nameserver 168.95.1.1    //dns server1
            nameserver 168.95.192.1    //dns server2
       ```
       -更新 sudo resolvconf -u
   
5. /home/xxx => 個別用戶的檔案及數據  
 設定使用者環境變數
 - 輸入指令
    nano ~/.bashrc 
 - 添加
   ```
    export JAVA_HOME=~/java/jdk-<version>
    export PATH=$JAVA_HOME/bin:$PATH 
   ``` 
 - 更新指令
   source ~/.bashrc
6. /root
7. /lib
8. /usr
     /bin => 基本命令(ls,cat)、預設軟體(vim,python) 
     /sbin => 管理系統命令(systemctl,ifconfig、守護進程服務(nginx,apache)
9. /var
10. /tmp
11. /tmp
12. /dev
13. /proc
14. /sys
15. /opt
16. /mnt
17. /media
18. /boot
19. /swap
