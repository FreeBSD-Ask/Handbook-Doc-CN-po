��    o      �  �         `	  6   a	  '   �	  "   �	  +   �	  @   
     P
     c
  :   }
  @   �
     �
       I   %  �   o  M   P  +   �  '  �     �      G    }   [     �     �  �   �  M   �  M   �  O   >  O   �     �  t   �     d     s  y   �  �     D   �      "  �   C  (   �  @   "  4  c  �  �     (     /  �   6  M   �  c   "  �   �               '  <   5     r  �   z     _     q     �  K   �  K   �     6     B     U     c  .   {  6   �  �  �  �  z      ?"  %   G"  }   m"  �   �"  �   �#  y   �$    %  l  +&  U   �'  �   �'  V   |(  t   �(  1   H)    z)  �   �*  �   w+  �   �+  <  �,  =   �-  �   :.  �   �.  B   G/  	   �/     �/     �/    �/  �   �0  K   �1  -   �1  +   -2  +   Y2  &   �2  *   �2  e   �2  1   =3  /   o3  /   �3  -   �3  +   �3  +   )4     U4     f4  '  m4  �.  �6     le  $  mg  6   �h  '   �h  "   �h  +   i  @   @i     �i     �i  :   �i  @   �i     *j     Aj  H   Vj  �   �j  E   xk  /   �k    �k     m  �   m  0  n  r   Dp     �p     �p  �   �p  M   �q  M   �q  O   r  O   nr     �r  \   �r     (s     8s  y   Ks  �   �s  P   �t     �t  �   u  (   �u  R   �u  4  >v  m  sw     �x     �x  q   �x  T   ay  ^   �y  l   z     �z     �z     �z  0   �z  	   �z  �   �z     �{     �{     �{  K   �{  K   |  
   h|     s|     �|     �|  2   �|  2   �|  �  }  �  �~     ;�  $   C�  �   h�  �   �  �   ��  _   M�    ��  B  ��  R   ��  u   Q�  <   ǅ  o   �  0   t�  �   ��  �   ��  w   {�  �   �    ��  6   ��  {   �  �   m�  F   ��  
   <�     G�     Y�  �   x�  �   v�  D   W�  -   ��  +   ʎ  +   ��  &   "�  *   I�  f   t�  1   ۏ  /   �  /   =�  -   m�  +   ��  +   ǐ     �  	   �  ?  �  �.  N�     1�                ;   /              .   _       >                    M   ^          !   O   
   %   b   X   $      a      -       \   (       &   2       Y   N   l   J   U      Z      ?   E   7   6                 T   n           R   k   ,   e   [   `   g          d       V   1   "   j   =   B          I   o                   h       +      f   D   W   ]      4      c       G   0   S              8          5       A      )       @   L   <           #          '       C              F   *   P       :       9           	   H           3   i   Q   K          m       # cd /usr/ports/devel/subversion
# make install clean
 # cd /usr/src
# git checkout stable/13
 # cd /usr/src
# git pull --rebase
 # cd /usr/src
