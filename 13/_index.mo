��    f      L  �   |      �  	   �  "   �  -   �  $   �  "   !	     D	  !   ]	  �   	  :   v
  �   �
  /   �  �   �  �   c  '   8  $  `  9   �     �     �  h  �    B  �   E  4   =     r  �  �     O  m  d  a   �  \   4  �   �  �   �  e  �    �  �   �     �  
   �     �  q   �     B  �  R  �   �  	  �  P   �  �   P      !  k   .!     �!  �   �!     �"  ~  �"     $     3$  �  ?$     �%     �%     �%  M  �%  #   E'  �   i'  E  �'  n  @)  E   �*  �   �*  �  �+  �   �-  �   <.  ^  �.  o   (0  �  �0    92  t  O4  �   �5  *   W6  �   �6  I  s7  Z   �8  ]  9  r   v:  �   �:  1   n;  �  �;  �   3=  _   >  �  c>    �?  �    A    �A    �B     �C     �C  8   �C  1   D  (   BD  /   kD  9   �D  F   �D  :   E  '   WE  
  E  �   �F  �   3G  �  )H  $  �O  	   Q  "   Q  -   @Q  $   nQ  "   �Q     �Q  !   �Q  �   �Q  :   �R  �   #S  !   �S  �   T  �   �T      hU  $  �U  ?   �V     �V     �V  c  W  �   lX  �   MY  4   'Z     \Z  �  oZ     \  G  \  c   d]  W   �]  �    ^  �   _  N  `  �   Za  �   Nb  '   �b     �b     
