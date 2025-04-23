1. /bin
2. /sbin
3. /etc
    系統環境變數/profile 或 /enviroment
   - 更新指令
   source /etc/profile
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
     /local => 開發工具軟體
       /bin => 自訂腳本
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