# make update SVN_UPDATE=yes
 # git clone -o freebsd https://git.FreeBSD.org/src.git /usr/src
 # pkg install git
 # pkg install subversion
 # svn checkout https://svn.FreeBSD.org/base/head /usr/src
 # svn checkout https://svn.FreeBSD.org/repository/branch lwcdir
 # svn update /usr/src
 # svn update lwcdir
 A checkout from a given repository is performed with a command like this: A lightweight version of Subversion is already installed on FreeBSD as `svnlite`.  The port or package version of Subversion is only needed if the Python or Perl API is needed, or if a later version of Subversion is desired. After the initial checkout, the local working copy can be updated by running: All official mirrors support IPv4 and IPv6. An alternate way of updating the local working copy after checkout is provided by the [.filename]#Makefile# in the [.filename]#/usr/ports#, [.filename]#/usr/src#, and [.filename]#/usr/doc# directories.  Set `SVN_UPDATE` and use the `update` target.  For example, to update [.filename]#/usr/src#: Appendix A. Obtaining FreeBSD As of December 2020, FreeBSD uses git as the primary version control system for storing all of FreeBSD's base source code and documentation.  As of April 2021, FreeBSD uses git as the only version control system for storing all of FreeBSD's Ports Collection. As of December 2020, FreeBSD uses git as the primary version control system for storing all of FreeBSD's source code and documentation.  Changes from the git repo on the `stable/11`, `stable/12` and related releng branches are exported to the subversion repository.  This export will continue through the life of these branches.  From July 2012 to March 2021, FreeBSD used Subversion as the only version control system for storing all of FreeBSD's Ports Collection.  As of April 2021, FreeBSD uses git as the only version control system for storing all of FreeBSD's Ports Collection. Because the initial checkout must download the full branch of the remote repository, it can take a while.  Please be patient. CD and DVD Sets Codeberg Dr. Hinner EDV + Schäftlarnstr. 10 // 4. Stock + D-81371 München + Germany + Phone: +49 171 417 544 6 + Email: infow@hinner.de + WWW: http://www.hinner.de/linux/freebsd.html ECDSA key fingerprint is `SHA256:/UlirUAsGiitupxmtsn7f9b7zCWd0vCs4Yo/tpVWP9w` ECDSA key fingerprint is `SHA256:seWO5D27ySURcx4bknTNKlC1mgai0whP443PAKEvvZA` ED25519 key fingerprint is `SHA256:lNR6i4BEOaaUhmDHBA1WJsO7H3KtvjE2r5q4sOxtIWo` ED25519 key fingerprint is `SHA256:y1ljKrKMD3lDObRUG3xJ9gXwEIuqnh306tSyFd1tuZE` External mirrors External mirrors maintained by project members are also available; please refer to the <<external-mirrors>> section. For Developers For More Information For information about write access to repositories see the extref:{committers-guide}[Committer's Guide, git-mini-primer]. For other information about using Subversion, please see the "Subversion Book", titled http://svnbook.red-bean.com/[Version Control with Subversion], or the http://subversion.apache.org/docs/[Subversion Documentation]. FreeBSD CD and DVD sets are available from several online retailers: FreeBSD Git Repository URL Table FreeBSD Mall, Inc. + 1164 Claremont Dr + Brentwood, CA + 94513 + USA + Phone: +1 925 240-6652 + Fax: +1 925 674-0821 + Email: info@freebsdmall.com + WWW: https://www.freebsdmall.com Getlinux + WWW: https://www.getlinux.fr/ Git can be installed from the Ports Collection, or as a package: Git is generally a developer tool.  Users may prefer to use `freebsd-update` (crossref:cutting-edge[updating-upgrading-freebsdupdate,“FreeBSD Update”]) to update the FreeBSD base system, and `portsnap` (crossref:ports[ports-using,“Using the Ports Collection”]) to update the FreeBSD Ports Collection. Git uses URLs to designate a repository.  There are three different repositories, `src` for the FreeBSD system source code, `doc` for documentation, and `ports` for the FreeBSD Ports Collection.  All three are reachable over two different protocols: HTTPS and SSH.  For example, the URL `https://git.FreeBSD.org/src.git` specifies the main branch of the `src` repository, using the `https` protocol. GitHub GitLab HTTPS is the preferred protocol, but the [.filename]#security/ca_root_nss# package will need to be installed in order to automatically validate certificates. How to get FreeBSD: CD and DVD sets, FTP sites and how to install and use Git If `svnlite` is unavailable or the full version of Subversion is needed, then it must be installed. Initially, the working tree contains source code for the `main` branch, which corresponds to CURRENT.  To switch to 13-STABLE instead: Installation Introduction Mailing lists Mirror list maintained by the community and other companies: Mirrors Move or delete an existing destination directory before using `checkout` for the first time.  Checkout over an existing non-`svn` directory can cause conflicts between the existing files and those brought in from the repository. Obtaining FreeBSD Official mirrors service: Part V. Appendices RSA key fingerprint is `SHA256:f453CUEFXEJAXlKeEHV+ajJfeEfx9MdKQUD7lIscnQI` RSA key fingerprint is `SHA256:jBe6FQGoH4HjvrIVM23dcnLZk9kmpdezR/CvQzm7rJM` Running Git Running Subversion SSH host keys Subversion Mirror Sites Subversion can also be installed as a package: Subversion can be installed from the Ports Collection: Subversion is generally a developer tool.  Users may prefer to use `freebsd-update` (crossref:cutting-edge[updating-upgrading-freebsdupdate,“FreeBSD Update”]) to update the FreeBSD base system, and `portsnap` (crossref:ports[ports-using,“Using the Ports Collection”]) to update the FreeBSD Ports Collection.  After March 2021, subversion use is only for legacy branches (`stable/11` and `stable/12`). Subversion uses URLs to designate a repository, taking the form of _protocol://hostname/path_.  The first component of the path is the FreeBSD repository to access.  There are three different repositories, `base` for the FreeBSD base system source code, `ports` for the Ports Collection, and `doc` for documentation.  For example, the URL `https://svn.FreeBSD.org/base/head/` specifies the main branch of the src repository, using the `https` protocol. Svnlite The FreeBSD Subversion repository is: The FreeBSD project uses cgit as the web-based repository browser: link:https://cgit.FreeBSD.org/[https://cgit.FreeBSD.org/]. The FreeBSD website (https://www.FreeBSD.org and https://docs.FreeBSD.org) are not hosted in the GeoDNS Infrastructure; there are ongoing studies of its implementation. The `-o freebsd` option specifies the origin; by convention in the FreeBSD documentation, the origin is assumed to be `freebsd`.  Because the initial checkout must download the full branch of the remote repository, it can take a while.  Please be patient. The current list of protocols supported by the community mirrors was last updated on 2022-01-31, and it's not guaranteed. The main mailing list for general usage and questions about git in the FreeBSD project is https://lists.freebsd.org/subscription/freebsd-git[freebsd-git].  For more details, including commit messages lists, see the crossref:handbook/eresources[eresources-mail, Mailing Lists] chapter. The official mirrors of the FreeBSD project are made up of many machines operated by the project cluster administrators and behind GeoDNS to direct users to the closest available mirror.  Current locations are Brazil, Japan (two sites), Malaysia, Netherlands, South Africa, Taiwan, United Kingdom, United States of America (California, New Jersey, and Washington). The only difference from normal Subversion use is that the command name is `svnlite`. The project is looking for new locations; those willing to sponsor, please reach out to the Cluster Administrators team for more information. The update is much quicker than a checkout, only transferring files that have changed. The working tree can be updated with `git pull`.  To update [.filename]#/usr/src# created in the example above, use: These are also published as SSHFP records in DNS. This example checks out the Source Tree from the FreeBSD repository using the HTTPS protocol, placing the local working copy in [.filename]#/usr/src#.  If [.filename]#/usr/src# is already present but was not created by `svn`, remember to rename or delete it before the checkout. This is a publicly accessible mirror network that uses GeoDNS to select an appropriate back end server.  To view the FreeBSD Subversion repositories through a browser, use https://svnweb.FreeBSD.org/[https://svnweb.FreeBSD.org/]. This section demonstrates how to install Git on a FreeBSD system and use it to create a local copy of a FreeBSD source code repository. This section demonstrates how to install Subversion on a FreeBSD system and use it to create a local copy of a FreeBSD repository. Additional information on the use of Subversion is included. Those mirrors are not hosted in FreeBSD.org but still maintained by the project members.  Users and developers are welcome to pull or browse repositories on those mirrors.  Pull requests for the `doc` GitHub repository are being accepted; otherwise, the project workflow with those mirrors is still under discussion. To clone a copy of the FreeBSD system source code repository: To fetch a clean copy of the sources into a local directory, use `git clone`.  This directory of files is called the _working tree_. To fetch a clean copy of the sources into a local directory, use `svn`.  The files in this directory are called a _local working copy_. To update [.filename]#/usr/src# created in the example above, use: Using Git Using Subversion Web-based repository browser _branch_ depends on the repository used. `ports` and `doc` are mostly updated in the `head` branch, while `base` maintains the latest version of -CURRENT under `head` and the respective latest versions of the -STABLE branches under `stable/11` (11._x_) and `stable/12` (12._x_). _lwcdir_ is the target directory where the contents of the specified branch should be placed. This is usually [.filename]#/usr/ports# for `ports`, [.filename]#/usr/src# for `base`, and [.filename]#/usr/doc# for `doc`. _repository_ is one of the Project repositories: `base`, `ports`, or `doc`. doc: https://codeberg.org/FreeBSD/freebsd-doc doc: https://github.com/freebsd/freebsd-doc doc: https://gitlab.com/FreeBSD/freebsd-doc git.FreeBSD.org host key fingerprints: gitrepo.FreeBSD.org host key fingerprints: http://ftp-archive.FreeBSD.org is not in the GeoDNS Infrastructure, hosted in only one location (US). ports: https://codeberg.org/FreeBSD/freebsd-ports ports: https://github.com/freebsd/freebsd-ports ports: https://gitlab.com/FreeBSD/freebsd-ports src: https://codeberg.org/FreeBSD/freebsd-src src: https://github.com/freebsd/freebsd-src src: https://gitlab.com/FreeBSD/freebsd-src svn.FreeBSD.org
 where: | Service Name | Protocols | More information

