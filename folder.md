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
    /resolv.conf => 指定 dnc server
       -修改 sudo vim /etc/resolvconf/resolv.conf.d/base
       ```
           domain twnic.com.tw
           nameserver 168.95.1.1    //dns server1
            nameserver 168.95.192.1    //dns server2
       ```
       -更新 sudo resolvconf -u
   /systemd/system/xxx_service.service  => 自訂服務
        --範本
             ```
               [Unit]
               # 服務名稱
               Description=Your Server
               
               # 服務相關文件
               # Documentation=https://example.com
               # Documentation=man:nginx(8)
               
               # 設定服務啟動的先後相依姓，例如在網路啟動之後：
               # After=network.target
               
               [Service]
               # 行程類型
               Type=simple
               
               # 啟動服務指令
               ExecStart=/opt/xxx.py
               
               # 服務行程 PID（通常配合 forking 的服務使用）
               # PIDFile=/run/your_server.pid
               
               # 啟動服務前，執行的指令
               # ExecStartPre=/opt/your_command
               
               # 啟動服務後，執行的指令
               # ExecStartPost=/opt/your_command
               
               # 停止服務指令
               # ExecStop=/opt/your_command
               
               # 停止服務後，執行的指令
               # ExecStopPost=/opt/your_command
               
               # 重新載入服務指令
               # ExecReload=/opt/your_command
               
               # 服務終止時自動重新啟動
               Restart=always
               
               # 重新啟動時間格時間（預設為 100ms）
               # RestartSec=3s
               
               # 啟動服務逾時秒數
               # TimeoutStartSec=3s
               
               # 停止服務逾時秒數
               # TimeoutStopSec=3s
               
               # 執行時的工作目錄
               # WorkingDirectory=/opt/your_folder
               
               # 執行服務的使用者（名稱或 ID 皆可）
               # User=myuser
               
               # 執行服務的群組（名稱或 ID 皆可）
               # User=mygroup
               
               # 環境變數設定
               # Environment="VAR1=word1 word2" VAR2=word3 "VAR3=$word 5 6"
               
               # 服務輸出訊息導向設定
               # StandardOutput=syslog
               
               # 服務錯誤訊息導向設定
               # StandardError=syslog
               
               # 設定服務在 Syslog 中的名稱
               # SyslogIdentifier=your-server
               
               [Install]
               WantedBy=multi-user.target
             ```
             -權限設定
               sudo chmod 644 /etc/systemd/system/xxx_service.service
             -重新載入 Systemd 設定檔
               sudo systemctl daemon-reload
             -啟動自訂的服務
               sudo systemctl start xxx_service
             -查看服務狀態
               systemctl status xxx_service
             - 停止服務
               sudo systemctl stop xxx_service
             - 設定開機自動啟動服務
               sudo systemctl enable xxx_service
             - 取消開機自動啟動服務
               sudo systemctl disable xxx_service
        /ssh/sshd_config/ => ssh 配置檔 (需安裝ssh)
             ‵‵`
               #連接portt
               Port 22
               #root登入
               PermitRotLogin yes
               #限定登入者
               AllowUsers <username>
             ```
               sudo systemctl restart ssh
      /init.d => 控制服務腳本(已被systemd取代)
      /pam.d => PAM身分驗證模組
     /passwd => 帳號權限
     /shadow => 帳號加密密碼及有效時間
     /group => 群組
     /fstab =>設備掛載資訊
     /hostname => 主機名稱
     /hosts => LAN　ip預名
     /motd => 登入歡迎訊息
     /sudoers =>sudo 配置檔
        - 使用 visudo /etc/sudoers 
        ```
             %group_name  ALL=(ALL) ALL  //群組設定
             user_name  ALL=(ALL) ALL  //用戶設定
             user_name  ALL=(ALL) NOPASSWD:ALL //不須密碼

             // 自訂規則
             User_Alias MYACC = user_a, user_b, user_c
             MYACC  ALL=(root) !/usr/bin/passwd,
             /usr/bin/passwd [A-Za-z]*, !/usr/bin/passwd  root 
             
        ```
        
     /profile => 同bashrc(只在登入時執行)
     /bashrc => bash shell (設定環境變數)
     /sysctl.conf => 網路行為配置
        -sysctl -p 命令生效
        
     /services => 運行中網路服務端口及協定
             
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
     /local => 第三方軟體(jdk,mvn,npm)
9. /var
10. /tmp
11. /tmp
12. /dev
13. /proc
14. /sys
15. /opt => 系統服務腳本
16. /mnt
17. /media
18. /boot
19. /swap
