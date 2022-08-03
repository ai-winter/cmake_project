# CMAKE工程模板说明



## 1 编译第三方库

### 1.1 Windows

```shell
# root
cd ./3rd
mkdir build && cd build
cmake ../
```

Visual Studio打开3rd.sln并运行生成库文件。将各第三方库的.dll、.lib文件剪切到./3rd/xxx/lib目录下，或运行`movelib_win_x64d.sh`脚本

