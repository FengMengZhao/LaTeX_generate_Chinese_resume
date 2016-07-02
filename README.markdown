## 用LaTeX语言生成中文简历 

**用LaTeX制作中文简历，适合IT从业者。FontAwesome字体+Adobe字体+有照片和无照片版本，总有一款适合你。**

### 一睹为快(看一看哪款适合你)

**无照片的简历模板**

[fmz_resume_web.pdf](src/fmz_resume_web.pdf)

![Resume without photo](image/fmz_resume_web.png)

**有照片的简历模板v1**

[fmz_resume_web_classic_blue.pdf](src/fmz_resume_web_classic_blue.pdf)

![Resume with photo classic blue](image/fmz_resume_web_classic_blue.png)

**有照片的简历模板v2**

[fmz_resume_web_casual_blue.pdf](src/fmz_resume_web_casual_blue.pdf)

![Resume with photo casual blue](image/fmz_resume_web_casual_blue.png)

**有照片的简历模板v3**

[fmz_resume_web_custom.pdf](src/fmz_resume_web_custom.pdf)

![Resume with photo custom](image/fmz_resume_web_custom.png)

---

**我们开始吧...**

---

### 注意

- 本项目所有的简历都是使用Windows版本的[MikTeX](http://miktex.org/download)，请自行下载安装。
- 在编译的过程中选择`XeLateX`的选项
- 首次安装可能会提示某个文件找不到，用MikTeX Package Manager进行包的安装，如果装过程有问题，请设置代理服务器。
- 如果提示某个字体丢失，请网上下载字体，并安装到Windows系统中

> 注意条目为编译过程中可能出现的问题，情况千差万别，不能一一列举，注意用Google进行问题搜索并解答。也可以[留言](https://fmzhao.github.io/guestbook/)讨论。

### 无照片模板建立

本项目在`fmz_resume_web`目录中，除了目录当中的文件之外，还需要下载需要导入的字体(我们使用的是汉语的简历)。

[字体下载](https://pan.baidu.com/s/1nvERiOD)之后，会发现是一个`fonts/`目录，将此目录放入`fmz_resume_web`目录中即可完整编译。

> 注意：模板v3`fmz_resume_custom`同样需要下载字体，也是同样的放置位置，详情后面不再赘述。

**简要说明编译文件：**

```
fmz_resume_web.tex              -> 要编译的文件
resume.cls                      -> 编译文件会执行resume.cls中定义格式
fontawesome.sty                 -> 定义第三方引入的FontAwesome字体格式
linespacing_fix.sty             -> 定义第三方定义的格式
zh_CN-Adobefonts_external.sty   -> 定义第三方引入的Adobe系列字体的格式
```

> 这样在MikLaTeX中编译`fmz_resume_web.tex`文件之后就能够得到`fmz_resume_web.pdf`文件，如果成功，可以自行进行修改。

> 如果想要更深层次的自定义自己的简历模式，就要花费心思学习一下LaTeX语法，在`*.cls`和`*.sty`文件中自己定义格式。

---

### 有照片的模板v1、v2的建立

> 本模板不需要自行下载字体，但是在编译的过程中可能提示某个字体不能找到，需要在互联网上下载并安装到Windows中。

本项目在`fmz_resume_web_classicORCasual_blue`目录中，该项目基于著名的`moderncv`项目。

**项目下部分文件说明：**

```
main_web_classic_blue.tex           -> 编译模板v1(classic_blue)的源文件
main_web_casual_blue.tex            -> 编译模板v2(casual_blue)的源文件
moderncv.cls AND *.sty              -> moderncv定义的格式文件
picture.jpg                         -> 用来存放简历的照片
```

> 本项目除了classic、casual风格之外，还有oldstyle和banking风格，以及颜色还有橘黄色、绿色、红色、紫色、灰色和黑色。如果有偏好，需要进入编译源文件自行进行修改。

---

### 有照片的模板v3(自定义)

> 本项目是个人基于无照片的项目，加入照片。

本项目在`fmz_resume_web_custom`目录中，同样需要字体下载

> 项目说明同无照片项目相同，不再赘述。知识修改了其中的源编译文件和cls文件，加入了图片。

---

End

---