| **download.FreeBSD.org**
| link:https://download.FreeBSD.org/[https] link:ftp://download.FreeBSD.org/pub/FreeBSD/[ftp]
| Same content as `ftp.FreeBSD.org`, `ftp` is a legacy name; `download.FreeBSD.org` is recommended.

| **git.FreeBSD.org**
| git over `https` and `ssh`
| More details on link:https://docs.freebsd.org/en/books/handbook/mirrors/#git[using git] section.

| **pkg.FreeBSD.org**
| man:pkg[8] over `http` and `https`
| Official FreeBSD package repositories used by the man:pkg[8] program.
 |Country | Hostname | Protocols

| Australia icon:envelope[link=mailto:{mirrors-australia-email}, title="mirror contact"]
| ftp.au.FreeBSD.org
| link:http://ftp.au.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.au.FreeBSD.org/pub/FreeBSD[http_v6] link:rsync://ftp.au.FreeBSD.org[rsync] link:rsync://ftp.au.FreeBSD.org[rsync_v6]

|
| ftp3.au.FreeBSD.org
| link:http://ftp3.au.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp3.au.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp3.au.FreeBSD.org[rsync]

| Austria icon:envelope[link=mailto:{mirrors-austria-email}, title="mirror contact"]
| ftp.at.FreeBSD.org
| link:http://ftp.at.FreeBSD.org/pub/FreeBSD/[http] link:http://ftp.at.FreeBSD.org/pub/FreeBSD/[http_v6] link:ftp://ftp.at.FreeBSD.org/pub/FreeBSD/[ftp] link:ftp://ftp.at.FreeBSD.org/pub/FreeBSD/[ftp_v6] link:rsync://ftp.at.FreeBSD.org/pub/FreeBSD/[rsync] link:rsync://ftp.at.FreeBSD.org/pub/FreeBSD/[rsync_v6]

| Brazil icon:envelope[link=mailto:{mirrors-brazil-email}, title="mirror contact"]
| ftp2.br.FreeBSD.org
| link:http://ftp2.br.FreeBSD.org/FreeBSD[http] link:rsync://ftp2.br.FreeBSD.org[rsync] link:rsync://ftp2.br.FreeBSD.org[rsync_v6]

|
| ftp3.br.FreeBSD.org
| link:http://ftp3.br.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp3.br.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp3.br.FreeBSD.org[rsync]

| Bulgaria icon:envelope[link=mailto:{mirrors-bulgaria-email}, title="mirror contact"]
| ftp.bg.FreeBSD.org
| link:ftp://ftp.bg.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.bg.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.bg.FreeBSD.org[rsync] link:rsync://ftp.bg.FreeBSD.org[rsync_v6]

| Czech Republic icon:envelope[link=mailto:{mirrors-czech-email}, title="mirror contact"]
| ftp.cz.FreeBSD.org
| link:http://ftp.cz.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.cz.FreeBSD.org/pub/FreeBSD[http_v6] link:rsync://ftp.cz.FreeBSD.org[rsync] link:rsync://ftp.cz.FreeBSD.org[rsync_v6]

| Denmark icon:envelope[link=mailto:{mirrors-denmark-email}, title="mirror contact"]
| ftp.dk.FreeBSD.org
| link:http://ftp.dk.FreeBSD.org/FreeBSD/[http] link:http://ftp.dk.FreeBSD.org/FreeBSD/[http_v6] link:ftp://ftp.dk.FreeBSD.org/FreeBSD/[ftp] link:ftp://ftp.dk.FreeBSD.org/FreeBSD/[ftp_v6] link:rsync://ftp.dk.FreeBSD.org/FreeBSD/[rsync] link:rsync://ftp.dk.FreeBSD.org/FreeBSD/[rsync_v6]

| Finland icon:envelope[link=mailto:{mirrors-finland-email}, title="mirror contact"]
| ftp.fi.FreeBSD.org
| link:ftp://ftp.fi.FreeBSD.org/pub/FreeBSD[ftp]

| France icon:envelope[link=mailto:{mirrors-france-email}, title="mirror contact"]
| ftp.fr.FreeBSD.org
| link:http://ftp.fr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.fr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.fr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.fr.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.fr.FreeBSD.org[rsync] link:rsync://ftp.fr.FreeBSD.org[rsync_v6]

|
| ftp3.fr.FreeBSD.org
| link:ftp://ftp3.fr.FreeBSD.org/pub/FreeBSD[ftp]

|
| ftp6.fr.FreeBSD.org
| link:http://ftp6.fr.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp6.fr.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp6.fr.FreeBSD.org[rsync]

| Germany icon:envelope[link=mailto:{mirrors-germany-email}, title="mirror contact"]
| ftp.de.FreeBSD.org
| link:ftp://ftp.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.de.FreeBSD.org[rsync] link:rsync://ftp.de.FreeBSD.org[rsync_v6]

|
| ftp1.de.FreeBSD.org
| link:http://ftp1.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp1.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp1.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp1.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp1.de.FreeBSD.org[rsync] link:rsync://ftp1.de.FreeBSD.org[rsync_v6]

|
| ftp2.de.FreeBSD.org
| link:http://ftp2.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp2.de.FreeBSD.org[rsync] link:rsync://ftp2.de.FreeBSD.org[rsync_v6]

|
| ftp5.de.FreeBSD.org
| link:ftp://ftp5.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp5.de.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp7.de.FreeBSD.org
| link:http://ftp7.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp7.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp7.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp7.de.FreeBSD.org/pub/FreeBSD[ftp_v6]

| Greece icon:envelope[link=mailto:{mirrors-greece-email}, title="mirror contact"]
| ftp.gr.FreeBSD.org
| link:http://ftp.gr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.gr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.gr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.gr.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp2.gr.FreeBSD.org
| link:http://ftp2.gr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.gr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.gr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.gr.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp2.gr.FreeBSD.org[rsync]

| Japan icon:envelope[link=mailto:{mirrors-japan-email}, title="mirror contact"]
| ftp.jp.FreeBSD.org
| link:http://ftp.jp.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.jp.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.jp.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.jp.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.jp.FreeBSD.org[rsync] link:rsync://ftp.jp.FreeBSD.org[rsync_v6]

|
| ftp2.jp.FreeBSD.org
| link:ftp://ftp2.jp.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.jp.FreeBSD.org[rsync] link:rsync://ftp2.jp.FreeBSD.org[rsync_v6]

|
| ftp3.jp.FreeBSD.org
| link:http://ftp3.jp.FreeBSD.org/pub/FreeBSD[http] link:rsync://ftp3.jp.FreeBSD.org[rsync]

|
| ftp4.jp.FreeBSD.org
| link:ftp://ftp4.jp.FreeBSD.org/pub/FreeBSD[ftp]

