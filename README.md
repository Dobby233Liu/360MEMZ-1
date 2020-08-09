# 360MEMZ
为360MEMZ制作的无害特效程序
## 构成部分
1. DLLMain 对应 `360MEMZ.dll`，由 `rundll32` 执行其内部的特效代码。  
2. WinMain 对应 `360MEMZ.exe`，即主程序。  
3. AdditionalData：需要存于程序根目录的文件
4. StopWorking：“停止工作”程序
5. 360MEMZ.nsi：套壳安装程序
## 系统要求
由于调用了WERAPI和DWM系列函数，此程序需要在Windows 7及以上运行，当然，你可以改写并完善360MEMZ的系统兼容性。
## clone 命令
*绝对不是打广告*
```bash
git clone --recursive --depth 1 https://hub.fastgit.org/Dobby233Liu/360MEMZ-1.git
```