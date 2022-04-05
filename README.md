# Handbook 中文手册 PO 文档转换项目

## 翻译指南

<https://docs.qq.com/doc/DSUtxYmVwU29EdGVn>

## 基本提取流程

翻译方法：下载 `poedit`（全平台开源软件）<https://poedit.net/download>，`po` 文件才是主要文件，`mo` 文件是日志文件。

> 本项目旨在将我们的已有的[中文翻译](https://handbook.freebsdcn.org)提交到上游（FreeBSD 文档项目）。

## 进度

- [x] 前言
- [x] 1
- [x] 2
- [x] 3
- [x] 4 
- [ ] 5 正在进行中
- [x] 6
- [x] 7
- [x] 8 
- [ ] 9
- [x] 10 
- [x] 11
- [x] 12 
- [x] 13
- [ ] 14
- [ ] 15
- [ ] 16
- [ ] 17
- [x] 18
- [x] 19
- [ ] 20
- [x] 21
- [x] 22
- [x] 23
- [ ] 24 正在进行中
- [ ] 25
- [ ] 26
- [ ] 27
- [ ] 28
- [ ] 29
- [ ] 30
- [ ] 31
- [ ] 32
- [x] 附录 A
- [x] 附录 B
- [x] 附录 C
- [x] 附录 D
- [x] 术语表

---

> 以下内容是为了测试翻译效果而进行的编译验证，会生成对应文档的 PDF 文件。
>
> **注意：编译出来有乱码和方块是正常的，不影响翻译。该问题是字体问题。**

## 安装软件
```
# pkg install textproc/po4a poedit git docproj
# git clone https://github.com/freebsd/freebsd-doc
```
> git代理设置（可能会用到）

```
# git config --global http.proxy 'http://192.168.184.1:7890'
# git config --global https.proxy 'http://192.168.184.1:7890'
```

## 从英文提取 po 文档来翻译

```
# cd freebsd-doc/documentation/
# rm -rf content/zh-cn/books/handbook/*   #因为中文翻译已经整体过时，甚至目录结构都对不上了，必须删除从 0 开始
# cp content/en/books/handbook/* content/zh-cn/books/handbook/
```
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
# rm content/zh-cn/books/handbook/_index.*
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

## 前言
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

## 第1章
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
  
## 第2章 

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

## 第3章

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

## 第4章

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

## 第5章 

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

## 第6章 

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
## 第7章

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
## 第8章

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
## 第9章

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
## 第10章

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
## 第11章

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

## 第12章

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
   
## 第13章

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
  
## 第14章

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

## 第15章

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

## 第16章

``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/mac/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/mac/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/mac/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/mac/_index.po" \
  --localized "content/zh-cn/books/handbook/mac/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 

## 第17章

``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/audit/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/audit/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/audit/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/audit/_index.po" \
  --localized "content/zh-cn/books/handbook/audit/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 

## 第18章

``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/disks/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/disks/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/disks/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/disks/_index.po" \
  --localized "content/zh-cn/books/handbook/disks/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 

## 第19章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/geom/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/geom/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/geom/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/geom/_index.po" \
  --localized "content/zh-cn/books/handbook/geom/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 
## 第20章

``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/zfs/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/zfs/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/zfs/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/zfs/_index.po" \
  --localized "content/zh-cn/books/handbook/zfs/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  ``` 
## 第21章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/filesystems/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/filesystems/_index.po"
``` 
``` 
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/filesystems/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/filesystems/_index.po" \
  --localized "content/zh-cn/books/handbook/filesystems/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 
## 第22章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/virtualization/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/virtualization/_index.po"
```   
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/virtualization/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/virtualization/_index.po" \
  --localized "content/zh-cn/books/handbook/virtualization/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 

## 第23章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/l10n/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/l10n/_index.po"
```    
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/l10n/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/l10n/_index.po" \
  --localized "content/zh-cn/books/handbook/l10n/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  
## 第24章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/cutting-edge/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/cutting-edge/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/cutting-edge/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/cutting-edge/_index.po" \
  --localized "content/zh-cn/books/handbook/cutting-edge/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   
## 第25章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/dtrace/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/dtrace/_index.po"
```   
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/dtrace/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/dtrace/_index.po" \
  --localized "content/zh-cn/books/handbook/dtrace/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  
```   
## 第26章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/usb-device-mode/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/usb-device-mode/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/usb-device-mode/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/usb-device-mode/_index.po" \
  --localized "content/zh-cn/books/handbook/usb-device-mode/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   
## 第27章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/serialcomms/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/serialcomms/_index.po"
```   
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/serialcomms/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/serialcomms/_index.po" \
  --localized "content/zh-cn/books/handbook/serialcomms/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   

## 第28章

``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/ppp-and-slip/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/ppp-and-slip/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/ppp-and-slip/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/ppp-and-slip/_index.po" \
  --localized "content/zh-cn/books/handbook/ppp-and-slip/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   
  
## 第29章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/mail/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/mail/_index.po"
```    
 ```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/mail/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/mail/_index.po" \
  --localized "content/zh-cn/books/handbook/mail/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   
## 第30章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/network-servers/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/network-servers/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/network-servers/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/network-servers/_index.po" \
  --localized "content/zh-cn/books/handbook/network-servers/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```   
## 第31章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/firewalls/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/firewalls/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/firewalls/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/firewalls/_index.po" \
  --localized "content/zh-cn/books/handbook/firewalls/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  
## 第32章
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/advanced-networking/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/advanced-networking/_index.po"
```    
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/advanced-networking/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/advanced-networking/_index.po" \
  --localized "content/zh-cn/books/handbook/advanced-networking/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  
## 附录 A
``` 
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/mirrors/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/mirrors/_index.po"
```    
```    
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/mirrors/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/mirrors/_index.po" \
  --localized "content/zh-cn/books/handbook/mirrors/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 
## 附录 B
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/bibliography/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/bibliography/_index.po"
```   
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/bibliography/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/bibliography/_index.po" \
  --localized "content/zh-cn/books/handbook/bibliography/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
``` 
## 附录 C
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/eresources/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/eresources/_index.po"
```  
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/eresources/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/eresources/_index.po" \
  --localized "content/zh-cn/books/handbook/eresources/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  
## 附录 D
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/pgpkeys/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/pgpkeys/_index.po"
```   
```   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/pgpkeys/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/pgpkeys/_index.po" \
  --localized "content/zh-cn/books/handbook/pgpkeys/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```
## 术语表
```
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/zh-cn/books/handbook/glossary.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/books/handbook/glossary.po"
   
```
```
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/books/handbook/glossary.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/glossary.po" \
  --localized "content/zh-cn/books/handbook/glossary.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
```  
