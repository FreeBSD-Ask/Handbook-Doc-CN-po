# Handbook-Doc-CN-po

基本提取流程

翻译方法，下载 `poedit`（全平台开源软件），`po`文件才是主要文件，`mo`文件是日志文件。
>
>本项目旨在将我们的已有的[中文翻译](https://handbook.freebsdcn.org)提交到上游（FreeBSD 文档项目）。
>
>**注意：编译出来有乱码和方块是正常的，不影响翻译。该问题是字体问题。**

## 安装软件
```
#pkg install textproc/po4a poedit git docproj
#git clone https://github.com/freebsd/freebsd-doc
```
## git代理设置
```
#git config --global http.proxy 'socks5://192.168.184.1:7890'
#git config --global https.proxy 'socks5://192.168.184.1:7890'
```
```
#cd freebsd-doc/documentation/
#rm -rf content/zh-cn/books/handbook/*   #因为中文翻译已经整体过时，甚至目录结构都对不上了，必须删除从 0 开始
#cp content/en/books/handbook/* content/zh-cn/books/handbook/
```
## 从英文提取 po 文档来翻译
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/books/handbook/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/_index.po"
```
## 删除旧的翻译文件
```
#rm content/zh-cn/books/handbook/_index.adoc
```

## 还原翻译为 adoc 格式
```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/_index.po" \
  --localized "content/zh-cn/books/handbook/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  

## 构建测试：

```
make DOC_LANG="zh-cn" pdf-books
```

# 前言
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/preface/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/preface/_index.po"
```
```
   po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/preface/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/preface/_index.po" \
  --localized "content/zh-cn/books/handbook/preface/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```

# 第一章
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/introduction/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/introduction/_index.po"

```
```   
   po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/introduction/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/introduction/_index.po" \
  --localized "content/zh-cn/books/handbook/introduction/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```
  
# 第二章 

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/bsdinstall/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/bsdinstall/_index.po"
 ```  
 ```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/bsdinstall/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/bsdinstall/_index.po" \
  --localized "content/zh-cn/books/handbook/bsdinstall/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  
```
# 第三章


```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/basics/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/basics/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/basics/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/basics/_index.po" \
  --localized "content/zh-cn/books/handbook/basics/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```

# 第四章


```

po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/ports/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/ports/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/ports/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/ports/_index.po" \
  --localized "content/zh-cn/books/handbook/ports/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```

# 第五章 


```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/x11/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/x11/_index.po"
   

```

```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/x11/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/x11/_index.po" \
  --localized "content/zh-cn/books/handbook/x11/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```
# 第六章 

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/desktop/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/desktop/_index.po"
   
```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/desktop/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/desktop/_index.po" \
  --localized "content/zh-cn/books/handbook/desktop/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  
```
# 第七章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/multimedia/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/multimedia/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/multimedia/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/multimedia/_index.po" \
  --localized "content/zh-cn/books/handbook/multimedia/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```
# 第八章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/kernelconfig/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/kernelconfig/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/kernelconfig/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/kernelconfig/_index.po" \
  --localized "content/zh-cn/books/handbook/kernelconfig/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
# 第九章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/printing/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/printing/_index.po"
   

```

```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/printing/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/printing/_index.po" \
  --localized "content/zh-cn/books/handbook/printing/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
# 第十章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/linuxemu/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/linuxemu/_index.po"

```   

```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/linuxemu/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/linuxemu/_index.po" \
  --localized "content/zh-cn/books/handbook/linuxemu/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
# 第十一章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/wine/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/wine/_index.po"

``` 

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/wine/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/wine/_index.po" \
  --localized "content/zh-cn/books/handbook/wine/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
# 第12章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/config/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/config/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/config/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/config/_index.po" \
  --localized "content/zh-cn/books/handbook/config/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
   
# 第13章


```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/boot/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/boot/_index.po"
 
```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/boot/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/boot/_index.po" \
  --localized "content/zh-cn/books/handbook/boot/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```  
  
# 第14章


```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/security/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/security/_index.po"

```

```
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/security/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/security/_index.po" \
  --localized "content/zh-cn/books/handbook/security/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0

```
# 第15章

```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/jails/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/jails/_index.po"
   

```

```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/jails/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/jails/_index.po" \
  --localized "content/zh-cn/books/handbook/jails/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  
```
