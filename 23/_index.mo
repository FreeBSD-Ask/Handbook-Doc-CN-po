��    �      T  �   �      `     a     |     �  #   �  m  �  	   >     H  6   \  �   �  ?   Z  @   �  &   �  �     '   �     �  (     4   *  !   _     �  )   �     �     �  /   �  �   #  #  �     �  T   g  '  �  s  �  z   X  .   �       �     !     .   ?  7   n  (   �  (   �  �   �  @   �  h     C  �  �   �  �   ^  �   �  )   }  N   �  "   �  K     �   e  "   R  +   u  �   �  (   e   �   �      -!  :   B!  �   }!  !   #"  ?   E"     �"     �"  /   �"  9   �"  "   /#  �   R#  y   ,$     �$  �   �$     �%  6   �%  �   &  �  �&    (     �*  �   �*  �   ?+    �+  �   -  �   �-  Y   d.  .  �.  �   �/  @  �0  �   2    �2  �   �3  �  4  K   �5  �   ,6  �   �6  m   �7  �   !8  �   �8  �   s9  J  d:  �   �;  O   O<  (   �<  _   �<  �   (=  �  �=  j   �?     �?  (   @  �   E@     >A  $   QA  �   vA  M   �A  }   MB  B   �B  
   C     C  D   7C  �  |C  8   
E  ]   CE  �   �E  {   LF  e   �F  �   .G  8   �G  4   �G     !H  5   4H  K   jH     �H  9   �H  @   I  �   NI  7  #J  /  [O  �   �P  $  Q     9R     TR     pR  #   �R  m  �R  	   T      T  6   4T  �   kT  B   1U  ?   tU     �U  �   �U  *   xV     �V  $   �V  1   �V     W     ,W  !   <W     ^W     ~W  /   �W  �   �W  .  \X  �   �Y  a   Z  6  oZ  `  �[  k   ]  /   s]     �]  �   �]  $   �^  &   �^  *   �^  *   _  .   H_  �   w_  L   N`  x   �`  2  a  �   Gb  |   �b  s   Rc     �c  3   �c  "   d  K   9d  �   �d  #   [e  !   e  �   �e  (   Uf  �   ~f     g  2   g  �   Og     �g  ?   h     Zh     zh  -   �h  8   �h     �h  �   i  r   �i  "   ]j  �   �j     rk  3   �k  �   �k  i  �l  �  �m     �o  �   �o  �   tp  �   =q  �   r  �   �r  f   is    �s  �   �t    �u  `   �v  �   �v  z   �w  �  bx  9   z  �   Sz  �   �z  g   ~{  �   �{  �   z|  �   4}  K  #~  �   o  N   �  !   [�  `   }�  �   ހ  �    t   D�     ��  '   Ճ  �   ��     ��  !     }   �  E   b�  c   ��  ?   �     L�  $   Z�  8   �  w  ��  8   0�  ]   i�  �   ǈ  {   x�  e   �  �   Z�  8   ߊ  4   �     M�  9   `�  K   ��     �  9   �  @   =�  �   ~�    N�    T�     m�     �   �       1   Q         [       d   }   ^       6   /      @   z         u   $   t       :   7          �      -      m   
   c   `   2   ,       >   ~   w      l           ]   s   =       W   *   Z   ?       �       j   +      X       i           �              y       9          E   q             K   5   Y       L       R   T   f          (   I          g       r   8       x   o   k   v   J      <   {   4   \       V          #       C       )   O   G   &                     %       ;       B   M   '       D   �      F   h   P             _         S   	       3      0   U   n       A      "       �   N       �              b               p   |   .          !   a       e   H    # adduser -class language
 # cap_mkdb /etc/login.conf
 # chpass user_name
 # pw useradd user_name -L language
 #Users who do not wish to use monetary units or time formats
#of Taiwan can manually change each variable
me:\
	:lang=zh_TW.Big5:\
	:setenv=LC_ALL=zh_TW.Big5,LC_COLLATE=zh_TW.Big5,LC_CTYPE=zh_TW.Big5,LC_MESSAGES=zh_TW.Big5,LC_MONETARY=zh_TW.Big5,LC_NUMERIC=zh_TW.Big5,LC_TIME=zh_TW.Big5:\
	:charset=big5:\
	:xmodifiers="@im=gcin": #Set gcin as the XIM Input Server
 % locale
 % locale -a | more
 /dev/ad0s2      /dos/c  msdos   rw,-Lru_RU.KOI8-R 0 0
 A complete article on Greek support in FreeBSD is available https://www.FreeBSD.org/doc/gr/articles/greek-language-support/[here], in Greek only, as part of the official FreeBSD Greek documentation. A complete listing of available locales can be found by typing: Additional Cyrillic fonts are available in the Ports Collection. Additional Language-Specific Resources Alternately, the superuser can configure all users of the system for localization.  The following variables in [.filename]#/etc/login.conf# are used to set the locale and MIME character set: Available Console from Ports Collection Available Input Methods Before reading this chapter, you should: Chapter 23. Localization - i18n/L10n Usage and Setup Common Language and Country Codes Console Setup Defined Terminal Types for Character Sets Enter login class: default []:
 Finding i18n Applications FontPath   "/usr/local/lib/X11/fonts/cyrillic"
 For Japanese, refer to http://www.jp.FreeBSD.org/[http://www.jp.FreeBSD.org/], and for Korean, refer to http://www.kr.FreeBSD.org/[http://www.kr.FreeBSD.org/]. For `grp:toggle` use kbd:[Right Alt], for `grp:ctrl_shift_toggle` use kbd:[Ctrl+Shift].  For `grp:caps_toggle` use kbd:[CapsLock]. The old kbd:[CapsLock] function is still available in LAT mode only using kbd:[Shift+CapsLock]. `grp:caps_toggle` does not work in Xorg for some unknown reason. For an end user, the `cap_mkdb` command will need to be run on their [.filename]#~/.login_conf# for any changes to take effect. For each `ttyv` entry in [.filename]#/etc/ttys#, use `cons25r` as the terminal type. For languages with wide or multibyte characters, install a console for that language from the FreeBSD Ports Collection.  The available ports are summarized in <<locale-console>>.  Once installed, refer to the port's [.filename]#pkg-message# or man pages for configuration and usage instructions. FreeBSD is a distributed project with users and contributors located all over the world.  As such, FreeBSD supports localization into many languages, allowing users to view, input, or process data in non-English languages.  One can choose from most of the major languages, including, but not limited to: Chinese, German, Japanese, Korean, French, Russian, and Vietnamese. FreeBSD supports localization into many languages, allowing users to view, input, or process data in non-English languages FreeBSD uses Xorg-compatible locale encodings. Greek Language Localization Here is an example of a user's [.filename]#~/.login_conf# that sets the variables for Traditional Chinese in BIG-5 encoding.  More variables are needed because some applications do not correctly respect locale variables for Chinese, Japanese, and Korean: How locale names are constructed. How to configure Xorg for different languages. How to configure the console for non-English languages. How to find i18n-compliant applications. How to set the locale for a login shell. However, the name of the configuration file and the syntax used differs for the `csh` shell.  These are the equivalent settings for [.filename]#~/.login#, [.filename]#/etc/csh.login#, or [.filename]#/usr/share/skel/dot.login#: If `pw` is used to add new users, specify the locale as follows: If all new users use the same language, set `defaultclass=_language_` in [.filename]#/etc/adduser.conf#. If moused is enabled in [.filename]#/etc/rc.conf#, additional configuration may be required.  By default, the mouse cursor of the man:syscons[4] driver occupies the `0xd0`-`0xd3` range in the character set.  If the language uses this range, move the cursor's range by adding the following line to [.filename]#/etc/rc.conf#: If the keyboard has "Windows(R)" keys, and some non-alphabetical keys are mapped incorrectly, add the following line to [.filename]#/etc/xorg.conf#: In addition to manually editing [.filename]#/etc/login.conf#, several utilities are available for setting the locale for newly created users. In addition to the user's shell configuration, these variables should also be set for specific application configuration and Xorg configuration. Japanese and Korean Language Localization Know how to crossref:ports[ports,install additional third-party applications]. LANG=de_DE.ISO8859-1; export LANG
 LANG=de_DE.ISO8859-1; export LANG
MM_CHARSET=ISO-8859-1; export MM_CHARSET
 Language specific character sets, such as ISO8859-1, ISO8859-15, KOI8-R, and CP437, are described in man:multibyte[3].  The active list of character sets can be found at the http://www.iana.org/assignments/character-sets[IANA Registry]. LanguageCode_CountryCode.Encoding
 Locale Configuration for Specific Languages Locale settings are configured either in a user's [.filename]#~/.login_conf# or in the startup file of the user's shell: [.filename]#~/.profile#, [.filename]#~/.bashrc#, or [.filename]#~/.cshrc#. Localization - i18n/L10n Usage and Setup Localization settings are based on three components: the language code, country code, and encoding.  Locale names are constructed from these parts as follows: Login Classes Method Make sure that `XkbDisable` is commented out in that file. Next, set the correct console terminal type in [.filename]#/etc/ttys# for all virtual terminal entries.  <<locale-charset>> summarizes the available terminal types.: Non-English FreeBSD Documentation Option "XkbLayout"   "us,ru"
Option "XkbOptions"  "grp:toggle"
 Option "XkbVariant" ",winkeys"
 Part III. System Administration Refer to man:mount_msdosfs[8] for more details. Refer to man:printcap[5] for a more detailed explanation. Russian Language (KOI8-R Encoding) See http://koi8.pp.ru/xwin.html[http://koi8.pp.ru/xwin.html] for more instructions on localizing Xorg applications.  For more general information about KOI8-R encoding, refer to http://koi8.pp.ru/[http://koi8.pp.ru/]. See man:login.conf[5] for more details about these variables.  Note that it already contains pre-defined _russian_ class. Setting Locale for Login Shell Several localized fonts are available for the console.  To see a listing of available fonts, type `ls /usr/share/syscons/fonts`.  To configure the console font, specify the _font_name_, without the [.filename]#.fnt# suffix, in [.filename]#/etc/rc.conf#: Shell Startup File Method So, the previous Latin-1 example would look like this: Some FreeBSD contributors have translated parts of the FreeBSD documentation to other languages.  They are available through links on the link:https://www.FreeBSD.org/[FreeBSD web site] or in [.filename]#/usr/share/doc#. Some applications can be compiled with the specific charset.  This is usually done in the port's [.filename]#Makefile# or by passing a value to configure.  Refer to the i18n documentation in the respective FreeBSD port's source for more information on how to determine the needed configure value or the port's [.filename]#Makefile# to determine which compile options to use when building the port. Some languages, such as Chinese or Japanese, cannot be represented using ASCII characters and require an extended language encoding using either wide or multibyte characters.  Examples of wide or multibyte encodings include EUC and Big5.  Older applications may mistake these encodings for control characters while newer applications usually recognize these characters.  Depending on the implementation, users may be required to compile an application with wide or multibyte character support, or to configure it correctly. Synopsis The FreeBSD-Taiwan Project has a Chinese HOWTO for FreeBSD at http://netlab.cse.yzu.edu.tw/\~statue/freebsd/zh-tut/[http://netlab.cse.yzu.edu.tw/~statue/freebsd/zh-tut/]. The Russian XKB keyboard may not work with non-localized applications.  Minimally localized applications should call a `XtSetLanguageProc (NULL, NULL, NULL);` function early in the program. The X Input Method (XIM) protocol is an Xorg standard for inputting non-English characters.  <<locale-xim>> summarizes the input method applications which are available in the FreeBSD Ports Collection.  Additional Fcitx and Uim applications are also available. The _LanguageCode_ and _CountryCode_ are used to determine the country and the specific language variation.  <<locale-lang-country>> provides some examples of __LanguageCode_CountryCode__: The `keychange` entry is usually needed to program function keys to match the selected terminal type because function key sequences cannot be defined in the keymap. The keymap and screenmap can be set by adding the following to [.filename]#/etc/rc.conf#: The link:https://www.FreeBSD.org/ports/[FreeBSD Ports Collection] contains many applications with built-in support for wide or multibyte characters for several languages.  Such applications include `i18n` in their names for easy identification.  However, they do not always support the language needed. The rest of this section describes the various methods for configuring the locale on a FreeBSD system.  The next section will discuss the considerations for finding and compiling applications with i18n support. The term internationalization has been shortened to i18n, which represents the number of letters between the first and the last letters of `internationalization`.  L10n uses the same naming scheme, but from `localization`.  The i18n/L10n methods, protocols, and applications allow users to use languages of their choice. This chapter discusses the internationalization and localization features of FreeBSD.  After reading this chapter, you will know: This first method is the recommended method as it assigns the required environment variables for locale name and MIME character sets for every possible shell.  This setup can either be performed by each user or it can be configured for all users by the superuser. This minimal example sets both variables for Latin-1 encoding in the [.filename]#.login_conf# of an individual user's home directory: This second method is not recommended as each shell that is used requires manual configuration, where each shell has a different configuration file and differing syntax.  As an example, to set the German language for the `sh` shell, these lines could be added to [.filename]#~/.profile# to set the shell for that user only.  These lines could also be added to [.filename]#/etc/profile# or [.filename]#/usr/share/skel/dot.profile# to set that shell for all users: This section lists some additional resources for configuring other locales. This section provides configuration examples for localizing a FreeBSD system for the Russian language.  It then provides some additional resources for localizing other languages. This section shows the specific settings needed to localize a FreeBSD system for the Russian language.  Refer to <<using-localization,Using Localization>> for a more complete description of each type of setting. To activate a Russian keyboard, add the following to the `"Keyboard"` section of [.filename]#/etc/xorg.conf#: To change the login class of an existing user, `chpass` can be used.  Invoke it as superuser and provide the username to edit as the argument. To complicate matters, the syntax needed to configure Xorg in [.filename]#~/.xinitrc# also depends upon the shell.  The first example is for the `sh` shell and the second is for the `csh` shell: To configure Russian fonts for Xorg, install the package:x11-fonts/xorg-fonts-cyrillic[] package.  Then, check the `"Files"` section in [.filename]#/etc/X11/xorg.conf#. The following line must be added _before_ any other `FontPath` entries: To configure printing, a special output filter is needed to convert from KOI8-R to CP866 since most printers with Russian characters come with hardware code page CP866.  FreeBSD includes a default filter for this purpose, [.filename]#/usr/libexec/lpr/ru/koi2alt#.  To use this filter, add this entry to [.filename]#/etc/printcap#: To configure support for Russian filenames in mounted MS-DOS(R) file systems, include `-L` and the locale name when adding an entry to [.filename]#/etc/fstab#: To configure the console, add the following lines to [.filename]#/etc/rc.conf#: To determine the current locale setting: To override this setting when creating a user, either input the required locale at this prompt: To see the list of available keymaps, type `ls /usr/share/syscons/keymaps`.  When specifying the _keymap_name_, do not include the [.filename]#.kbd# suffix.  To test keymaps without rebooting, use man:kbdmap[1]. To see the list of available screenmaps, type `ls /usr/share/syscons/scrnmaps`.  Do not include the [.filename]#.scm# suffix when specifying _screenmap_name_.  A screenmap with a corresponding mapped font is usually needed as a workaround for expanding bit 8 to bit 9 on a VGA adapter's font character matrix so that letters are moved out of the pseudographics area if the screen font uses a bit 8 column. To set this locale for the login shell, add the following lines to each user's [.filename]#~/.login_conf#: Traditional Chinese for Taiwan Two environment variables should be set: Two methods are available for making the needed variable assignments: the <<login-class,login class>> method, which is the recommended method, and the <<startup-file,startup file>> method.  The next two sections demonstrate how to use both methods. Using Localization Utilities Which Change Login Classes When using `adduser` to add new users, the default language can be pre-configured for all new users or specified for an individual user. When using `vipw` to add new users, specify the _language_ to set the locale: Whenever [.filename]#/etc/login.conf# is edited, remember to execute the following command to update the capability database: Where to find more information for configuring specific languages. Xorg Setup `LANG`, which sets the locale `MM_CHARSET`, which sets the MIME character set used by applications crossref:x11[x11,The X Window System] describes how to install and configure Xorg.  When configuring Xorg for localization, additional fonts and input methods are available from the FreeBSD Ports Collection.  Application specific i18n settings such as fonts and menus can be tuned in [.filename]#~/.Xresources# and should allow users to view their selected language in graphical application menus. font8x16=font_name
font8x14=font_name
font8x8=font_name
 german|German Users Accounts:\
	:charset=ISO-8859-1:\
	:lang=de_DE.ISO8859-1:\
	:tc=default:
 i18n applications are programmed using i18n kits under libraries.  These allow developers to write a simple file and translate displayed menus and texts to each language. keymap="ru.utf-8"
scrnmap="utf-82cp866"
font8x16="cp866b-8x16"
font8x14="cp866-8x14"
font8x8="cp866-8x8"
mousechar_start=3
 language_name|Account Type Description:\
	:charset=MIME_charset:\
	:lang=locale_name:\
	:tc=default:
 lp|Russian local line printer:\
	:sh:of=/usr/libexec/lpr/ru/koi2alt:\
	:lp=/dev/lpt0:sd=/var/spool/output/lpd:lf=/var/log/lpd-errs:
 me:My Account:\
	:charset=KOI8-R:\
	:lang=ru_RU.KOI8-R:
 me:\
	:charset=ISO-8859-1:\
	:lang=de_DE.ISO8859-1:
 mousechar_start=3
 or specify the locale to set when invoking `adduser`: scrnmap=screenmap_name
keymap=keymap_name
keychange="fkey_number sequence"
 setenv LANG de_DE.ISO8859-1
 setenv LANG de_DE.ISO8859-1
setenv MM_CHARSET ISO-8859-1
 user:password:1111:11:language:0:0:User Name:/home/user:/bin/sh
 | Character Set
| Terminal Type

|ISO8859-1 or ISO8859-15
|`cons25l1`

|ISO8859-2
|`cons25l2`

|ISO8859-7
|`cons25l7`

|KOI8-R
|`cons25r`

|KOI8-U
|`cons25u`

|CP437 (VGA default)
|`cons25`

|US-ASCII
|`cons25w`
 | Language
| Input Method

|Chinese
|package:chinese/gcin[]

|Chinese
|package:chinese/ibus-chewing[]

|Chinese
|package:chinese/ibus-pinyin[]

|Chinese
|package:chinese/oxim[]

|Chinese
|package:chinese/scim-fcitx[]

|Chinese
|package:chinese/scim-pinyin[]

|Chinese
|package:chinese/scim-tables[]

|Japanese
|package:japanese/ibus-anthy[]

|Japanese
|package:japanese/ibus-mozc[]

|Japanese
|package:japanese/ibus-skk[]

|Japanese
|package:japanese/im-ja[]

|Japanese
|package:japanese/kinput2[]

|Japanese
|package:japanese/scim-anthy[]

|Japanese
|package:japanese/scim-canna[]

|Japanese
|package:japanese/scim-honoka[]

|Japanese
|package:japanese/scim-honoka-plugin-romkan[]

|Japanese
|package:japanese/scim-honoka-plugin-wnn[]

|Japanese
|package:japanese/scim-prime[]

|Japanese
|package:japanese/scim-skk[]

|Japanese
|package:japanese/scim-tables[]

|Japanese
|package:japanese/scim-tomoe[]

|Japanese
|package:japanese/scim-uim[]

|Japanese
|package:japanese/skkinput[]

|Japanese
|package:japanese/skkinput3[]

|Japanese
|package:japanese/uim-anthy[]

|Korean
|package:korean/ibus-hangul[]

|Korean
|package:korean/imhangul[]

|Korean
|package:korean/nabi[]

|Korean
|package:korean/scim-hangul[]

|Korean
|package:korean/scim-tables[]

|Vietnamese
|package:vietnamese/xvnkb[]

|Vietnamese
|package:vietnamese/x-unikey[]
 | Language
| Port Location

|Traditional Chinese (BIG-5)
|package:chinese/big5con[]

|Chinese/Japanese/Korean
|package:chinese/cce[]

|Chinese/Japanese/Korean
|package:chinese/zhcon[]

|Japanese
|package:chinese/kon2[]

|Japanese
|package:japanese/kon2-14dot[]

|Japanese
|package:japanese/kon2-16dot[]
 | LanguageCode_Country Code
| Description

|en_US
|English, United States

|ru_RU
|Russian, Russia

|zh_TW
|Traditional Chinese, Taiwan
 Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-04-05 22:08+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
 # adduser -class language
 # cap_mkdb /etc/login.conf
 # chpass user_name
 # pw useradd user_name -L language
 #Users who do not wish to use monetary units or time formats
#of Taiwan can manually change each variable
me:\
	:lang=zh_TW.Big5:\
	:setenv=LC_ALL=zh_TW.Big5,LC_COLLATE=zh_TW.Big5,LC_CTYPE=zh_TW.Big5,LC_MESSAGES=zh_TW.Big5,LC_MONETARY=zh_TW.Big5,LC_NUMERIC=zh_TW.Big5,LC_TIME=zh_TW.Big5:\
	:charset=big5:\
	:xmodifiers="@im=gcin": #Set gcin as the XIM Input Server
 % locale
 % locale -a | more
 /dev/ad0s2      /dos/c  msdos   rw,-Lru_RU.KOI8-R 0 0
 这里有一篇关于 https://www.FreeBSD.org/doc/gr/articles/greek-language-support/[here] 希腊语支持的完整文章，只有希腊语版本，是 FreeBSD 希腊语官方文档的一部分。 完整的可用语言列表可以通过输入以下内容找到。 其他的西里尔字体可以在 Ports Collection 中找到。 其他特定语言的资源 另外，超级用户可以对系统的所有用户进行本地化配置。在 [.filename]#/etc/login.conf# 中的以下变量用于设置 locale 和 MIME 字符集： 来自 Ports Collection 的可用控制台 可用的输入法 在阅读本章之前，你应该： 第22章 本地化 - i18n/L10n 的使用和设置 常见的语言和国家代码 控制台设置 为字符集定义的终端类型 Enter login class: default []:
 寻找 i18n 应用程序 FontPath   "/usr/local/lib/X11/fonts/cyrillic"
 日语请参考 http://www.jp.FreeBSD.org/[http://www.jp.FreeBSD.org/] ，韩语请参考 http://www.kr.FreeBSD.org/[http://www.kr.FreeBSD.org/] 。 对于 `grp:toggle` 使用 kbd:[Right Alt]，对于 `grp:ctrl_shift_toggle` 使 kbd:[Ctrl+Shift]。对于 `grp:caps_toggle` 使用 kbd:[CapsLock]。旧的 kbd:[CapsLock] 功能在 LAT 模式下仍然可用，只能使用 kbd:[Shift+CapsLock]。 `grp:caps_toggle` 在 Xorg 中不工作，原因不明。 对于终端用户来说，`cap_mkdb` 命令需要在他们的 [.filename]#~/.login_conf# 上运行，以使任何改变生效。 对于 [.filename]#/etc/ttys# 中的每个 `ttyv` 条目，使用 `cons25r` 作为终端类型。 对于使用宽字符或多字节字符的语言，应从 FreeBSD Ports Collection 中安装适合该语言的控制台。可用的端口在 Ports Collection 的 Available Console 中进行了总结。安装完毕后，请参考 port 的 [.filename]#pkg-message# 或 man 页面以了解配置和使用说明。 FreeBSD 是一个用户以及贡献者遍布全球的软件项目。因此，FreeBSD 支持多种语言的本地化，允许用户用非英语的语言来查看、输入或处理数据。人们可以从大多数主要的语言中进行选择，这里面包括但不限于以下语言：中文、德语、日语、韩语、法语、俄语和越南语。 FreeBSD 支持多种语言的本地化，允许用户用非英语的语言来查看、输入或处理数据 FreeBSD 使用与 Xorg 兼容的地区编码。 希腊语本地化 下面是一个用户的 [.filename]#~/.login_conf# 的例子，它为 BIG-5 编码的繁体中文设置了变量。因为有些应用程序不能正确地尊重中文、日文和韩文的地域变量，所以需要设置更多的变量： 本地化名称是如何构建的。 如何为不同的语言配置 Xorg。 如何为非英语语言配置控制台。 如何找到符合 i18n 的应用程序。 如何为登录的 shell 设置区域设置。 然而，对于 `csh` shell 来说，配置文件的名称和使用的语法是不同的。这些是[.filename]#~/.login#、 [.filename]#/etc/csh.login# 或 [.filename]#/usr/share/skel/dot.login# 的同等设置： 如果使用 `pw` 来添加新的用户，请按以下方式指定 locale： 如果所有新用户都使用相同的语言，在 [.filename]#/etc/adduser.conf# 中设置`defaultclass=_language_`。 如果在 [.filename]#/etc/rc.conf# 中启用了 moused，可能需要额外的配置。默认情况下，man:syscons[4] 驱动的鼠标光标在字符集中占据 `0xd0` - `0xd3` 的范围。如果语言使用这个范围，请在 [.filename]#/etc/rc.conf# 中添加以下一行来移动光标的范围： 如果键盘有“Windows(R)”键，并且一些非字母键被错误地映射，请在 [.filename]#/etc/xorg.conf# 中添加以下一行： 除了手动编辑 [.filename]#/etc/login.conf# 之外，还有几个工具可以用来为新创建的用户设置 locale。 除了用户的 shell 配置之外，这些变量还应该为特定的应用程序配置和 Xorg 配置而设置。 日语和韩语的本地化 知道如何安装额外的第三方应用程序。 LANG=de_DE.ISO8859-1; export LANG
 LANG=de_DE.ISO8859-1; export LANG
MM_CHARSET=ISO-8859-1; export MM_CHARSET
 特定语言的字符集，如 ISO8859-1、ISO8859-15、KOI8-R 和 CP437，在 man:multibyte[3] 中描述。有效的字符集列表可以在 http://www.iana.org/assignments/character-sets[IANA Registry] 找到。 LanguageCode_CountryCode.Encoding 
 针对特定语言的本地配置 地区设置是在用户的 [.filename]#~/.login_conf# 或用户 shell 的启动文件中配置的：[.filename]#~/.profile#、 [.filename]#~/.bashrc# 或 [.filename]#~/.cshrc#。 本地化 - i18n/L10n 的使用和设置 本地化设置主要基于三个部分：语言代码、国家代码和编码。本地化名称是由这些部分构成的，如下所示： 登录类方法 确保 `XkbDisable` 在该文件中被注释掉。 接下来，在 [.filename]#/etc/ttys# 中为所有虚拟终端条目设置正确的控制台终端类型。为字符集定义的终端类型总结了可用的终端类型。 非英语的 FreeBSD 文档 Option "XkbLayout"   "us,ru"
Option "XkbOptions"  "grp:toggle"
 Option "XkbVariant" ",winkeys"
 第三部分 系统管理 更多细节请参考 man:mount_msdosfs[8]。 请参考 man:printcap[5] 以获得更详细的解释。 俄语 (KOI8-R 编码) 关于 Xorg 应用程序本地化的更多说明，请参见 http://koi8.pp.ru/xwin.html[http://koi8.pp.ru/xwin.html]。更多关于 KOI8-R 编码的一般信息，请参考 http://koi8.pp.ru/[http://koi8.pp.ru/]。 关于这些变量的更多细节，见 man:login.conf[5]。注意，它已经包含了预先定义的俄语类。 为登录 shell 设置地区设置 有几种本地化的字体可用于控制台。要查看可用字体的列表，请输入 `ls /usr/share/syscons/fonts`。要配置控制台字体，请在 [.filename]#/etc/rc.conf# 中指定不带 [.filename]#.fnt# 后缀的 _font_name_： shell 启动文件方法 因此，之前的 Latin-1 例子会是这样的： 一些 FreeBSD 的贡献者已经将 FreeBSD 的部分文档翻译成了其他语言。它们可以通过 link:https://www.FreeBSD.org/[FreeBSD web site] 上的链接或 [.filename]#/usr/share/doc# 获得。 一些应用程序可以用特定的字符集进行编译。这通常是在 port 的 [.filename]#Makefile# 中完成的，或通过向 configure 传递一个值。关于如何确定所需的 configure 值，或在 port 的 [.filename]#Makefile# 中确定在构建 port 时应使用哪些编译选项，请参考相应 FreeBSD port 源代码中的 i18n 文档。 有些语言，如中文或日文，不能用 ASCII 字符表示，需要用宽字符或多字节字符进行扩展语言编码。宽字符或多字节编码的例子包括 EUC 和 Big5。旧的应用程序可能会误认为这些编码是控制字符，而新的应用程序通常会识别这些字符。根据不同的实现，用户可能需要编译一个支持宽字符或多字节字符的应用程序，或者对其进行正确的配置。 概述 FreeBSD-Taiwan Project 在 http://netlab.cse.yzu.edu.tw/\~statue/freebsd/zh-tut/[http://netlab.cse.yzu.edu.tw/~statue/freebsd/zh-tut/] 网站上提供了 FreeBSD 的中文 HOWTO。 提示 俄罗斯的 XKB 键盘可能无法在非本地化的应用程序中使用。最低限度的本地化应用程序应该在程序的早期调用 `XtSetLanguageProc (NULL, NULL, NULL);` 函数。 X 输入法（XIM）协议是一个 Xorg 标准，用于输入非英语字符。可用的输入法总结了 FreeBSD Ports Collection 中可用的输入法应用程序。另外还有一些 Fcitx 和 Uim 应用。 语言代码（LanguageCode）和国家代码（CountryCode）用于确定国家和具体的语言变化。通用语言和国家代码提供了一些语言代码国家代码的例子。 由于功能键序列不能在键盘地图中定义，因此通常需要使用 `keychange` 条目来对功能键进行编程以匹配所选的终端类型。 可以通过在 [.filename]#/etc/rc.conf# 中添加以下内容来设置键盘映射和屏幕映射： link:https://www.FreeBSD.org/ports/[FreeBSD Ports Collection] 包含了许多内置支持多种语言的宽字符或多字节字符的应用程序。这样的应用程序在它们的名字中包含了 `i18n`，以便于识别。然而，它们并不总是支持所需的语言。 本节的其余部分将描述在 FreeBSD 系统上配置 locale 的各种方法。下一节将讨论寻找和编译支持 i18n 的应用程序的注意事项。 国际化一词被简称为 i18n，它代表了 `国际化` 的第一个字母和最后一个字母之间的数量。L10n 这个简称也使用相同的命名方案，但来自 `本地化`。i18n/L10n 方法、协议和应用程序允许用户使用他们选择的语言。 这一章讨论了 FreeBSD 的国际化和本地化特性。读完这一章后，你将知道： 这第一种方法是推荐的方法，因为它为每个可能的 shell 分配了所需的环境变量，如 locale name 和 MIME 字符集。这个设置可以由每个用户执行，也可以由超级用户为所有用户配置。 这个最小的例子在单个用户的主目录的 [.filename]#.login_conf# 中为 Latin-1 编码设置了两个变量： 这第二种方法不被推荐，因为每个使用的 shell 都需要手动配置，每个 shell 都有不同的配置文件和不同的语法。举个例子，为了给 `sh` shell 设置德语，可以在 [.filename]#~/.profile# 中加入这些行，以设置仅适用于该用户的 shell。这些行也可以添加到 [.filename]#/etc/profile# 或 [.filename]#/usr/share/skel/dot.profile# 中，以便为所有用户设置该 shell： 本节列出了一些配置其他语言的额外资源。 这一节提供了将 FreeBSD 系统本地化为俄语的配置例子。然后，它还提供了一些用于本地化其他语言的额外资源。 这一节介绍了对 FreeBSD 系统进行俄语本地化所需的具体设置。关于每一种设置的更完整描述，请参考使用本地化。 要激活俄语键盘，请在 [.filename]#/etc/xorg.conf# 的 `"Keyboard"` 部分添加以下内容： 要改变一个现有用户的登录类别，可以使用 `chpass`。以超级用户身份调用它，并提供要编辑的用户名作为参数： 使问题复杂化的是，在 [.filename]#~/.xinitrc# 中配置 Xorg 所需的语法也取决于 shell。第一个例子是针对 `sh` shell 的，第二个是针对 `csh` shell 的： 要为 Xorg 配置俄罗斯字体，请安装 package:x11-fonts/xorg-fonts-cyrillic[] 软件包。然后，检查 [.filename]#/etc/X11/xorg.conf# 中的 `"Files"` 部分。必须在任何其他 `FontPath` 条目之前添加以下一行： 要配置打印，需要一个特殊的输出过滤器来将 KOI8-R 转换为 CP866，因为大多数带有俄文字符的打印机都带有硬件代码页 CP866。FreeBSD 包括一个默认的过滤器，[.filename]#/usr/libexec/lpr/ru/koi2alt#。要使用这个过滤器，请在 [.filename]#/etc/printcap# 中添加这个条目: 要配置对安装的 MS-DOS(R) 文件系统中的俄文文件名的支持，在向 [.filename]#/etc/fstab# 添加条目时包括  `-L` 和 locale 名称： 为了配置控制台，在 [.filename]#/etc/rc.conf# 中添加以下几行： 要确定当前的地区设置。 要在创建用户时覆盖这个设置，可以在这个提示下输入所需的地区语言： 要查看可用的键盘映射列表，请输入 `ls /usr/share/syscons/keymaps`。当指定 _keymap_name_ 时，不要包括 [.filename]#.kbd# 后缀。要在不重启的情况下测试密钥映射，请使用 man:kbdmap[1]。 要查看可用的屏幕映射列表，输入 `ls /usr/share/syscons/scrnmaps` 。在指定 _screenmap_name_ 时，不要包括 [.filename]#.scm# 后缀。通常需要一个带有相应映射字体的屏幕地图，作为 VGA 适配器字体字符矩阵上的第 8 位扩展到第 9 位的变通方法，这样，如果屏幕字体使用第 8 位列，字母就会被移出伪图区。 要为登录的 shell 设置这种语言，请在每个用户的 [.filename]#~/.login_conf# 中添加以下几行： 中国台湾的繁体中文 有两个环境变量应该被设置： 有两种方法可用于进行所需的变量分配：登录类方法，这是推荐的方法，以及启动文件方法。接下来的两节将演示如何使用这两种方法。 使用本地化 改变登录类别的实用程序 当使用 `adduser` 添加新用户时，默认语言可以为所有新用户预先配置，也可以为单个用户指定。 当使用 `vipw` 添加新用户时，指定语言来设置 locale： 每当编辑 [.filename]#/etc/login.conf# 时，记得执行以下命令来更新能力数据库。 在哪里可以找到更多关于配置特定语言的信息。 Xorg的设置 `LANG`，用于设置语言环境。 `MM_CHARSET`,设置应用程序使用的MIME字符集。 crossref:x11[x11,X Window System] 描述了如何安装和配置 Xorg。在为本地化配置 Xorg 时，额外的字体和输入法可以从 FreeBSD Ports Collection 中获得。应用程序特定的 i18n 设置，如字体和菜单，可以在 [.filename]#~/.Xresources# 中进行调整，并应允许用户在图形化的应用程序菜单中查看他们选择的语言。 font8x16=font_name
font8x14=font_name
font8x8=font_name
 german|German Users Accounts:\
	:charset=ISO-8859-1:\
	:lang=de_DE.ISO8859-1:\
	:tc=default:
 i18n 应用程序是使用库下的 i18n 工具包编程的。这些程序允许开发人员编写一个简单的文件，并将显示的菜单和文本翻译成各种语言。 keymap="ru.utf-8"
scrnmap="utf-82cp866"
font8x16="cp866b-8x16"
font8x14="cp866-8x14"
font8x8="cp866-8x8"
mousechar_start=3
 language_name|Account Type Description:\
	:charset=MIME_charset:\
	:lang=locale_name:\
	:tc=default:
 lp|Russian local line printer:\
	:sh:of=/usr/libexec/lpr/ru/koi2alt:\
	:lp=/dev/lpt0:sd=/var/spool/output/lpd:lf=/var/log/lpd-errs:
 me:My Account:\
	:charset=KOI8-R:\
	:lang=ru_RU.KOI8-R:
 me:\
	:charset=ISO-8859-1:\
	:lang=de_DE.ISO8859-1:
 mousechar_start=3
 或者在调用 `adduser` 时指定要设置的 locale： scrnmap=screenmap_name
keymap=keymap_name
keychange="fkey_number sequence"
 setenv LANG de_DE.ISO8859-1
 setenv LANG de_DE.ISO8859-1
setenv MM_CHARSET ISO-8859-1
 user:password:1111:11:language:0:0:User Name:/home/user:/bin/sh
 | 字符集
| 终端类型

|ISO8859-1 or ISO8859-15
|`cons25l1`

|ISO8859-2
|`cons25l2`

|ISO8859-7
|`cons25l7`

|KOI8-R
|`cons25r`

|KOI8-U
|`cons25u`

|CP437 (VGA default)
|`cons25`

|US-ASCII
|`cons25w`
 | 语言
| 输入法

|中文
|package:chinese/gcin[]

|中文
|package:chinese/ibus-chewing[]

|中文
|package:chinese/ibus-pinyin[]

|中文
|package:chinese/oxim[]

|中文
|package:chinese/scim-fcitx[]

|中文
|package:chinese/scim-pinyin[]

|中文
|package:chinese/scim-tables[]

|日语
|package:japanese/ibus-anthy[]

|日语
|package:japanese/ibus-mozc[]

|日语
|package:japanese/ibus-skk[]

|日语
|package:japanese/im-ja[]

|日语
|package:japanese/kinput2[]

|日语
|package:japanese/scim-anthy[]

|日语
|package:japanese/scim-canna[]

|日语
|package:japanese/scim-honoka[]

|日语
|package:japanese/scim-honoka-plugin-romkan[]

|日语
|package:japanese/scim-honoka-plugin-wnn[]

|日语
|package:japanese/scim-prime[]

|日语
|package:japanese/scim-skk[]

|日语
|package:japanese/scim-tables[]

|日语
|package:japanese/scim-tomoe[]

|日语
|package:japanese/scim-uim[]

|日语
|package:japanese/skkinput[]

|日语
|package:japanese/skkinput3[]

|日语
|package:japanese/uim-anthy[]

|韩语
|package:korean/ibus-hangul[]

|韩语
|package:korean/imhangul[]

|韩语
|package:korean/nabi[]

|韩语
|package:korean/scim-hangul[]

|韩语
|package:korean/scim-tables[]

|越南语
|package:vietnamese/xvnkb[]

|越南语
|package:vietnamese/x-unikey[]
 | 语言
| Port 位置

|繁体中文 (BIG-5)
|package:chinese/big5con[]

|中文/日语/韩语
|package:chinese/cce[]

|中文/日语/韩语
|package:chinese/zhcon[]

|日语
|package:chinese/kon2[]

|日语
|package:japanese/kon2-14dot[]

|日语
|package:japanese/kon2-16dot[]
 | 语言代码_国家代码
| 指代

|en_US
|英语，美国

|ru_RU
|俄语，俄罗斯

|zh_TW
|繁体中文，中国台湾
 