c  j   !c     �c  d  �c  �   e  �   �e  F   �f  �   "g     �g  X   �g     Th  �   ah     =i  O  Mi     �j     �j  Q  �j     l     l     /l    Gl  $   Zm  �   m    n  E  o  >   dp  �   �p  _  tq  �   �r  r   �s  Z  �s  Q   Ou  C  �u  �  �v  N  �x     z  #   �z  �   �z  �   �{  E   ~|    �|  f   �}  }   @~  -   �~  s  �~  �   `�  c   6�  _  ��  �   ��  r   ԃ  �   G�    �     �     >�  '   ^�  7   ��  $   ��  *   �  .   �  3   =�  1   q�  '   ��    ˇ  �   �  �   w�  3  g�         C   0              <      '   I   L   O       ,      .               	   8   =   T      G   &   ?       +                  d      1   4   E      3   -      _   $   e       "             )   W   ]   A               [          R   H   F          S   B   /   M       `   @   9                               7      ;              5   2      V                     c   U         :   !   *   J       a          K       X              Y       b       Q   #   ^   >       N   %      \         6   D   
   (   Z   f   P     boot -s
  hint.driver.unit.keyword="value"
  load -t userconfig_script /boot/kernel.conf
  set hint.driver.unit.keyword=value
  unload
 load /path/to/kernelfile
 # bsdlabel -B diskslice
 # fdisk -B -b /boot/boot0 device
 # name  getty                           type    status          comments
#
# If console is marked "insecure", then init will ask for the root password
# when going to single-user mode.
console none                            unknown off insecure
 >> FreeBSD/i386 BOOT
Default: 0:ad(0,a)/boot/loader
boot:
 A user can specify this mode by booting with `-s` or by setting the `boot_single` variable in loader.  It can also be reached by running `shutdown now` from multi-user mode.  Single-user mode begins with this message: After reading this chapter, you will recognize: An `insecure` console means that physical security to the console is considered to be insecure, so only someone who knows the `root` password may use single-user mode. An introduction to the FreeBSD Booting Process, demonstrates how to customize the FreeBSD boot process, including everything that happens until the FreeBSD kernel has started, probed for devices, and started init Chapter 13. The FreeBSD Booting Process Conceptually, the first and second stages are part of the same program on the same area of the disk.  Due to space constraints, they have been split into two, but are always installed together.  They are copied from the combined [.filename]#/boot/boot# by the FreeBSD installer or `bsdlabel`. Configuring an Insecure Console in [.filename]#/etc/ttys# Default: F2
 Device Hints Device hints may also be specified at the Stage 3 boot loader prompt, as demonstrated in <<boot-loader>>.  Variables can be added using `set`, removed with `unset`, and viewed `show`.  Variables set in [.filename]#/boot/device.hints# can also be overridden.  Device hints entered at the boot loader are not permanent and will not be applied on the next reboot. During initial system startup, the boot man:loader[8] reads man:device.hints[5].  This file stores kernel boot information known as variables, sometimes referred to as "device hints".  These "device hints" are used by device drivers for device configuration. During initialization, loader will probe for a console and for disks, and figure out which disk it is booting from.  It will set variables accordingly, and an interpreter is started where user commands can be passed from a script or interactively. Enter full pathname of shell or RETURN for /bin/sh:
 F1 Win
F2 FreeBSD
 Finally, by default, loader issues a 10 second wait for key presses, and boots the kernel if it is not interrupted.  If interrupted, the user is presented with a prompt which understands the command set, where the user may adjust variables, unload all modules, load modules, and then finally boot or reboot.  <<boot-loader-commands>> lists the most commonly used loader commands.  For a complete discussion of all available commands, refer to man:loader[8]. FreeBSD Boot Process FreeBSD provides for booting from both the older MBR standard, and the newer GUID Partition Table (GPT).  GPT partitioning is often found on computers with the Unified Extensible Firmware Interface (UEFI).  However, FreeBSD can boot from GPT partitions even on machines with only a legacy BIOS with man:gptboot[8].  Work is under way to provide direct UEFI booting. Here are some practical examples of loader usage.  To boot the usual kernel in single-user mode : How to boot into single- and multi-user mode and how to properly shut down a FreeBSD system. If init finds the file systems to be in order, or once the user has finished their commands in single-user mode and has typed `exit` to leave single-user mode, the system enters multi-user mode, in which it starts the resource configuration of the system. If just the disk name is used, such as [.filename]#ad0#, `bsdlabel` will create the disk in "dangerously dedicated mode", without slices.  This is probably not the desired action, so double check the _diskslice_ before pressing kbd:[Return]. If only one operating system is installed, the MBR searches for the first bootable (active) slice on the disk, and then runs the code on that slice to load the remainder of the operating system.  When multiple operating systems are present, a different boot manager can be installed to display a list of operating systems so the user can select one to boot. If the system `console` is changed to `insecure` in [.filename]#/etc/ttys#, the system will first prompt for the `root` password before initiating single-user mode.  This adds a measure of security while removing the ability to reset the `root` password when it is unknown. If the user presses kbd:[Enter], the system will enter the default Bourne shell.  To specify a different shell, input the full path to the shell. Kernel Interaction During Boot Last Stage Loader Built-In Commands Modify group membership by referring to crossref:basics[users-synopsis,“Users and Basic Account Management”]. Multi-User Mode On x86 hardware, the Basic Input/Output System (BIOS) is responsible for loading the operating system.  The BIOS looks on the hard disk for the Master Boot Record (MBR), which must be located in a specific place on the disk.  The BIOS has enough knowledge to load and run the MBR, and assumes that the MBR can then carry out the rest of the tasks involved in loading the operating system, possibly with the help of the BIOS. Once the kernel has finished booting, it passes control to the user process man:init[8], which is located at [.filename]#/sbin/init#, or the program path specified in the `init_path` variable in `loader`.  This is the last stage of the boot process. Once the kernel is loaded by either loader or by boot2, which bypasses loader, it examines any boot flags and adjusts its behavior as necessary.  <<boot-kernel>> lists the commonly used boot flags.  Refer to man:boot[8] for more information on the other boot flags. Once the system is booted, man:kenv[1] can be used to dump all of the variables. Other operating systems will overwrite an existing MBR if they are installed after FreeBSD.  If this happens, or to replace the existing MBR with the FreeBSD MBR, use the following command: Part III. System Administration Power management requires man:acpi[4] to be loaded as a module or statically compiled into a custom kernel. Shutdown Sequence Since device drivers may accept or require more hints not listed here, viewing a driver's manual page is recommended.  For more information, refer to man:device.hints[5], man:kenv[1], man:loader.conf[5], and man:loader[8]. Single-User Mode Single-user mode is usually used to repair a system that will not boot due to an inconsistent file system or an error in a boot configuration file.  It can also be used to reset the `root` password when it is unknown.  These actions are possible as the single-user mode prompt gives full, local access to the system and its configuration files.  There is no networking in this mode. Stage One and Stage Two Stage Three Stage two, [.filename]#boot2#, is slightly more sophisticated, and understands the FreeBSD file system enough to find files.  It can provide a simple interface to choose the kernel or loader to run.  It runs loader, which is much more sophisticated and provides a boot configuration file.  If the boot process is interrupted at stage two, the following interactive screen is displayed: Synopsis The Boot Manager The FreeBSD Booting Process The MBR installed by the FreeBSD installer is based on [.filename]#/boot/boot0#.  The size and capability of boot0 is restricted to 446 bytes due to the slice table and `0x55AA` identifier at the end of the MBR.  If boot0 and multiple operating systems are installed, a message similar to this example will be displayed at boot time: The basics of setting device hints. The boot manager code in the MBR is sometimes referred to as _stage zero_ of the boot process.  By default, FreeBSD uses the boot0 boot manager. The boot sequence makes sure that the file systems available on the system are consistent.  If a UFS file system is not, and `fsck` cannot fix the inconsistencies, init drops the system into single-user mode so that the system administrator can resolve the problem directly.  Otherwise, the system boots into multi-user mode. The code within the MBR is typically referred to as a _boot manager_, especially when it interacts with the user.  The boot manager usually has more code in the first track of the disk or within the file system.  Examples of boot managers include the standard FreeBSD boot manager boot0, also called Boot Easy, and Grub, which is used by many Linux(R) distributions. The components of the FreeBSD bootstrap system and how they interact. The first stage, [.filename]#boot1#, is very simple, since it can only be 512 bytes in size.  It knows just enough about the FreeBSD _bsdlabel_, which stores information about the slice, to find and execute [.filename]#boot2#. The kernel is then started and begins to probe for devices and initialize them for use.  Once the kernel boot process is finished, the kernel passes control to the user process man:init[8], which makes sure the disks are in a usable state, starts the user-level resource configuration which mounts file systems, sets up network cards to communicate on the network, and starts the processes which have been configured to run at startup. The loader is intended as an interactive method for configuration, using a built-in command set, backed up by a more powerful interpreter which has a more complex command set. The loader is the final stage of the three-stage bootstrap process.  It is located on the file system, usually as [.filename]#/boot/loader#. The loader will then read [.filename]#/boot/loader.rc#, which by default reads in [.filename]#/boot/defaults/loader.conf# which sets reasonable defaults for variables and reads [.filename]#/boot/loader.conf# for local changes to those variables.  [.filename]#loader.rc# then acts on these variables, loading whichever modules and kernel are selected. The options that can be passed to the components in the FreeBSD bootstrap in order to control the boot process. The process of starting a computer and loading the operating system is referred to as "the bootstrap process", or "booting".  FreeBSD's boot process provides a great deal of flexibility in customizing what happens when the system starts, including the ability to select from different operating systems installed on the same computer, different versions of the same operating system, or a different installed kernel. The remainder of the FreeBSD bootstrap system is divided into three stages.  The first stage knows just enough to get the computer into a specific state and run the second stage.  The second stage can do a little bit more, before running the third stage.  The third stage finishes the task of loading the operating system.  The work is split into three stages because the MBR puts limits on the size of the programs that can be run at stages one and two.  Chaining the tasks together allows FreeBSD to provide a more flexible loader. The resource configuration system reads in configuration defaults from [.filename]#/etc/defaults/rc.conf# and system-specific details from [.filename]#/etc/rc.conf#.  It then proceeds to mount the system file systems listed in [.filename]#/etc/fstab#.  It starts up networking services, miscellaneous system daemons, then the startup scripts of locally installed packages. The syntax for [.filename]#/boot/device.hints# is one variable per line, using the hash "#" as comment markers.  Lines are constructed as follows: The syntax for the Stage 3 boot loader is: These two stages are located outside file systems, in the first track of the boot slice, starting with the first sector.  This is where boot0, or any other boot manager, expects to find a program to run which will continue the boot process. This chapter details the configuration options that can be set.  It demonstrates how to customize the FreeBSD boot process, including everything that happens until the FreeBSD kernel has started, probed for devices, and started man:init[8].  This occurs when the text color of the boot messages changes from bright white to grey. This chapter only describes the boot process for FreeBSD running on x86 and amd64 systems. This problem parallels one in the book The Adventures of Baron Munchausen.  A character had fallen part way down a manhole, and pulled himself out by grabbing his bootstraps and lifting.  In the early days of computing, the term _bootstrap_ was applied to the mechanism used to load the operating system.  It has since become shortened to "booting". This section describes these stages in more detail and demonstrates how to interact with the FreeBSD boot process. To learn more about the resource configuration system, refer to man:rc[8] and examine the scripts located in [.filename]#/etc/rc.d#. To load an automated kernel configuration script: To power down a FreeBSD machine on architectures and systems that support power management, use `shutdown -p now` to turn the power off immediately.  To reboot a FreeBSD system, use `shutdown -r now`.  One must be `root` or a member of `operator` in order to run man:shutdown[8].  One can also use man:halt[8] and man:reboot[8].  Refer to their manual pages and to man:shutdown[8] for more information. To replace the installed [.filename]#boot1# and [.filename]#boot2#, use `bsdlabel`, where _diskslice_ is the disk and slice to boot from, such as [.filename]#ad0s1# for the first slice on the first IDE disk: To unload the usual kernel and modules and then load the previous or another, specified kernel: Turning on a computer and starting the operating system poses an interesting dilemma.  By definition, the computer does not know how to do anything until the operating system is started.  This includes running programs from the disk.  If the computer can not run a program from the disk without the operating system, and the operating system programs are on the disk, how is the operating system started? Upon controlled shutdown using man:shutdown[8], man:init[8] will attempt to run the script [.filename]#/etc/rc.shutdown#, and then proceed to send all processes the `TERM` signal, and subsequently the `KILL` signal to any that do not terminate in a timely manner. Use the following to load the usual modules with another kernel.  Note that in this case it is not necessary the qualified name: Use the qualified [.filename]#/boot/GENERIC/kernel# to refer to the default kernel that comes with an installation, or [.filename]#/boot/kernel.old/kernel#, to refer to the previously installed kernel before a system upgrade or before configuring a custom kernel. While single-user mode is useful for repairing a system, it poses a security risk unless the system is in a physically secure location.  By default, any user who can gain physical access to a system will have full control of that system after booting into single-user mode. [.filename]#boot0# Screenshot [.filename]#boot2# Screenshot `at`: specifies the bus which the device is attached to. `disabled`: if set to `1` the device is disabled. `drq`: specifies the DMA channel number. `flags`: sets various flag bits for the device. `irq`: specifies the interrupt request number to be used. `maddr`: specifies the physical memory address occupied by the device. `port`: specifies the start address of the I/O to be used. unload
set kernel="mykernel"
boot-conf
 where _device_ is the boot disk, such as [.filename]#ad0# for the first IDE disk, [.filename]#ad2# for the first IDE disk on a second IDE controller, or [.filename]#da0# for the first SCSI disk.  To create a custom configuration of the MBR, refer to man:boot0cfg[8]. where `driver` is the device driver name, `unit` is the device driver unit number, and `keyword` is the hint keyword.  The keyword may consist of the following options: | Option
| Description

|`-a`
|During kernel initialization, ask for the device to mount as the root file system.

|`-C`
|Boot the root file system from a CDROM.

|`-s`
|Boot into single-user mode.

|`-v`
|Be more verbose during kernel startup.
 | Variable
| Description

|autoboot _seconds_
|Proceeds to boot the kernel if not interrupted within the time span given, in seconds. It displays a countdown, and the default time span is 10 seconds.

|boot [`-options`] [`kernelname`]
|Immediately proceeds to boot the kernel, with any specified options or kernel name. Providing a kernel name on the command-line is only applicable after an `unload` has been issued. Otherwise, the previously-loaded kernel will be used. If _kernelname_ is not qualified, it will be searched under _/boot/kernel_ and _/boot/modules_.

|boot-conf
|Goes through the same automatic configuration of modules based on specified variables, most commonly `kernel`. This only makes sense if `unload` is used first, before changing some variables.

|help [`_topic_`]
|Shows help messages read from [.filename]#/boot/loader.help#. If the topic given is `index`, the list of available topics is displayed.

|include `_filename_` ...
|Reads the specified file and interprets it line by line. An error immediately stops the `include`.

|load [-t ``_type_``] `_filename_`
|Loads the kernel, kernel module, or file of the type given, with the specified filename. Any arguments after _filename_ are passed to the file. If _filename_ is not qualified, it will be searched under _/boot/kernel_ and _/boot/modules_.

|ls [-l] [``_path_``]
|Displays a listing of files in the given path, or the root directory, if the path is not specified. If `-l` is specified, file sizes will also be shown.

|lsdev [`-v`]
|Lists all of the devices from which it may be possible to load modules. If `-v` is specified, more details are printed.

|lsmod [`-v`]
|Displays loaded modules. If `-v` is specified, more details are shown.

|more `_filename_`
|Displays the files specified, with a pause at each `LINES` displayed.

|reboot
|Immediately reboots the system.

|set `_variable_`, set `_variable=value_`
|Sets the specified environment variables.

|unload
|Removes all loaded modules.
 Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-04-04 22:40+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
  boot -s
  hint.driver.unit.keyword="value"
  load -t userconfig_script /boot/kernel.conf
  set hint.driver.unit.keyword=value
  unload
 load /path/to/kernelfile
 # bsdlabel -B diskslice
 # fdisk -B -b /boot/boot0 device
 # name  getty                           type    status          comments
#
# If console is marked "insecure", then init will ask for the root password
# when going to single-user mode.
console none                            unknown off insecure
 >> FreeBSD/i386 BOOT
Default: 0:ad(0,a)/boot/loader
boot:
 用户可以通过使用 `-s` 启动或在加载器中设置 `boot_single` 变量来指定这种模式。它也可以通过在多用户模式下运行 `shutdown now` 来达到。单用户模式以这个信息开始： 读完本章后，你将了解： 不安全的控制台意味着控制台的物理安全性被认为是不安全的，所以只有知道根密码的人可以使用单用户模式。 本章详细介绍了可以配置的选项。它演示了如何定制 FreeBSD 的引导程序，包括在 FreeBSD 内核启动、探测设备和启动 init 之前发生的一切。 第13章 FreeBSD 的启动过程 从概念上讲，第一阶段和第二阶段是同一程序的两个部分，在磁盘的同一区域。由于空间的限制，它们被分成了两个，但总是被安装在一起。它们是由 FreeBSD 安装程序或 `bsdlabel` 从合并的 [.filename]#/boot/boot# 中复制出来的。 在 [.filename]#/etc/ttys# 中配置一个不安全的控制台 Default: F2
 设备提示 device hints 也可以在Stage 3 boot loader提示下指定，如 Stage 3 所演示的。变量可以用 `set` 来添加，用 `unset` 来删除，并且可以用 `show` 来显示。在 [.filename]#/boot/device.hints# 中设置的变量也可以被重写。在启动加载器中输入的 device hints 不是永久性的，不会在下次重启时应用。 在系统初始启动时，man:loader[8] 会读取 man:device.hints[5]。这个文件存储了被称为变量的内核启动信息，有时被称为 "device hints"。这些 "device hints" 被设备驱动用于设备配置。 在初始化过程中，loader 将探测终端和磁盘，并检测出它是从哪个磁盘启动的。它将相应地设置变量，并启动一个解释器，用户命令可以用脚本或交互式的方式传递。 Enter full pathname of shell or RETURN for /bin/sh:
 F1 Win
F2 FreeBSD
 最后，默认情况下，loader 会用10秒的时间等待按键。如果没有被打断，就启动内核。如果被打断，用户会看到一个可理解的命令集的提示，在这里用户可以调整变量，卸载所有模块，加载模块，最后启动或重启。loader 内置命令列出了最常用的 loader 命令。对于所有可用命令的完整讨论，请参考 man:loader[8]。 FreeBSD 的启动过程 FreeBSD 提供了从旧的 MBR 标准和新的 GUID 分区表（GPT）启动的功能。GPT 分区通常出现在使用统一可扩展固件接口（UEFI）的计算机上。然而，FreeBSD 可以使用 man:gptboot[8] 以从 只有传统 BIOS 的机器上的 GPT 分区启动。目前正在努力提供直接的 UEFI 启动。 下面是一些使用加载器的实际例子。在单用户模式下启动通常使用的内核： 如何启动到单用户和多用户模式，以及如何正确关闭 FreeBSD 系统。 如果 init 发现文件系统没有问题，或者假设用户在单用户模式下完成了他们的命令并键入 `exit` 离开单用户模式，系统就会进入多用户模式，在这个模式下，它开始对系统进行资源配置。 如果只使用磁盘名称，如 [.filename]#ad0#， `bsdlabel` 将在“危险的专用模式”下创建磁盘（没有分区）。这可能不是我们想要的结果，所以在按下 kbd:[Return] 之前，请仔细检查 _磁盘分区_。 如果只安装了一个操作系统，MBR 会在磁盘上搜索第一个可启动的（活动的）分区，然后运行这个分区上的代码来加载操作系统的剩余部分。当有多个操作系统时，可以安装一个不同的引导管理器来显示操作系统的列表，这样用户就可以选择一个来启动。 如果在 [.filename]#/etc/ttys# 中把系统控制台改为不安全的，那么在启动单用户模式之前，系统会首先提示根密码。这增加了一种安全措施，同时取消了在根密码未知时重置根密码的能力。 如果用户 kbd:[Enter]，系统将进入默认的 Bourne shell。要指定一个不同的 shell，请输入 shell 的完整路径。 内核在启动过程中的相互作用 最后阶段 Loader 的内置命令 通过参考 crossref:basics[users-synopsis,“用户和基本账户管理”] 来修改组成员资格。 多用户模式 在 X86 硬件上，基本输入/输出系统（BIOS）负责加载操作系统。BIOS 在硬盘上寻找主引导记录（MBR），该记录必须位于磁盘上的一个特定位置。BIOS 有足够的能力来加载和运行 MBR，并假设 MBR 随后可以执行加载操作系统所涉及的其余任务，并有可能要在 BIOS 的帮助下进行。 内核完成了启动以后，它就把控制权交给用户进程 man:init[8]，它位于 [.filename]#/sbin/init#，或者在 `loader` 的 `init_path` 变量中指定的程序路径。这是启动过程的最后阶段。 一旦内核被 loader 或绕过 loader 的 boot2 加载，它就会检查所有引导标志，并根据需要调整其行为。Kernel Interaction During Boot 列出了常用的引导标志。更多关于其他引导标志的信息请参考 boot(8)。 系统启动之后，可以用 man:kenv[1] 来转储所有的变量。 如果在 FreeBSD 之后安装其他操作系统，它们就会覆盖现有的 MBR。如果发生这种情况，或者想用 FreeBSD 的 MBR 替换现有的 MBR，请使用下面的命令： 第三部分 系统管理 电源管理需要 man:acpi[4] 作为模块加载或静态编译到自定义内核中。 关机顺序 由于设备驱动程序可能接受或需要更多这里没有列出的 hints，建议查看驱动程序的手册页。更多信息请参考 man:device.hints[5]、 man:kenv[1]、 man:loader.conf[5] 和 man:loader[8]。 单用户模式 单用户模式通常用于修复由于文件系统不一致或启动配置文件错误而无法启动的系统。当根密码未知时，它也可以用来重置 `root` 密码。这些操作是可能的，因为单用户模式的提示给了系统和它的配置文件完全的、本地的访问权。在这种模式下没有网络。 第一阶段和第二阶段 第三阶段 第二阶段，[.filename]#boot2#，稍微复杂一些，它对 FreeBSD 文件系统的理解足以找到文件。它可以提供一个简单的界面来选择要运行的内核或加载器。它运行更复杂的 loader，并提供一个引导配置文件。如果启动过程在第二阶段被打断，将显示以下交互式屏幕： 概述 引导管理器 FreeBSD 的启动过程 由 FreeBSD 安装程序安装的 MBR 是基于 [.filename]#/boot/boot0# 的。由于分区表和 MBR 末尾的 `0x55AA` 标识符，boot0 的大小被限制在 446 字节。如果 boot0 和多个操作系统被安装，在启动时将会显示类似这个例子的信息。 设置device hints的基础知识。 MBR 中的引导管理器代码有时被称为引导过程的第零阶段。默认情况下，FreeBSD 使用 boot0 引导管理器。 启动顺序确保系统中可用的文件系统是一致的。如果UFS文件系统不一致，并且 `fsck` 不能修复不一致的地方，init 将系统降到单用户模式，这样系统管理员可以直接解决这个问题。否则，系统会启动到多用户模式。 MBR 中的代码通常被称为 _boot manager_ ，尤其是当它与用户进行交互时。引导管理器通常在磁盘的第一个磁道或文件系统内有更多的代码。引导管理器的例子包括标准的 FreeBSD 引导管理器 boot0（也叫 Boot Easy） ，以及被许多 Linux(R) 发行版使用的 Grub。 FreeBSD 引导程序的组件以及它们如何相互作用。 第一阶段，[.filename]#boot1#，非常简单，因为它只能有 512 字节大小。它对FreeBSD bsdlabel 的了解只够找到并执行 [.filename]#boot2#，_bsdlabel_ 存储了关于分片的信息。 内核随后被启动，同时开始探测设备并初始化它们以便使用。内核启动过程结束以后，内核将控制权移交给用户进程 man:init[8]。它将确保磁盘处于可用状态，启动用户级资源配置，挂载文件系统，设置网卡以便在网络上通信，并启动已经配置好的启动时运行的进程。 loader 的目的是作为一种交互式的配置方法，使用内置的命令集，由一个更强大的解释器来支持，该解释器有一个更复杂的命令集。 loader 是三阶段引导过程的最后阶段。它位于文件系统中，通常为 [.filename]#/boot/loader#。 然后，加载器将读取 [.filename]#/boot/loader.rc#。默认情况下，它会读取 [.filename]#/boot/defaults/loader.conf#，并为变量设置合理的默认值。然后读取 [.filename]#/boot/loader.conf# 对这些变量进行本地修改。[.filename]#loader.rc# 会根据这些变量进行处理，加载所选择的模块和内核。 可以传递给 FreeBSD 引导程序中组件的选项，以控制启动过程。 启动计算机并加载操作系统的过程被称为 "引导过程"，或 "启动"。FreeBSD 的引导程序对于自定义系统启动时所发生的事情提供了很大的灵活性，包括可以选择安装在同一台计算机上的不同操作系统，同一操作系统的不同版本，或不同内核的能力。 FreeBSD bootstrap 系统的其余部分被分为三个阶段。第一阶段只知道让计算机进入一个特定的状态并运行第二阶段。第二阶段可以多做一些事，然后运行第三阶段。第三阶段完成加载操作系统的任务。这项工作被分成三个阶段是因为 MBR 对第一和第二阶段可以运行的程序的大小进行了限制。将这些任务串联起来，就可以使 FreeBSD 提供一个更灵活的加载器。 资源配置系统从 [.filename]#/etc/defaults/rc.conf# 中读取配置默认值，从 [.filename]#/etc/rc.conf# 中读取系统的具体细节。然后，它开始装载 [.filename]#/etc/fstab# 中列出的系统文件系统。它启动网络服务、各种系统守护程序，然后启动本地安装的软件包的启动脚本。 [.filename]#/boot/device.hints# 的语法是每行一个变量，使用散列的 "#" 作为注释标记。行的结构如下： Stage 3 boot loader 的语法是： 这两个阶段位于文件系统之外，在 boot slice 的第一个磁道上，从第一个扇区开始。这是 boot0 或任何其他引导管理器期望找到一个可以继续引导过程的程序的地方。 本章详细介绍了可以配置的选项。它演示了如何定制 FreeBSD 的引导程序，包括在 FreeBSD 内核启动、探测设备和启动 man:init[8] 之前发生的一切。当启动信息从白色变成灰色时，这一切就会发生。 本章只描述 FreeBSD 在 x86 和 amd64 系统上的启动过程。 这个问题与《吹牛大王历险记》一书中的情节类似。一个人掉入了窨井里，通过提起鞋带就把自己拉了出来。在早期的计算机中，bootstrap 这个词被应用于用于加载操作系统的机制。此后，它被缩短为  "booting"。 这一节更详细地描述了这些阶段，并演示了如何与 FreeBSD 启动程序进行交互。 要了解更多关于资源配置系统的信息，请参考 man:rc[8] 并检查位于 [.filename]#/etc/rc.d# 中的脚本。 加载一个自动化的内核配置脚本： 在支持电源管理的架构和系统上关闭 FreeBSD 机器的电源，使用 `shutdown -p now` 来立即关闭电源。要重新启动一个 FreeBSD 系统，使用 `shutdown -r now`。必须是 `root` 或 `operator` 成员才能运行 man:shutdown[8]。也可以使用 man:halt[8] 和 man:reboot[8]。更多信息请参考它们的手册页面和 man:shutdown[8]。 使用 `bsdlabel` 可以替换已安装的 [.filename]#boot1# 和 [.filename]#boot2#。其中 _diskslice_ 是要启动的磁盘和分区，例如 [.filename]#ad0s1# 表示第一个IDE磁盘上的第一个分区。 卸载通常使用的内核和模块，然后加载以前使用的的或另一个指定的内核： 开启计算机和启动操作系统带来了一个有趣的难题。根据定义，在操作系统启动之前，计算机不知道如何做任何事情，包括从磁盘上运行程序。如果计算机在没有操作系统的情况下不能从磁盘上运行程序，而操作系统的程序又在磁盘上，那么操作系统是如何启动的？ 在使用 man:shutdown[8] 控制关机时，man:init[8] 会尝试运行 [.filename]#/etc/rc.shutdown# 脚本，然后向所有进程发送 `TERM` 信号，并随后向没有及时终止的进程发送 `KILL` 信号。 使用下面的方法来加载其他内核的常用模块。注意，在这种情况下，不需要限定名称： 使用限定的 [.filename]#/boot/GENERIC/kernel# 来指代安装时附带的默认内核，或者使用 [.filename]#/boot/kernel.old/kernel# 来指代系统升级前或配置自定义内核前安装的内核。 虽然单用户模式对修复系统很有用，但它会带来安全风险，除非系统处于一个物理上安全的位置。默认情况下，任何能够获得系统物理访问权的用户，在启动到单用户模式后，将完全控制该系统。 [.filename]#boot0# 屏幕截图 [.filename]#boot2# 屏幕截图 `at`: 指定设备所连接的总线。 `disabled`: 如果设置为 `1`，则设备被禁用。 `drq`: 指定 DMA 通道的编号。 `flags`: 为设备设置各种标志位。 `irq`: 指定要使用的中断请求编号。 `maddr`: 指定设备占用的物理内存地址。 `port`: 指定要使用的 I/O 的起始地址。 unload
set kernel="mykernel"
boot-conf
 其中 _device_ 代表着启动盘，比如 [.filename]#ad0# 代表第一个 IDE 磁盘，[.filename]#ad2# 代表第二个 IDE 控制器上的第一个 IDE 磁盘，或者 [.filename]#da0# 代表第一个 SCSI 磁盘。要创建 MBR 的自定义配置，请参考 man:boot0cfg[8]。 其中 `driver` 是设备驱动名称，`unit` 是设备驱动单元号，`keyword` 是提示关键字。关键字可以由以下选项组成： | 选项
| 说明

|`-a`
|在内核初始化过程中，要求将该设备作为根文件系统挂载。

|`-C`
|从CDROM引导根文件系统。

|`-s`
|引导到单用户模式。

|`-v`
|在内核启动过程中更加详细地说明。
 | 变量
| 说明

|autoboot _seconds_
|如果在给定的时间跨度内没有被打断，就继续启动内核，单位是秒。它显示一个倒计时，默认的时间跨度是10秒。

|boot [`-options`] [`kernelname`]
|立即启动内核，并使用任何指定的选项或内核名称。在命令行上提供内核名称只适用于已经声明过 `unload` 的情况。否则，将使用先前加载的内核。如果 _kernelname_ 没有限定，它将在 _/boot/kernel_ 和 _/boot/modules_ 下搜索。.

|boot-conf
|根据指定的变量（最常见的是 `内核`），经历同样的自动配置模块的过程。这只有在先使用 `unload`，然后再改变一些变量时才有意义。

|help [`_topic_`]
|显示从 [.filename]#/boot/loader.help# 读取的帮助信息。如果给出的 topic 是 `index`，则显示可用的 topic 列表。

|include `_filename_` ...
|读取指定的文件并逐行进行解释。如果出现错误，立即停止 `include`。

|load [-t ``_type_``] `_filename_`
|加载内核、内核模块或所给类型的文件，并指定文件名。在文件名后面的任何参数都被传递给文件。如果文件名没有限定，它将在 _/boot/kernel_ 和 _/boot/modules_ 下搜索。

|ls [-l] [``_path_``]
|显示给定路径中的文件清单，如果没有指定路径，则显示根目录。如果指定了 `-l`，文件的大小也将被显示。

|lsdev [`-v`]
|列出所有可能加载模块的设备。如果指定了 `-v`，就会打印更多的细节。

|lsmod [`-v`]
|显示已加载的模块。如果指定了 `-v`，会显示更多的细节。

|more `_filename_`
|显示指定的文件，每显示一行就 pause 一次。

|reboot
|	立即重启系统。

|set `_variable_`, set `_variable=value_`
|设置指定的环境变量。

|unload
|移除所有已加载的模块。
 