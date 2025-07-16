## Vim

### 上下移動螢幕畫面
[shift]+[PageUp], [shift]+[PageDown]

### 顯示行數
:set number

### 離開vim
:wq
:q!

### 刪除
5dd
[start],[end]d

### 大量註解
1. 按「Control+v」
2. 選擇想要註解的區塊
3. 按「Shift+i」
4. 輸入 //
5. 按 [esc]

### 取代
`:[範圍]s/[比對字串]/[取代字串]/g`  
:%s/aaa/bbb/g
