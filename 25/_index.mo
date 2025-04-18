��    4      �  G   \      x  �  y  �  &  :   �
  R        i     }  *   �  �   �  �   �  (     _   B     �     �  �  �  G       �  C  �  Z   ,  �   �  �   l  !        (  �  @    �  j   �  (   X     �  n  �  �       �  8  �     �  >     �  E!  �   �"  ~  �#  �   %  k   �%  �   4&  2   0'  �   c'  _   �'  H   U(  O   �(  :   �(     ))  -   6)    d)    |*     1  b   �1  $  2  �  &3  �  �5  :   �9  R   �9     :     *:  !   ?:  �   a:  �   �:  '   s;  M   �;     �;     �;  �   <  &  �=  �  �>  �   �@  B   �A  �   B  �   �B  !   �C     �C  �  �C  �  [E  M   $G  .   rG     �G  L  �G  m  I     oJ    �J     �L  �   �L  �  �M  e   (O  C  �O  �   �P  X   mQ  �   �Q  @   �R  �   �R  c   gS  ?   �S  A   T  $   MT     rT  (   �T  �   �T    �U     �\  b   �\               )       /             &         
                                      1       *                .   #   (      3                       	   2      $      "                           0   +   ,   -       %   !       '                    4                 SYSCALL          TIME (ns)
          getpid               6131
       sigreturn               8121
           close              19127
           fcntl              19959
             dup              26955
         setpgid              28070
            stat              31899
       setitimer              40938
           wait4              62717
       sigaction              67372
     sigprocmask             119091
    gettimeofday             183710
           write             263242
          execve             492547
           ioctl             770073
           vfork            3258923
      sigsuspend            6985124
            read         3988049784
 # ./hotkernel -m
Sampling... Hit Ctrl-C to end.
^C
MODULE                                                  COUNT   PCNT
0xc107882e                                                  1   0.0%
0xc10e6aa4                                                  1   0.0%
0xc1076983                                                  1   0.0%
0xc109708a                                                  1   0.0%
0xc1075a5d                                                  1   0.0%
0xc1077325                                                  1   0.0%
0xc108a245                                                  1   0.0%
0xc107730d                                                  1   0.0%
0xc1097063                                                  2   0.0%
0xc108a253                                                 73   0.0%
kernel                                                    874   0.4%
0xc10981a5                                             213781  99.6%
 # ./procsystime -n csh
Tracing... Hit Ctrl-C to end...
^C
 # cd /usr/local/share/dtrace-toolkit
# ./hotkernel
Sampling... Hit Ctrl-C to end.
 # dtrace -l | more
 # kldload dtraceall
 After reading this chapter, you will know: As instructed, use the kbd:[Ctrl+C] key combination to stop the process.  Upon termination, the script will display a list of kernel functions and timing information, sorting the output in increasing order of time: As shown, the `read()` system call used the most time in nanoseconds while the `getpid()` system call used the least amount of time. Before reading this chapter, you should: Beginning with FreeBSD 10.0-RELEASE, the modules are automatically loaded when `dtrace` is run. Chapter 25. DTrace DTrace DTrace falls under the Common Development and Distribution License (`CDDL`) license.  To view this license on FreeBSD, see [.filename]#/usr/src/cddl/contrib/opensolaris/OPENSOLARIS.LICENSE# or view it online at http://opensource.org/licenses/CDDL-1.0[http://opensource.org/licenses/CDDL-1.0].  While a FreeBSD kernel with DTrace support is `BSD` licensed, the `CDDL` is used when the modules are distributed in binary form or the binaries are loaded. DTrace is a remarkable profiling tool, with an impressive array of features for diagnosing system issues.  It may also be used to run pre-written scripts to take advantage of its capabilities.  Users can author their own utilities using the DTrace D Language, allowing them to customize their profiling based on specific needs. DTrace scripts consist of a list of one or more _probes_, or instrumentation points, where each probe is associated with an action.  Whenever the condition for a probe is met, the associated action is executed.  For example, an action may occur when a file is opened, a process is started, or a line of code is executed.  The action might be to log some information or to modify context variables.  The reading and writing of context variables allows probes to share information and to cooperatively analyze the correlation of different events. DTrace, also known as Dynamic Tracing, was developed by Sun(TM) as a tool for locating performance bottlenecks in production and pre-production systems.  In addition to diagnosing performance problems, DTrace can be used to help investigate and debug unexpected behavior in both the FreeBSD kernel and in userland programs. Differences between the Solaris(TM) DTrace implementation and the one provided by FreeBSD. Due to security differences, only `root` may use DTrace on FreeBSD.  Solaris(TM) has a few low level security checks which do not yet exist in FreeBSD.  As such, the [.filename]#/dev/dtrace/dtrace# is strictly limited to `root`. Each probe has an `ID`, a `PROVIDER` (dtrace or fbt), a `MODULE`, and a `FUNCTION NAME`.  Refer to man:dtrace[1] for more information about this command. Elapsed Times for processes csh,
 Enabling DTrace Support Finally, install the current DTrace Toolkit, a collection of ready-made scripts for collecting system information.  There are scripts to check open files, memory, `CPU` usage, and a lot more.  FreeBSD 10 installs a few of these scripts into [.filename]#/usr/share/dtrace#.  On other FreeBSD versions, or to install the full DTrace Toolkit, use the package:sysutils/dtrace-toolkit[] package or port. FreeBSD uses the `DDB_CTF` kernel option to enable support for loading `CTF` data from kernel modules and the kernel itself.  `CTF` is the Solaris(TM) Compact C Type Format which encapsulates a reduced form of debugging information similar to `DWARF` and the venerable stabs.  `CTF` data is added to binaries by the `ctfconvert` and `ctfmerge` build tools.  The `ctfconvert` utility parses `DWARF``ELF` debug sections created by the compiler and `ctfmerge` merges `CTF``ELF` sections from objects into either executables or shared libraries. Have some familiarity with security and how it pertains to FreeBSD (crossref:security[security,Security]). How to enable and use DTrace on FreeBSD. Implementation Differences In FreeBSD 9.2 and 10.0, DTrace support is built into the [.filename]#GENERIC# kernel.  Users of earlier versions of FreeBSD or who prefer to statically compile in DTrace support should add the following lines to a custom kernel configuration file and recompile the kernel using the instructions in crossref:kernelconfig[kernelconfig,Configuring the FreeBSD Kernel]: Once the FreeBSD system has rebooted into the new kernel, or the DTrace kernel modules have been loaded using `kldload dtraceall`, the system will need support for the Korn shell as the DTrace Toolkit has several utilities written in `ksh`.  Make sure that the package:shells/ksh93[] package or port is installed.  It is also possible to run these tools under package:shells/pdksh[] or package:shells/mksh[]. Part III. System Administration Some different providers exist for FreeBSD than for Solaris(TM).  Most notable is the `dtmalloc` provider, which allows tracing `malloc()` by type in the FreeBSD kernel.  Some of the providers found in Solaris(TM), such as `cpc` and `mib`, are not present in FreeBSD.  These may appear in future versions of FreeBSD.  Moreover, some of the providers available in both operating systems are not compatible, in the sense that their probes have different argument types.  Thus, `D` scripts written on Solaris(TM) may or may not work unmodified on FreeBSD, and vice versa. Synopsis The DTrace Toolkit includes many scripts in the special language of DTrace.  This language is called the D language and it is very similar to C++.  An in depth discussion of the language is beyond the scope of this document.  It is covered extensively in the http://www.dtrace.org/guide[Illumos Dynamic Tracing Guide]. The FreeBSD implementation provides full support for kernel DTrace and experimental support for userland DTrace.  Userland DTrace allows users to perform function boundary tracing for userland programs using the `pid` provider, and to insert static probes into userland programs for later tracing.  Some ports, such as package:databases/postgresql12-server[] and package:lang/php74[] have a DTrace option to enable static probes. The [.filename]#hotkernel# script is designed to identify which function is using the most kernel time.  It will produce output similar to the following: The [.filename]#procsystime# script captures and prints the system call time usage for a given process `ID` (`PID`) or process name.  In the following example, a new instance of [.filename]#/bin/csh# was spawned.  Then, [.filename]#procsystime# was executed and remained waiting while a few commands were typed on the other incarnation of `csh`.  These are the results of this test: The examples in this section provide an overview of how to use two of the fully supported scripts from the DTrace Toolkit: the [.filename]#hotkernel# and [.filename]#procsystime# scripts. The official guide to DTrace is maintained by the Illumos project at http://dtrace.org/guide[DTrace Guide]. The scripts found in [.filename]#/usr/share/dtrace# have been specifically ported to FreeBSD.  Not all of the scripts found in the DTrace Toolkit will work as-is on FreeBSD and some scripts may require some effort in order for them to work on FreeBSD. This chapter explains how to use DTrace in FreeBSD This option provides support for `FBT`.  While DTrace will work without this option, there will be limited support for function boundary tracing. This script will also work with kernel modules.  To use this feature, run the script with `-m`: To view all probes, the administrator can execute the following command: Understand UNIX(R) and FreeBSD basics (crossref:basics[basics,FreeBSD Basics]). Users of the AMD64 architecture should also add this line: Using DTrace What DTrace is and what features it provides. While the DTrace in FreeBSD is similar to that found in Solaris(TM), differences do exist.  The primary difference is that in FreeBSD, DTrace is implemented as a set of kernel modules and DTrace can not be used until the modules are loaded.  To load all of the necessary modules: kernel`_thread_lock_flags                                   2   0.0%
0xc1097063                                                  2   0.0%
kernel`sched_userret                                        2   0.0%
kernel`kern_select                                          2   0.0%
kernel`generic_copyin                                       3   0.0%
kernel`_mtx_assert                                          3   0.0%
kernel`vm_fault                                             3   0.0%
kernel`sopoll_generic                                       3   0.0%
kernel`fixup_filename                                       4   0.0%
kernel`_isitmyx                                             4   0.0%
kernel`find_instance                                        4   0.0%
kernel`_mtx_unlock_flags                                    5   0.0%
kernel`syscall                                              5   0.0%
kernel`DELAY                                                5   0.0%
0xc108a253                                                  6   0.0%
kernel`witness_lock                                         7   0.0%
kernel`read_aux_data_no_wait                                7   0.0%
kernel`Xint0x80_syscall                                     7   0.0%
kernel`witness_checkorder                                   7   0.0%
kernel`sse2_pagezero                                        8   0.0%
kernel`strncmp                                              9   0.0%
kernel`spinlock_exit                                       10   0.0%
kernel`_mtx_lock_flags                                     11   0.0%
kernel`witness_unlock                                      15   0.0%
kernel`sched_idletd                                       137   0.3%
0xc10981a5                                              42139  99.3%
 options         KDTRACE_FRAME
 options         KDTRACE_HOOKS
options         DDB_CTF
makeoptions	DEBUG=-g
makeoptions	WITH_CTF=1
 Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-04-06 11:13+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
          SYSCALL          TIME (ns)
          getpid               6131
       sigreturn               8121
           close              19127
           fcntl              19959
             dup              26955
         setpgid              28070
            stat              31899
       setitimer              40938
           wait4              62717
       sigaction              67372
     sigprocmask             119091
    gettimeofday             183710
           write             263242
          execve             492547
           ioctl             770073
           vfork            3258923
      sigsuspend            6985124
            read         3988049784
 # ./hotkernel -m
Sampling... Hit Ctrl-C to end.
^C
MODULE                                                  COUNT   PCNT
0xc107882e                                                  1   0.0%
0xc10e6aa4                                                  1   0.0%
0xc1076983                                                  1   0.0%
0xc109708a                                                  1   0.0%
0xc1075a5d                                                  1   0.0%
0xc1077325                                                  1   0.0%
0xc108a245                                                  1   0.0%
0xc107730d                                                  1   0.0%
0xc1097063                                                  2   0.0%
0xc108a253                                                 73   0.0%
kernel                                                    874   0.4%
0xc10981a5                                             213781  99.6%
 # ./procsystime -n csh
Tracing... Hit Ctrl-C to end...
^C
 # cd /usr/local/share/dtrace-toolkit
# ./hotkernel
Sampling... Hit Ctrl-C to end.
 # dtrace -l | more
 # kldload dtraceall
 读完本章后，你将知道： 如提示，用快捷键 kbd:[Ctrl+C] 结束进程。结束时，脚本会显示内核函数和用时信息列表，按用时升序排列： 如结果显示的那样，`read()` 系统请求占用了最长的时间（以纳秒显示），而 `getpid()` 占用时间最少。 在你阅读本章之前，你应该： 自 FreeBSD 10.0-RELEASE 起，运行 `dtrace` 会自动加载这些模块。 第25章 DTrace DTrace DTrace 受到 Common Development and Distribution License（`CDDL`）许可证保护。要在 FreeBSD 中查看此许可证，见 [.filename]#/usr/src/cddl/contrib/opensolaris/OPENSOLARIS.LICENSE# 或者在 http://opensource.org/licenses/CDDL-1.0[http://opensource.org/licenses/CDDL-1.0] 在线查看。虽然 FreeBSD 内核对于 DTrace 的实现采用 `BSD` 许可证，但是当模块以二进制形式分发或加载时会使用 `CDDL` 许可证。 DTrace 是一个优秀的记录工具，有着众多用于诊断系统问题的功能。它还可以用来执行预先编写好的脚本，以充分利用其功能。用户可以使用 DTrace 的 D 语言编写他们自己的工具，令用户能够根据特殊需求自定义他们的记录。 DTrace 脚本由一个或多个 探测器 或者 测量点 组成，每一个探测器关联一个动作。当探测器的条件被满足时，与之相关联的动作就会被执行。例如，当打开一个文件，启动一个进程或者运行一行代码时可能执行一个动作。这个动作可能是记录某些信息，或者变更上下文变量。对上下文变量的读取和写入使得探测器之间能够共享信息，并且对不同事件协同分析其相关性。 DTrace，即动态追踪，是一个由 Sun™ 开发的工具，用来在生产系统和预生产系统中定位性能瓶颈。在诊断性能问题以外，DTrace 也可以被用来调查和调试 FreeBSD 内核与用户态程序中的异常行为。 Solaris™ DTrace 和在 FreeBSD 中提供的实现有何区别。 由于安全措施的差异，在 FreeBSD 上只有 `root` 能够使用 DTrace。Solaris™ 拥有一些在 FreeBSD 中还不存在的底层安全校验，因此 [.filename]#/dev/dtrace/dtrace# 仅限 `root` 使用。 每个探测器都有一个 `ID`，一个 `PROVIDER`（dtrace 或 fbt），一个 `MODULE` 和一个 `FUNCTION NAME`。关于这个命令的更多信息请见 man:dtrace[1]。 Elapsed Times for processes csh,
 开启 DTrace 支持 最后，安装当前版本的 DTrace Toolkit，这是一个收集系统信息的脚本集。其中包括检查打开文件、内存、`CPU` 使用率等脚本。FreeBSD 10 在 [.filename]#/usr/share/dtrace# 下已经安装了其中几个脚本。在其他版本的 FreeBSD 中，或者要安装完整的 DTrace Toolkit，请安装 package:sysutils/dtrace-toolkit[] package 或者 port。 FreeBSD 使用 `DDB_CTF` 内核选项启用内核模块和内核自身对 `CTF` 加载的支持。`CTF` 是 Solaris™ Compact C Type Format，这种格式能够压缩调试信息，类似于 `DWARF` 和 stabs。`CTF` 数据通过 `ctfconvert` 和 `ctfmerge` 构建工具添加到二进制中。`ctfconvert` 工具解析由编译器创建的 `DWARF``ELF` 调试部分，`ctfmerge` 将对象中的 `CTF``ELF` 部分合并到可执行程序或共享库中。 知悉有关 FreeBSD 的安全措施(crossref:security[security,Security])。 如何在 FreeBSD 中启用和使用 DTrace。 实现上的差异 在 FreeBSD 9.2 和 10.0 中，对 DTrace 的支持被内建于 [.filename]#GENERIC# 内核中。使用早先版本或是希望静态编译 DTrace 支持的用户应当在自定义内核配置文件中添加如下内容，并按照 crossref:kernelconfig[kernelconfig,Configuring the FreeBSD Kernel] 中的指导重新编译内核： FreeBSD 系统重启进入新的内核后，或是通过 `kldload dtraceall` 加载了 DTrace 内核模块后，系统将会需要 Korn shell，因为 DTrace Toolkit 中有几个工具是通过 `ksh` 编写的。请确保你安装了 package:shells/ksh93[] package 或 port。你也可以在 package:shells/pdksh[] 或 package:shells/mksh[] 中运行这些工具。 第三部分 系统管理 一些提供程序是为 FreeBSD 而非 Solaris™ 提供的。最显著的是 `dtmalloc` 提供程序，它允许在 FreeBSD 内核中通过类型追踪 `malloc()`。Solaris™ 中的一些提供程序，比如 `cpc` 和 `mib` 并不存在于 FreeBSD 中，虽然日后可能提供。此外，一些同时存在于两种操作系统中的提供程序互不兼容，比如它们探测器有不同的参数。所以，在 Solaris™ 中编写的 `D` 语言脚本在 FreeBSD 中不做修改就可能无法运行，反之亦然。 概述 DTrace Toolkit 包括许多使用 DTrace 专有的 D 语言编写的脚本。这种语言非常类似于 C++。对其进行深入探讨不属于本文的范围，这在 http://www.dtrace.org/guide[Illumos Dynamic Tracing Guide] 中有所涵盖。 其在 FreeBSD 中可提供对内核 DTrace 的完整支持与用户态 DTrace 的实验性支持。用户态 DTrace 允许用户使用 `pid` 执行对用户态程序的函数边界追踪，并在用户态程序中插入静态探测器以便之后进行追踪。像 package:databases/postgresql12-server[] 和 package:lang/php74[] 这样的 ports 提供一个 DTrace 选项来启用静态探测器。 [.filename]#hotkernel# 用来识别占用内核时间最多的函数。它会生成类似的输出： [.filename]#procsystime# 脚本记录并输出给定 `ID`（`PID`） 或名称的进程的系统调用时间。在如下示例中，将会生成一个新的 [.filename]#/bin/csh# 实例，然后 [.filename]#procsystime# 将会执行并等待。这时，在另一个 `csh` 中输入几个命令。这是该测试的结果： 这节中的例子大致演示了如何使用 DTrace Toolkit 中两个得到完整支持的脚本：[.filename]#hotkernel# 和 [.filename]#procsystime#。 DTrace 官方指南由 http://dtrace.org/guide[DTrace Guide] 的 Illumos 项目维护。 [.filename]#/usr/share/dtrace# 下的脚本是专门用于 FreeBSD 的。并非所有包括在 DTrace Toolkit 中的脚本都能在 FreeBSD 上如期工作，一些脚本可能需要额外的修改。 本章描述如何在 FreeBSD 中使用 Sun™ 的 DTrace 工具 这个选项提供 `FBT` 支持。虽然 DTrace 在没有这个选项的时候也能够工作，但是对函数边界测试时的支持将会受限。 这个脚本也同样适用于内核模块。要使用此功能，请用 `-m` 执行这个脚本： 要查看所有探测器，管理员可以执行以下命令： 理解 FreeBSD 基础 (crossref:basics[basics,FreeBSD Basics])。 AMD64 架构的用户还应添加： 使用 DTrace DTrace 是什么，提供什么功能。 虽然在 FreeBSD 中的 DTrace 与 Solaris™ DTrace 类似，但仍有一些区别。主要区别是 FreeBSD 中的 DTrace 是由一组内核模块实现实现的，在模块加载之前无法使用 DTrace。要加载所有必须的模块，请执行： kernel`_thread_lock_flags                                   2   0.0%
0xc1097063                                                  2   0.0%
kernel`sched_userret                                        2   0.0%
kernel`kern_select                                          2   0.0%
kernel`generic_copyin                                       3   0.0%
kernel`_mtx_assert                                          3   0.0%
kernel`vm_fault                                             3   0.0%
kernel`sopoll_generic                                       3   0.0%
kernel`fixup_filename                                       4   0.0%
kernel`_isitmyx                                             4   0.0%
kernel`find_instance                                        4   0.0%
kernel`_mtx_unlock_flags                                    5   0.0%
kernel`syscall                                              5   0.0%
kernel`DELAY                                                5   0.0%
0xc108a253                                                  6   0.0%
kernel`witness_lock                                         7   0.0%
kernel`read_aux_data_no_wait                                7   0.0%
kernel`Xint0x80_syscall                                     7   0.0%
kernel`witness_checkorder                                   7   0.0%
kernel`sse2_pagezero                                        8   0.0%
kernel`strncmp                                              9   0.0%
kernel`spinlock_exit                                       10   0.0%
kernel`_mtx_lock_flags                                     11   0.0%
kernel`witness_unlock                                      15   0.0%
kernel`sched_idletd                                       137   0.3%
0xc10981a5                                              42139  99.3%
 options         KDTRACE_FRAME
 options         KDTRACE_HOOKS
options         DDB_CTF
makeoptions	DEBUG=-g
makeoptions	WITH_CTF=1
 