|
| ftp6.jp.FreeBSD.org
| link:http://ftp6.jp.FreeBSD.org/pub/FreeBSD[http] link:http://ftp6.jp.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp6.jp.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp6.jp.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp6.jp.FreeBSD.org[rsync] link:rsync://ftp6.jp.FreeBSD.org[rsync_v6]

| Korea icon:envelope[link=mailto:{mirrors-korea-email}, title="mirror contact"]
| ftp.kr.FreeBSD.org
| link:http://ftp.kr.FreeBSD.org/pub/FreeBSD[http] link:https://ftp.kr.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp.kr.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp.kr.FreeBSD.org[rsync]

|
| ftp2.kr.FreeBSD.org
| link:rsync://ftp2.kr.FreeBSD.org[rsync]

| Latvia icon:envelope[link=mailto:{mirrors-latvia-email}, title="mirror contact"]
| ftp.lv.FreeBSD.org
| link:http://ftp.lv.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.lv.FreeBSD.org/pub/FreeBSD[ftp]

| Netherlands icon:envelope[link=mailto:{mirrors-netherlands-email}, title="mirror contact"]
| ftp.nl.FreeBSD.org
| link:http://ftp.nl.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.nl.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.nl.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.nl.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.nl.FreeBSD.org[rsync] link:rsync://ftp.nl.FreeBSD.org[rsync_v6]

|
| ftp2.nl.FreeBSD.org
| link:http://ftp2.nl.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp2.nl.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.nl.FreeBSD.org[rsync]

| New Zealand icon:envelope[link=mailto:{mirrors-new-zealand-email}, title="mirror contact"]
| ftp.nz.FreeBSD.org
| link:http://ftp.nz.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.nz.FreeBSD.org/pub/FreeBSD[ftp]

| Norway icon:envelope[link=mailto:{mirrors-norway-email}, title="mirror contact"]
| ftp.no.FreeBSD.org
| link:ftp://ftp.no.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.no.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.no.FreeBSD.org[rsync] link:rsync://ftp.no.FreeBSD.org[rsync_v6]

| Poland icon:envelope[link=mailto:{mirrors-poland-email}, title="mirror contact"]
| ftp.pl.FreeBSD.org
| link:http://ftp.pl.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.pl.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.pl.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp.pl.FreeBSD.org[rsync] link:rsync://ftp.pl.FreeBSD.org[rsync_v6]

| Russia icon:envelope[link=mailto:{mirrors-russia-email}, title="mirror contact"]
| ftp.ru.FreeBSD.org
| link:http://ftp.ru.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.ru.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.ru.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.ru.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.ru.FreeBSD.org[rsync] link:rsync://ftp.ru.FreeBSD.org[rsync_v6]

|
| ftp2.ru.FreeBSD.org
| link:https://ftp2.ru.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp2.ru.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.ru.FreeBSD.org[rsync]

| Slovenia icon:envelope[link=mailto:{mirrors-slovenia-email}, title="mirror contact"]
| ftp.si.FreeBSD.org
| link:http://ftp.si.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.si.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.si.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.si.FreeBSD.org/pub/FreeBSD[ftp_v6]

| South Africa icon:envelope[link=mailto:{mirrors-south-africa-email}, title="mirror contact"]
| ftp.za.FreeBSD.org
| link:https://ftp.za.FreeBSD.org/pub/FreeBSD[https] link:https://ftp.za.FreeBSD.org/pub/FreeBSD[https_v6] link:rsync://ftp.za.FreeBSD.org[rsync] link:rsync://ftp.za.FreeBSD.org[rsync_v6]

|
| ftp2.za.FreeBSD.org
| link:http://ftp2.za.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.za.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.za.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp4.za.FreeBSD.org
| link:http://ftp4.za.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp4.za.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp4.za.FreeBSD.org[rsync]

| Sweden icon:envelope[link=mailto:{mirrors-sweden-email}, title="mirror contact"]
| ftp.se.FreeBSD.org
| link:http://ftp.se.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.se.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.se.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.se.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.se.FreeBSD.org[rsync] link:rsync://ftp.se.FreeBSD.org[rsync_v6]

| Taiwan icon:envelope[link=mailto:{mirrors-taiwan-email}, title="mirror contact"]
| ftp4.tw.FreeBSD.org
| link:https://ftp4.tw.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp4.tw.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp4.tw.FreeBSD.org[rsync]

|
| ftp5.tw.FreeBSD.org
| link:http://ftp5.tw.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp5.tw.FreeBSD.org/pub/FreeBSD[ftp]

| Ukraine icon:envelope[link=mailto:{mirrors-ukraine-email}, title="mirror contact"]
| ftp.ua.FreeBSD.org
| link:http://ftp.ua.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.ua.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.ua.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.ua.FreeBSD.org[rsync] link:rsync://ftp.ua.FreeBSD.org[rsync_v6]

| United Kingdom icon:envelope[link=mailto:{mirrors-uk-email}, title="mirror contact"]
| ftp.uk.FreeBSD.org
| link:http://ftp.uk.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.uk.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.uk.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.uk.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.uk.FreeBSD.org[rsync] link:rsync://ftp.uk.FreeBSD.org[rsync_v6]

|
| ftp2.uk.FreeBSD.org
| link:http://ftp2.uk.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.uk.FreeBSD.org/pub/FreeBSD[http_v6] link:https://ftp2.uk.FreeBSD.org/pub/FreeBSD[https] link:https://ftp2.uk.FreeBSD.org/pub/FreeBSD[https_v6] link:ftp://ftp2.uk.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.uk.FreeBSD.org/pub/FreeBSD[ftp_v6]

| United States of America icon:envelope[link=mailto:{mirrors-us-email}, title="mirror contact"]
| ftp11.FreeBSD.org
| link:http://ftp11.FreeBSD.org/pub/FreeBSD[http] link:http://ftp11.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp11.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp11.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp11.FreeBSD.org[rsync] link:rsync://ftp11.FreeBSD.org[rsync_v6]

|
| ftp14.FreeBSD.org
| link:ftp://ftp14.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp14.FreeBSD.org[rsync] (Former official tier 1)

|
| ftp5.FreeBSD.org
| link:http://ftp5.FreeBSD.org/pub/FreeBSD[http] link:http://ftp5.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp5.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp5.FreeBSD.org/pub/FreeBSD[ftp_v6]
 |Item | Git URL
