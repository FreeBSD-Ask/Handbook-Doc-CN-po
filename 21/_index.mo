��          �   %   �      @  "   A  *   d  h   �  (   �     !  F   @  �  �  �   u  ]   #  J   �  <  �  1   	  �   ;     �     	      	     @	  9   I	  �   �	  =   �
  �   �
  >   z  ,   �     �  $  �  "     $   A  R   f  $   �     �  =   �  �  :  �   1  a   �  ?   I  0  �  *   �  �   �     �     �     �     �  <   �  �     3   �  �   $  <   �  *        G                      
                                                                   	                                     # mount -t ext2fs /dev/ad1s1 /mnt
 After reading this chapter, you will know: Be familiar with the basics of crossref:kernelconfig[kernelconfig,kernel configuration and compilation]. Before reading this chapter, you should: Chapter 21. Other File Systems Feel comfortable crossref:ports[ports,installing software] in FreeBSD. File systems are an integral part of any operating system.  They allow users to upload and store files, provide access to data, and make hard drives useful.  Different operating systems differ in their native file system.  Traditionally, the native FreeBSD file system has been the Unix File System UFS which has been modernized as UFS2.  Since FreeBSD 7.0, the Z File System (ZFS) is also available as a native file system.  See crossref:zfs[zfs,The Z File System (ZFS)] for more information. FreeBSD provides built-in support for several Linux(R) file systems.  This section demonstrates how to load support for and how to mount the supported Linux(R) file systems. Have some familiarity with crossref:disks[disks,disks], storage, and device names in FreeBSD. How to enable, configure, access, and make use of non-native file systems. In addition to its native file systems, FreeBSD supports a multitude of other file systems so that data from other operating systems can be accessed locally, such as data stored on locally attached USB storage devices, flash drives, and hard disks.  This includes support for the Linux(R) Extended File System (EXT). Journalling and encryption are not supported yet. Kernel support for ext2 file systems has been available since FreeBSD 2.2.  The man:ext2fs[5] driver allows the FreeBSD kernel to both read and write to ext2, ext3, and ext4 file systems. Linux(R) File Systems Other File Systems Part III. System Administration Synopsis The difference between native and supported file systems. There are different levels of FreeBSD support for the various file systems.  Some require a kernel module to be loaded and others may require a toolset to be installed.  Some non-native file system support is full read-write while others are read-only. This chapter shows the other filesystems supported by FreeBSD To access an ext file system, mount the ext volume by specifying its FreeBSD partition name and an existing mount point.  This example mounts [.filename]#/dev/ad1s1# on [.filename]#/mnt#: Understand UNIX(R) and crossref:basics[basics,FreeBSD basics]. Which file systems are supported by FreeBSD. ext2 / ext3 / ext4 Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-03-25 04:49+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
 # mount -t ext2fs /dev/ad1s1 /mnt
 读完本章后，你会了解到： 熟悉 crossref:kernelconfig[kernelconfig,内核配置和编译]的基础知识。 在阅读本章之前，你应该： 第 21 章 其他文件系统 自如地在 FreeBSD 中crossref:ports[ports,安装软件]。 任何操作系统都有文件系统作为其一部分的组成。它们允许用户上传和存储文件，提供对数据的访问，并使硬盘发挥作用。不同的操作系统在它们的本地文件系统上有所不同。传统上，FreeBSD 的本地文件系统是 Unix 文件系统 UFS ，它已被现代化为 UFS2 。从 FreeBSD 7.0 开始，Z 文件系统（ ZFS ）也可以作为一个本地文件系统使用。请参阅 crossref:zfs[zfs,Z 文件系统（ZFS）] 了解更多信息。 FreeBSD 提供了对几个 Linux(R) 文件系统的内置支持。这一节演示了如何加载对所支持的 Linux(R) 文件系统的支持以及如何挂载这些文件系统。 对 FreeBSD 中的crossref:disks[disks,硬盘]、存储和设备名称有一定的熟悉程度。 如何启用、配置、访问和使用非本地文件系统。 除了它的原生文件系统之外，FreeBSD 还支持大量的其他文件系统，这样就可以在本地访问来自其他操作系统的数据，例如存储在本地连接的 USB 存储设备、闪存驱动器和硬盘上的数据。这包括对 Linux(R) 扩展文件系统（ EXT ）的支持。 目前还不支持日志和加密功能。 对 ext2 文件系统的内核级支持从 FreeBSD 2.2 起就开始了。man:ext2fs[5] 驱动程序允许 FreeBSD 内核读取和写入 ext2, ext3, 和 ext4 文件系统。 Linux(R) 文件系统 其他文件系统 第三部分：系统管理 概述 原生文件系统和支持的文件系统之间的区别。 FreeBSD 对各种文件系统有不同程度的支持。有些需要加载内核模块，有些可能需要安装工具集。一部分非原生文件系统的是支持完全读写的，而另一些是只读的。 本章介绍了 FreeBSD 支持的其他文件系统 要访问一个 ext 文件系统，通过指定其 FreeBSD 分区名称和现有的挂载点来挂载 ext 卷。这个例子将 [.filename]#/dev/ad1s1# 挂载在 [.filename]#/mnt# 上： 理解 UNIX(R) 和 crossref:basics[basics,FreeBSD 基础]。 哪些文件系统被 FreeBSD 所支持。 ext2 / ext3 / ext4 