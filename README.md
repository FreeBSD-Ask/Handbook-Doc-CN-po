# Handbook-Doc-CN-po

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