| Read-only src repo via HTTPS             | `https://git.FreeBSD.org/src.git`
| Read-only src repo via anon-ssh          | `ssh://anongit@git.FreeBSD.org/src.git`
| Read-only doc repo via HTTPS             | `https://git.FreeBSD.org/doc.git`
| Read-only doc repo via anon-ssh          | `ssh://anongit@git.FreeBSD.org/doc.git`
| Read-only ports repo via HTTPS           | `https://git.FreeBSD.org/ports.git`
| Read-only ports repo via anon-ssh        | `ssh://anongit@git.FreeBSD.org/ports.git`
 Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-03-25 02:42+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
 # cd /usr/ports/devel/subversion
# make install clean
 # cd /usr/src
# git checkout stable/13
 # cd /usr/src
# git pull --rebase
 # cd /usr/src
# make update SVN_UPDATE=yes
 # git clone -o freebsd https://git.FreeBSD.org/src.git /usr/src
 # pkg install git
 # pkg install subversion
 # svn checkout https://svn.FreeBSD.org/base/head /usr/src
 # svn checkout https://svn.FreeBSD.org/repository/branch lwcdir
 # svn update /usr/src
 # svn update lwcdir
 从一个给定的版本库中签出，可以用这样的命令进行： 一个轻量级的 Subversion 版本已经作为 `svnlite` 安装在 FreeBSD 上。只有在需要 Python 或 Perl API，或者需要较高版本的 Subversion 时，才需要移植或软件包版本的 Subversion。 在初始签出后，可以通过运行本地工作副本来更新： 所有的官方镜像都支持 IPv4 和 IPv6。 另一种在签出后更新本地工作拷贝的方法是由 .filename]#/usr/ports#, [.filename]#/usr/src# 和 [.filename]#/usr/doc# 目录中的 [.filename]#Makefile# 提供的。设置 `SVN_UPDATE` 并使用 `update` 更新目标。例如，要更新 [.filename]#/usr/src#： 附录 A. 获取 FreeBSD 从2020年12月起，FreeBSD 使用 git 作为主要的版本控制系统来存储所有 FreeBSD 的基本源代码和文档。从 2021 年 4 月起，FreeBSD 使用 git 作为唯一的版本控制系统来存储所有的 FreeBSD 的 port 集。 从 2020 年 12 月起，FreeBSD 使用 git 作为主要的版本控制系统来存储所有 FreeBSD 的源代码和文档。在 `stable/11`, `stable/12` 和相关的 releng 分支上的 git repo 的改动会被导出到 subversion 仓库中。这种输出将持续到这些分支的生命周期。从 2012 年 7 月到 2021 年 3 月，FreeBSD 使用 Subversion 作为唯一的版本控制系统来存储所有 FreeBSD 的 Ports Collection。从 2021 年 4 月起，FreeBSD 使用 git 作为存储所有 FreeBSD Ports Collection 的唯一版本控制系统。 因为初始签出必须下载远程版本库的完整分支，所以可能需要一些时间。请耐心等待。 CD 和 DVD 套装 Codeberg Dr. Hinner EDV + Schäftlarnstr. 10 // 4. Stock + D-81371 München + Germany + Phone: +49 171 417 544 6 + Email: infow@hinner.de + WWW: http://www.hinner.de/linux/freebsd.html ECDSA key fingerprint is `SHA256:/UlirUAsGiitupxmtsn7f9b7zCWd0vCs4Yo/tpVWP9w` ECDSA key fingerprint is `SHA256:seWO5D27ySURcx4bknTNKlC1mgai0whP443PAKEvvZA` ED25519 key fingerprint is `SHA256:lNR6i4BEOaaUhmDHBA1WJsO7H3KtvjE2r5q4sOxtIWo` ED25519 key fingerprint is `SHA256:y1ljKrKMD3lDObRUG3xJ9gXwEIuqnh306tSyFd1tuZE` 外部镜像 由项目成员维护的外部镜像也可以使用，请参考<<external-mirrors>>部分。 对于开发者 了解更多信息 关于对存储库的写入权限的信息，请参见 extref:{committers-guide}[Committer’s Guide, git-mini-primer]。 关于使用 Subversion 的其他信息，请参见 “Subversion Book”，标题为 http://svnbook.red-bean.com/[使用 Subversion 进行版本控制]，或 http://subversion.apache.org/docs/[Subversion 文档]。 FreeBSD 的 CD 和 DVD 套装可以从以下几个在线零售商那里买到： FreeBSD Git 仓库的 URL 表 FreeBSD Mall, Inc. + 1164 Claremont Dr + Brentwood, CA + 94513 + USA + Phone: +1 925 240-6652 + Fax: +1 925 674-0821 + Email: info@freebsdmall.com + WWW: https://www.freebsdmall.com Getlinux + WWW: https://www.getlinux.fr/ Git 可以从 Ports Collection 中安装，也可以作为一个软件包安装： Git 通常是一个开发者工具。用户可能更喜欢使用 `freebsd-update` (crossref:cutting-edge[updating-upgrading-freebsdupdate,“FreeBSD 更新”]) 来更新 FreeBSD 基本系统，以及 `portsnap` (crossref:ports[ports-using,“使用 Ports Collection”) 来更新 FreeBSD Ports Collection。 Git 使用 URL 来指定一个仓库。有三个不同的仓库，`src` 是指 FreeBSD 系统的源代码，`doc` 是指文档，而 `ports` 则是指 FreeBSD Ports Collection。这三个库都可以通过两种不同的协议到达：HTTPS 和 SSH。例如，URL `https://git.FreeBSD.org/src.git` 指定了 `src` 仓库的主分支，并使用了 `https` 协议。 GitHub GitLab HTTPS 是首选协议，但需要安装 [.filename]#security/ca_root_nss# 软件包，以便自动验证证书。 如何获得 FreeBSD：CD 和 DVD 套装、FTP 站点以及如何安装和使用 Git 如果 `svnlite` 不可用或者需要完整版的 Subversion，那么必须手动安装它。 最初，工作树包含主分支的源代码，对应的是 CURRENT。要切换到 13-STABLE，而不是： 安装 简介 邮件列表 由社区和其他公司维护的镜像列表： 镜像站 在第一次使用 `checkout` 之前，移动或删除现有的目标目录。在现有的非 `svn` 目录上进行签出会导致现有文件和从版本库带入的文件之间的冲突。 获取 FreeBSD 官方镜像服务: 第五部分：附录 RSA key fingerprint is `SHA256:f453CUEFXEJAXlKeEHV+ajJfeEfx9MdKQUD7lIscnQI` RSA key fingerprint is `SHA256:jBe6FQGoH4HjvrIVM23dcnLZk9kmpdezR/CvQzm7rJM` 运行 Git 运行 Subversion SSH 主机密钥 Subversion 镜像站 Subversion 可以从 Ports Collection 中安装： Subversion 可以从 Ports Collection 中安装： Subversion 通常是一个开发者工具。用户可能更喜欢使用 `freebsd-update`（crossref:cutting-edge[updating-upgrading-freebsdupdate,“FreeBSD 更新”）来更新 FreeBSD 基本系统，以及 `portsnap` (crossref:ports[ports-using,“使用 Ports Collection”]) 来更新 FreeBSD Ports Collection。在 2021 年 3 月之后，subversion的使用只针对传统的分支(`stable/11` 和 `stable/12`)。 Subversion 使用 URL 来指定一个版本库，其形式为 _protocol://hostname/path_。路径的第一个组成部分是要访问的 FreeBSD 代码库。有三个不同的版本库，`base` 是 FreeBSD 基本系统的源代码，`ports` 是 Ports Collection，`doc` 是文档。例如，URL `https://svn.FreeBSD.org/base/head/` 使用 https 协议指定了 src 代码库的主分支。 Svnlite FreeBSD 的 Subversion 存储库是: FreeBSD 项目使用 cgit 作为基于网络的版本库浏览器： link:https://cgit.FreeBSD.org/[https://cgit.FreeBSD.org/]。 FreeBSD 网站(https://www.FreeBSD.org 和 https://docs.FreeBSD.org)没有被托管在 GeoDNS 基础设施中；目前正在对其实施进行研究。 -o freebsd 选项指定了源；根据 FreeBSD 文档的惯例，源被假定为 freebsd。因为初始签出必须下载远程仓库的完整分支，所以可能需要一些时间。请耐心等待。 前社区镜像支持的协议列表最后一次更新是在 2022-01-31，但并做不保证。 在FreeBSD项目中，关于 git 的一般使用和问题的主要邮件列表是 https://lists.freebsd.org/subscription/freebsd-git[freebsd-git]。更多细节，包括提交信息列表，请参见 crossref:handbook/eresources[eresources-mail, 邮件列表] 章节。 FreeBSD 项目的官方镜像是由许多机器组成的，这些机器由项目集群管理员操作，并在 GeoDNS 后面引导用户到最近的可用镜像。目前的位置是巴西、日本（两个站点）、马来西亚、荷兰、南非、台湾、英国、美国（加利福尼亚、新泽西和华盛顿）。 与正常的 Subversion 使用的唯一区别是，命令的名字是 `svnlite`。 该项目正在寻找新的站点；那些愿意赞助的人，请联系群组管理员团队以获得更多信息。 更新比签出要快得多，只传输有变化的文件。 工作树可以用 `git pull` 更新。要更新上面的例子中创建的 [.filename]#/usr/src，请使用： 这些也作为 SSHFP 记录在 DNS 中公布。 这个例子使用 HTTPS 协议从 FreeBSD 版本库中签出源代码树，将本地工作拷贝放在 [.filename]#/usr/src# 中。如果 [.filename]#/usr/src# 已经存在，但不是由 `svn` 创建的，记得在签出前重命名或删除它。 这是一个可以公开访问的镜像网络，使用 GeoDNS 来选择合适的后端服务器。要通过浏览器查看 FreeBSD Subversion 仓库，请使用https://svnweb.FreeBSD.org/[https://svnweb.FreeBSD.org/]。 这一节演示了如何在 FreeBSD 系统上安装 Git 并使用它来创建 FreeBSD 源代码仓库的本地拷贝。 这一节演示了如何在 FreeBSD 系统上安装 Subversion 并使用它来创建 FreeBSD 版本库的本地副本。还包括了关于使用 Subversion 的其他信息。 这些镜像并不在 FreeBSD.org 中托管，但仍由项目成员维护。我们欢迎用户和开发人员拉取或浏览这些镜像上的仓库。目前正在接受对 `doc` GitHub 仓库的拉取请求；除此之外，项目与这些镜像的工作流程仍在讨论中。 要克隆一份 FreeBSD 系统源代码库的副本： 要取一个干净的源码拷贝到本地目录，请使用 `git clone`。这个目录下的文件被称为 _工作树_。 要获取一个干净的源代码拷贝到本地目录中，请使用 `svn`。这个目录中的文件被称为 _本地工作副本_。 要更新上面例子中创建的 [.filename]#/usr/src#，请使用： 使用 Git 使用 Subversion 于网络的资源库浏览器 _分支_ 取决于所使用的版本库。`ports` 和 `doc` 主要在 head 分支中更新，而 `base` 则在 `hea`d 下维护最新的 -CURRENT 版本，在 `stable/11`（11.x）和 `stable/12`（12.x）下维护各自的最新版本 -STABLE 分支。 _lwcdir_ 是指定分支的内容应被放置的目标目录。对于 `ports` 来说，这通常是 [.filename]#/usr/ports#，对于 `base` 来说是 [.filename]#/usr/src#，而对于 `doc` 来说是 [.filename]#/usr/doc#。 _仓库_ 是项目仓库中的一个：`base`、`ports` 或 `doc`。 doc: https://codeberg.org/FreeBSD/freebsd-doc doc: https://github.com/freebsd/freebsd-doc doc: https://gitlab.com/FreeBSD/freebsd-doc git.FreeBSD.org host key fingerprints: gitrepo.FreeBSD.org host key fingerprints: http://ftp-archive.FreeBSD.org 不在 GeoDNS 基础设施内，只在一个地方（美国）托管。 ports: https://codeberg.org/FreeBSD/freebsd-ports ports: https://github.com/freebsd/freebsd-ports ports: https://gitlab.com/FreeBSD/freebsd-ports src: https://codeberg.org/FreeBSD/freebsd-src src: https://github.com/freebsd/freebsd-src src: https://gitlab.com/FreeBSD/freebsd-src svn.FreeBSD.org
 其中： | Service Name | Protocols | More information

