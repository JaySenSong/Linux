#查詢隱藏檔案
ls -la ~/ | more 


find <path> 
    -name PATTERN  //搜索檔名
    -iname         //忽略大小寫
    -type [fdl]    //檔案類型
    -mtime [+-]N   //修改時間
    -size [+-]N    //檔案大小範圍
    -empty         //空檔案或目錄
    -perm MODE     //權限
    -delete        //刪除檔案
    -exec COMMAND {} \;   //搜索後執 
    -maxdepth N    //搜索目錄深度
    -atime         //讀取時間 
    




https://medium.com/bandai%E7%9A%84%E6%A9%9F%E5%99%A8%E5%AD%B8%E7%BF%92%E7%AD%86%E8%A8%98/linux-%E5%9F%BA%E6%9C%AC%E6%93%8D%E4%BD%9C%E5%85%A5%E9%96%80%E5%8F%8A%E6%8C%87%E4%BB%A4-4131adf8168