| **download.FreeBSD.org**
| link:https://download.FreeBSD.org/[https] link:ftp://download.FreeBSD.org/pub/FreeBSD/[ftp]
| Same content as `ftp.FreeBSD.org`, `ftp` is a legacy name; `download.FreeBSD.org` is recommended.

| **git.FreeBSD.org**
| site:github.com over `https` and `ssh`
| More details on link:https://docs.freebsd.org/en/books/handbook/mirrors/#git[using site:github.com] section.

| **pkg.FreeBSD.org**
| man:pkg[8] over `http` and `https`
| Official FreeBSD package repositories used by the man:pkg[8] program.
 |Country | Hostname | Protocols

| Australia icon:envelope[link=mailto:{mirrors-australia-email}, title="mirror contact"]
| ftp.au.FreeBSD.org
| link:http://ftp.au.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.au.FreeBSD.org/pub/FreeBSD[http_v6] link:rsync://ftp.au.FreeBSD.org[rsync] link:rsync://ftp.au.FreeBSD.org[rsync_v6]

|
| ftp3.au.FreeBSD.org
| link:http://ftp3.au.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp3.au.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp3.au.FreeBSD.org[rsync]

| Austria icon:envelope[link=mailto:{mirrors-austria-email}, title="mirror contact"]
| ftp.at.FreeBSD.org
| link:http://ftp.at.FreeBSD.org/pub/FreeBSD/[http] link:http://ftp.at.FreeBSD.org/pub/FreeBSD/[http_v6] link:ftp://ftp.at.FreeBSD.org/pub/FreeBSD/[ftp] link:ftp://ftp.at.FreeBSD.org/pub/FreeBSD/[ftp_v6] link:rsync://ftp.at.FreeBSD.org/pub/FreeBSD/[rsync] link:rsync://ftp.at.FreeBSD.org/pub/FreeBSD/[rsync_v6]

| Brazil icon:envelope[link=mailto:{mirrors-brazil-email}, title="mirror contact"]
| ftp2.br.FreeBSD.org
| link:http://ftp2.br.FreeBSD.org/FreeBSD[http] link:rsync://ftp2.br.FreeBSD.org[rsync] link:rsync://ftp2.br.FreeBSD.org[rsync_v6]

|
| ftp3.br.FreeBSD.org
| link:http://ftp3.br.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp3.br.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp3.br.FreeBSD.org[rsync]

| Bulgaria icon:envelope[link=mailto:{mirrors-bulgaria-email}, title="mirror contact"]
| ftp.bg.FreeBSD.org
| link:ftp://ftp.bg.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.bg.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.bg.FreeBSD.org[rsync] link:rsync://ftp.bg.FreeBSD.org[rsync_v6]

| Czech Republic icon:envelope[link=mailto:{mirrors-czech-email}, title="mirror contact"]
| ftp.cz.FreeBSD.org
| link:http://ftp.cz.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.cz.FreeBSD.org/pub/FreeBSD[http_v6] link:rsync://ftp.cz.FreeBSD.org[rsync] link:rsync://ftp.cz.FreeBSD.org[rsync_v6]

| Denmark icon:envelope[link=mailto:{mirrors-denmark-email}, title="mirror contact"]
| ftp.dk.FreeBSD.org
| link:http://ftp.dk.FreeBSD.org/FreeBSD/[http] link:http://ftp.dk.FreeBSD.org/FreeBSD/[http_v6] link:ftp://ftp.dk.FreeBSD.org/FreeBSD/[ftp] link:ftp://ftp.dk.FreeBSD.org/FreeBSD/[ftp_v6] link:rsync://ftp.dk.FreeBSD.org/FreeBSD/[rsync] link:rsync://ftp.dk.FreeBSD.org/FreeBSD/[rsync_v6]

| Finland icon:envelope[link=mailto:{mirrors-finland-email}, title="mirror contact"]
| ftp.fi.FreeBSD.org
| link:ftp://ftp.fi.FreeBSD.org/pub/FreeBSD[ftp]

| France icon:envelope[link=mailto:{mirrors-france-email}, title="mirror contact"]
| ftp.fr.FreeBSD.org
| link:http://ftp.fr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.fr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.fr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.fr.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.fr.FreeBSD.org[rsync] link:rsync://ftp.fr.FreeBSD.org[rsync_v6]

|
| ftp3.fr.FreeBSD.org
| link:ftp://ftp3.fr.FreeBSD.org/pub/FreeBSD[ftp]

|
| ftp6.fr.FreeBSD.org
| link:http://ftp6.fr.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp6.fr.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp6.fr.FreeBSD.org[rsync]

| Germany icon:envelope[link=mailto:{mirrors-germany-email}, title="mirror contact"]
| ftp.de.FreeBSD.org
| link:ftp://ftp.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.de.FreeBSD.org[rsync] link:rsync://ftp.de.FreeBSD.org[rsync_v6]

|
| ftp1.de.FreeBSD.org
| link:http://ftp1.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp1.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp1.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp1.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp1.de.FreeBSD.org[rsync] link:rsync://ftp1.de.FreeBSD.org[rsync_v6]

|
| ftp2.de.FreeBSD.org
| link:http://ftp2.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.de.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp2.de.FreeBSD.org[rsync] link:rsync://ftp2.de.FreeBSD.org[rsync_v6]

|
| ftp5.de.FreeBSD.org
| link:ftp://ftp5.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp5.de.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp7.de.FreeBSD.org
| link:http://ftp7.de.FreeBSD.org/pub/FreeBSD[http] link:http://ftp7.de.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp7.de.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp7.de.FreeBSD.org/pub/FreeBSD[ftp_v6]

| Greece icon:envelope[link=mailto:{mirrors-greece-email}, title="mirror contact"]
| ftp.gr.FreeBSD.org
| link:http://ftp.gr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.gr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.gr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.gr.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp2.gr.FreeBSD.org
| link:http://ftp2.gr.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.gr.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.gr.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.gr.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp2.gr.FreeBSD.org[rsync]

| Japan icon:envelope[link=mailto:{mirrors-japan-email}, title="mirror contact"]
| ftp.jp.FreeBSD.org
| link:http://ftp.jp.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.jp.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.jp.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.jp.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.jp.FreeBSD.org[rsync] link:rsync://ftp.jp.FreeBSD.org[rsync_v6]

|
| ftp2.jp.FreeBSD.org
| link:ftp://ftp2.jp.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.jp.FreeBSD.org[rsync] link:rsync://ftp2.jp.FreeBSD.org[rsync_v6]

|
| ftp3.jp.FreeBSD.org
| link:http://ftp3.jp.FreeBSD.org/pub/FreeBSD[http] link:rsync://ftp3.jp.FreeBSD.org[rsync]

|
| ftp4.jp.FreeBSD.org
| link:ftp://ftp4.jp.FreeBSD.org/pub/FreeBSD[ftp]

|
| ftp6.jp.FreeBSD.org
| link:http://ftp6.jp.FreeBSD.org/pub/FreeBSD[http] link:http://ftp6.jp.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp6.jp.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp6.jp.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp6.jp.FreeBSD.org[rsync] link:rsync://ftp6.jp.FreeBSD.org[rsync_v6]

| Korea icon:envelope[link=mailto:{mirrors-korea-email}, title="mirror contact"]
| ftp.kr.FreeBSD.org
| link:http://ftp.kr.FreeBSD.org/pub/FreeBSD[http] link:https://ftp.kr.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp.kr.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp.kr.FreeBSD.org[rsync]

|
| ftp2.kr.FreeBSD.org
| link:rsync://ftp2.kr.FreeBSD.org[rsync]

| Latvia icon:envelope[link=mailto:{mirrors-latvia-email}, title="mirror contact"]
| ftp.lv.FreeBSD.org
| link:http://ftp.lv.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.lv.FreeBSD.org/pub/FreeBSD[ftp]

| Netherlands icon:envelope[link=mailto:{mirrors-netherlands-email}, title="mirror contact"]
| ftp.nl.FreeBSD.org
| link:http://ftp.nl.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.nl.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.nl.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.nl.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.nl.FreeBSD.org[rsync] link:rsync://ftp.nl.FreeBSD.org[rsync_v6]

|
| ftp2.nl.FreeBSD.org
| link:http://ftp2.nl.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp2.nl.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.nl.FreeBSD.org[rsync]

| New Zealand icon:envelope[link=mailto:{mirrors-new-zealand-email}, title="mirror contact"]
| ftp.nz.FreeBSD.org
| link:http://ftp.nz.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.nz.FreeBSD.org/pub/FreeBSD[ftp]

| Norway icon:envelope[link=mailto:{mirrors-norway-email}, title="mirror contact"]
| ftp.no.FreeBSD.org
| link:ftp://ftp.no.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.no.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.no.FreeBSD.org[rsync] link:rsync://ftp.no.FreeBSD.org[rsync_v6]

| Poland icon:envelope[link=mailto:{mirrors-poland-email}, title="mirror contact"]
| ftp.pl.FreeBSD.org
| link:http://ftp.pl.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.pl.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.pl.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp.pl.FreeBSD.org[rsync] link:rsync://ftp.pl.FreeBSD.org[rsync_v6]

| Russia icon:envelope[link=mailto:{mirrors-russia-email}, title="mirror contact"]
| ftp.ru.FreeBSD.org
| link:http://ftp.ru.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.ru.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.ru.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.ru.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.ru.FreeBSD.org[rsync] link:rsync://ftp.ru.FreeBSD.org[rsync_v6]

|
| ftp2.ru.FreeBSD.org
| link:https://ftp2.ru.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp2.ru.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp2.ru.FreeBSD.org[rsync]

| Slovenia icon:envelope[link=mailto:{mirrors-slovenia-email}, title="mirror contact"]
| ftp.si.FreeBSD.org
| link:http://ftp.si.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.si.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.si.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.si.FreeBSD.org/pub/FreeBSD[ftp_v6]

| South Africa icon:envelope[link=mailto:{mirrors-south-africa-email}, title="mirror contact"]
| ftp.za.FreeBSD.org
| link:https://ftp.za.FreeBSD.org/pub/FreeBSD[https] link:https://ftp.za.FreeBSD.org/pub/FreeBSD[https_v6] link:rsync://ftp.za.FreeBSD.org[rsync] link:rsync://ftp.za.FreeBSD.org[rsync_v6]

|
| ftp2.za.FreeBSD.org
| link:http://ftp2.za.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.za.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp2.za.FreeBSD.org/pub/FreeBSD[ftp_v6]

|
| ftp4.za.FreeBSD.org
| link:http://ftp4.za.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp4.za.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp4.za.FreeBSD.org[rsync]

| Sweden icon:envelope[link=mailto:{mirrors-sweden-email}, title="mirror contact"]
| ftp.se.FreeBSD.org
| link:http://ftp.se.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.se.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.se.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.se.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.se.FreeBSD.org[rsync] link:rsync://ftp.se.FreeBSD.org[rsync_v6]

| Taiwan icon:envelope[link=mailto:{mirrors-taiwan-email}, title="mirror contact"]
| ftp4.tw.FreeBSD.org
| link:https://ftp4.tw.FreeBSD.org/pub/FreeBSD[https] link:ftp://ftp4.tw.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp4.tw.FreeBSD.org[rsync]

|
| ftp5.tw.FreeBSD.org
| link:http://ftp5.tw.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp5.tw.FreeBSD.org/pub/FreeBSD[ftp]

| Ukraine icon:envelope[link=mailto:{mirrors-ukraine-email}, title=“mirror contact”]
| ftp.ua.FreeBSD.org
| link:http://ftp.ua.FreeBSD.org/pub/FreeBSD[http] link:ftp://ftp.ua.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.ua.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.ua.FreeBSD.org[rsync] link:rsync://ftp.ua.FreeBSD.org[rsync_v6]

| United Kingdom icon:envelope[link=mailto:{mirrors-uk-email}, title=“mirror contact”]
| ftp.uk.FreeBSD.org
| link:http://ftp.uk.FreeBSD.org/pub/FreeBSD[http] link:http://ftp.uk.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp.uk.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp.uk.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp.uk.FreeBSD.org[rsync] link:rsync://ftp.uk.FreeBSD.org[rsync_v6]

|
| ftp2.uk.FreeBSD.org
| link:http://ftp2.uk.FreeBSD.org/pub/FreeBSD[http] link:http://ftp2.uk.FreeBSD.org/pub/FreeBSD[http_v6] link:https://ftp2.uk.FreeBSD.org/pub/FreeBSD[https] link:https://ftp2.uk.FreeBSD.org/pub/FreeBSD[https_v6] link:ftp://ftp2.uk.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp2.uk.FreeBSD.org/pub/FreeBSD[ftp_v6]

| United States of America icon:envelope[link=mailto:{mirrors-us-email}, title=“mirror contact”]
| ftp11.FreeBSD.org
| link:http://ftp11.FreeBSD.org/pub/FreeBSD[http] link:http://ftp11.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp11.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp11.FreeBSD.org/pub/FreeBSD[ftp_v6] link:rsync://ftp11.FreeBSD.org[rsync] link:rsync://ftp11.FreeBSD.org[rsync_v6]

|
| ftp14.FreeBSD.org
| link:ftp://ftp14.FreeBSD.org/pub/FreeBSD[ftp] link:rsync://ftp14.FreeBSD.org[rsync] (Former official tier 1)

|
| ftp5.FreeBSD.org
| link:http://ftp5.FreeBSD.org/pub/FreeBSD[http] link:http://ftp5.FreeBSD.org/pub/FreeBSD[http_v6] link:ftp://ftp5.FreeBSD.org/pub/FreeBSD[ftp] link:ftp://ftp5.FreeBSD.org/pub/FreeBSD[ftp_v6]
 |Item | Git URL
| Read-only src repo via HTTPS             | `https://git.FreeBSD.org/src.git`
| Read-only src repo via anon-ssh          | `ssh://anongit@git.FreeBSD.org/src.git`
| Read-only doc repo via HTTPS             | `https://git.FreeBSD.org/doc.git`
| Read-only doc repo via anon-ssh          | `ssh://anongit@git.FreeBSD.org/doc.git`
| Read-only ports repo via HTTPS           | `https://git.FreeBSD.org/ports.git`
| Read-only ports repo via anon-ssh        | `ssh://anongit@git.FreeBSD.org/ports.git`
 