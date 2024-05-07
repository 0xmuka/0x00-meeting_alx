# 0x00-images

> **وَأَن لَّيْسَ لِلْإِنسَانِ إِلَّا مَا سَعَىٰ**
> 

# 🐧**Linux Command Line**

### 🪄 Your first Linux Command

- **ls** → for List: It is used to **list all the files and directories under a specified directory**
- Show this **code**
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ ls
    Desktop   Downloads   Music   Public    Templates   Documents   Pictures  Videos
    ```
    
- **cd** → for **Change Directory**: It is used to change the current directory of the terminal
- Show this **code**
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ cd Downloads
    ┌──(kali㉿kali)-[~/Downloads]
    └─$
    ```
    
- If you want to go back one step, use this → **cd ..**
- Show this **code**
    
    ```bash
    ┌──(kali㉿kali)-[~/Downloads]
    └─$ cd ..
    ┌──(kali㉿kali)-[~]
    └─$
    
    ```
    
- **clear** or **ctrl+l** → for **clear** our terminal
- Show this **code**
    
    ```bash
    ┌──(kali㉿kali)-[~/Downloads]
    └─$ cd ..
    ┌──(kali㉿kali)-[~]
    └─$
    ┌──(kali㉿kali)-[~]
    └─$ ls
    Desktop   Downloads   Music   Public    Templates   Documents   Pictures  Videos
    ┌──(kali㉿kali)-[~]
    └─$ clear
    ```
    
    - **result :**
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$
    ```
    

### 📂 Linux File System

- **/**
    - `The /` in the instruction above refers to the ***root*** directory. The **root directory** is the one from which all other directories branch off from
    - *show me only the 1st Level of the directory tree starting at / (**root**)*
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$ tree / -L 1
        /
        ├── bin -> usr/bin
        ├── boot
        ├── dev
        ├── etc
        ├── home
        ├── initrd.img -> boot/initrd.img-6.1.0-kali9-amd64
        ├── initrd.img.old -> boot/initrd.img-6.1.0-kali5-amd64
        ├── lib -> usr/lib
        ├── lib32 -> usr/lib32
        ├── lib64 -> usr/lib64
        ├── libx32 -> usr/libx32
        ├── lost+found
        ├── media
        ├── mnt
        ├── opt
        ├── proc
        ├── root
        ├── run
        ├── sbin -> usr/sbin
        ├── srv
        ├── sys
        ├── tmp
        ├── usr
        ├── var
        ├── vmlinuz -> boot/vmlinuz-6.1.0-kali9-amd64
        └── vmlinuz.old -> boot/vmlinuz-6.1.0-kali5-amd64
        
        23 directories, 4 files
        
        ┌──(kali㉿kali)-[~]
        └─$
        ```
        
- ***/bin***
    - Unlike /sbin, the bin directory contains several useful commands that are of use to both the system administrator as well as non-privileged users.
    - It usually contains shells like bash, csh, etc.... and commonly used commands like cp, mv, rm, cat, ls. For this reason and in contrast to /usr/bin, the binaries in this directory are considered to be essential
- **/etc**
    - This is the nerve center of your system, it contains all system related configuration files in here or in its sub-directories. A "configuration file" is defined as a local file used to control the operation of a program;
    - it must be static and cannot be an executable binary. For this reason, it's a good idea to backup this directory regularly.
    - It will definitely save you a lot of re-configuration later if you re-install or lose your current installation. Normally, no binaries should be or are located here.
- **/sbin**
    - Linux discriminates between 'normal' executables and those used for system maintenance and/or administrative tasks. The latter reside either here or - the less important ones - in /usr/sbin. Locally installed system administration programs should be placed into /usr/local/sbin.
    - Programs executed after /usr is known to be mounted (when there are no problems) are generally placed into /usr/sbin. This directory contains binaries that are essential to the working of the system. These include system administration as well as maintenance and hardware configuration programs. You may find lilo, fdisk, init, ifconfig, etc.... here.
- **/tmp**
    - This directory contains mostly files that are required temporarily. Many programs use this to create lock files and for temporary storage of data.
    - Do not remove files from this directory unless you know exactly what you are doing! Many of these files are important for currently running programs and deleting them may result in a system crash. Usually, it won't contain more than a few KB anyway.
    - On most systems, this directory is cleared out at boot or at shutdown by the local system.
- **/usr/bin**
    - This directory contains the vast majority of binaries on your system. Executables in this directory vary widely. For instance vi, gcc, gnome-session and mozilla and are all found here.
- **/usr/share**
    - **This directory contains 'shareable', architecture-independent files (docs, icons, fonts etc).**
    - **📝 Note, however, that '/usr/share' is generally not intended to be shared by different operating systems or by different releases of the same operating system.**
    - **Any program or package that contains or requires data that doesn't need to be modified should store that data in '/usr/share' (or '/usr/local/share', if installed locally). It is recommended that a subdirectory be used in /usr/share for this purpose.”**
- **$PATH**
    - PATH is an *environmental variable* in Linux and other Unix-like operating systems that tells the *shell* which directories to search for *executable files* (i.e., ready-to-run programs) in response to commands issued by a user.

### 🤏 Basics Commands

- **Note📝:**
    
     **Linux and the UNIX system are case-sensitive**
    
    ![b2b5c449a1ca3c83842342315c6ab43e4b9c964f.png](0x00-images/b2b5c449a1ca3c83842342315c6ab43e4b9c964f.png)
    
- **man Command**
    
    ***man*** command in Linux is used to display the user manual of any command that we can run on the terminal. It provides a detailed view of the command which includes `NAME, SYNOPSIS, DESCRIPTION, OPTIONS, EXIT STATUS, RETURN VALUES, ERRORS, FILES, VERSIONS, EXAMPLES, and AUTHORS`
    
    - **Every manual is divided into the following sections:**
        - Executable programs or shell commands
        - System calls (functions provided by the kernel)
        - Library calls (functions within program libraries
        - Games
        - Special files (usually found in /dev)
        - File formats and conventions eg /etc/passwd
        - Miscellaneous (including macro packages and conventions), e.g. groff(7)
        - System administration commands (usually only for root)
        - Kernel routines [Non standard]
    - **Syntax:**
        - `$**man** [OPTION]... [COMMAND NAME]...`
        - **No Option**
            - **No Option**: It displays the whole manual of the command.
            - `$**man** [COMMAND NAME]`
                
                In this example, manual pages of the command ‘*printf*‘ are simply returned.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ **man** printf
                
                NAME
                       printf - format and print data
                
                SYNOPSIS
                       printf FORMAT [ARGUMENT]...
                       printf OPTION
                
                DESCRIPTION
                       Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:
                
                       --help display this help and exit
                
                       --version
                              output version information and exit
                
                       FORMAT controls the output as in C printf.  Interpreted sequences are:
                
                       \"     double quote
                
                       \\     backslash
                
                       \a     alert (BEL)
                
                       \b     backspace
                
                       \c     produce no further output
                
                 Manual page printf(1) line 1 (press h for help or q to quit)
                ```
                
        - **Section-num**
            - **Section-num**: Since a manual is divided into multiple sections so this option is used to display only a specific section of a manual.
            - `$**man** [SECTION-NUM] [COMMAND NAME]`
                
                In this example, the manual pages of command ‘printf‘ are returned which lies in the section 3.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ **man 3** printf
                
                printf(3)                                      Library Functions Manual                                     printf(3)
                
                NAME
                       printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf, vdprintf, vsprintf, vsnprintf - formatted out‐
                       put conversion
                
                LIBRARY
                       Standard C library (libc, -lc)
                
                SYNOPSIS
                       #include <stdio.h>
                
                       int printf(const char *restrict format, ...);
                       int fprintf(FILE *restrict stream,
                                   const char *restrict format, ...);
                       int dprintf(int fd,
                                   const char *restrict format, ...);
                       int sprintf(char *restrict str,
                                   const char *restrict format, ...);
                       int snprintf(char str[restrict .size], size_t size,
                                   const char *restrict format, ...);
                
                       int vprintf(const char *restrict format, va_list ap);
                       int vfprintf(FILE *restrict stream,
                                   const char *restrict format, va_list ap);
                       int vdprintf(int fd,
                                   const char *restrict format, va_list ap);
                       int vsprintf(char *restrict str,
                                   const char *restrict format, va_list ap);
                 Manual page printf(3) line 1 (press h for help or q to quit)
                
                ```
                
        - **-f option**
            - **Section-num**: Since a manual is divided into multiple sections so this option is used to display only a specific section of a manual.
            - `$**man**-f [COMMAND NAME]`
                
                In this example, the manual pages of command ‘printf‘ are returned which lies in the section 3.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ **man -f printf
                printf (1)           - format and print data
                printf (3)           - formatted output conversion**
                
                ```
                
        - **-a option**
            - **-a option:** This option helps us to display all the available intro manual pages in succession.
            - Display, in succession, all of the available manual pages contained within the manual.  It is possible to quit between successive displays or skip any of them.
                - `$**man**-a [COMMAND NAME]`
                    
                    ```bash
                    ┌──(kali㉿kali)-[~]
                    └─$ man -a intro
                    --Man-- next: intro(8) [ view (return) | skip (Ctrl-D) | quit (Ctrl-C) ]
                    
                    --Man-- next: intro(32) [ view (return) | skip (Ctrl-D) | quit (Ctrl-C) ]
                    ```
                    
                    - Note:📝 in this example, you can move through the manual pages(sections) either reading(by pressing Enter) skipping(by pressing ctrl+D), or exiting(by pressing ctrl+C).
                    
        - **-k option**
            - This option searches the given command as a regular expression in all the manuals and it returns the manual pages with the section number in which it is found.
                - `$**man**-k [COMMAND NAME]`
                    
                    ```bash
                    ┌──(kali㉿kali)-[~]
                    └─$ man -k printf
                    PA_CHAR (3const)     - define custom behavior for printf-like functions
                    PA_DOUBLE (3const)   - define custom behavior for printf-like functions
                    PA_FLAG_LONG (3const) - define custom behavior for printf-like functions
                    PA_FLAG_LONG_DOUBLE (3const) - define custom behavior for printf-like functions
                    PA_FLAG_LONG_LONG (3const) - define custom behavior for printf-like functions
                    PA_FLAG_PTR (3const) - define custom behavior for printf-like functions
                    PA_FLAG_SHORT (3const) - define custom behavior for printf-like functions
                    PA_FLOAT (3const)    - define custom behavior for printf-like functions
                    PA_INT (3const)      - define custom behavior for printf-like functions
                    PA_LAST (3const)     - define custom behavior for printf-like functions
                    PA_POINTER (3const)  - define custom behavior for printf-like functions
                    PA_STRING (3const)   - define custom behavior for printf-like functions
                    PA_WCHAR (3const)    - define custom behavior for printf-like functions
                    PA_WSTRING (3const)  - define custom behavior for printf-like functions
                    asprintf (3)         - print to allocated string
                    dprintf (3)          - formatted output conversion
                    fprintf (3)          - formatted output conversion
                    fwprintf (3)         - formatted wide-character output conversion
                    printf (1)           - format and print data
                    printf (3)           - formatted output conversion
                    printf.h (3head)     - define custom behavior for printf-like functions
                    register_printf_modifier (3) - define custom behavior for printf-like functions
                    printf_arginfo_size_function (3type) - define custom behavior for printf-like functions
                    printf_function (3type) - define custom behavior for printf-like functions
                    printf_info (3type)  - define custom behavior for printf-like functions
                    printf_va_arg_function (3type) - define custom behavior for printf-like functions
                    register_printf_specifier (3) - define custom behavior for printf-like functions
                    register_printf_type (3) - define custom behavior for printf-like functions
                    snprintf (3)         - formatted output conversion
                    sprintf (3)          - formatted output conversion
                    swprintf (3)         - formatted wide-character output conversion
                    vasprintf (3)        - print to allocated string
                    vdprintf (3)         - formatted output conversion
                    vfprintf (3)         - formatted output conversion
                    vfwprintf (3)        - formatted wide-character output conversion
                    vprintf (3)          - formatted output conversion
                    vsnprintf (3)        - formatted output conversion
                    vsprintf (3)         - formatted output conversion
                    vswprintf (3)        - formatted wide-character output conversion
                    vwprintf (3)         - formatted wide-character output conversion
                    wprintf (3)          - formatted wide-character output conversion
                    XtAsprintf (3)       - memory management functions
                    ```
                    
                    - Search the short descriptions and manual page names for the
                               keywordprintf as regular expression.  Print out any matches.
                               Equivalent toaproposprintf.
        - **-w option**
            - **-w option**: This option returns the location in which the manual page of a given command is present.
            - `$**man -w**  [COMMAND NAME]`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ man -w ls
                /usr/share/man/man1/ls.1.gz
                
                ┌──(kali㉿kali)-[~]
                └─$ man --where ls
                /usr/share/man/man1/ls.1.gz
                
                ┌──(kali㉿kali)-[~]
                └─$ man --path ls
                /usr/share/man/man1/ls.1.gz
                
                ┌──(kali㉿kali)-[~]
                └─$ man --location ls
                /usr/share/man/man1/ls.1.gz
                ```
                
                - Don't actually display the manual page, but do print the
                location of the source nroff file that would be formatted.
                If the -a option is also used, then print the locations of
                all source files that match the search criteria.
                
        - **-I option**
            - **-I option**: It considers the command as case sensitive.
            - `$**man**-I [COMMAND NAME]`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ man -I printf
                PRINTF(1)                                           User Commands                                           PRINTF(1)
                
                NAME
                       printf - format and print data
                
                SYNOPSIS
                       printf FORMAT [ARGUMENT]...
                       printf OPTION
                
                DESCRIPTION
                       Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:
                
                       --help display this help and exit
                
                       --version
                              output version information and exit
                
                       FORMAT controls the output as in C printf.  Interpreted sequences are:
                
                       \"     double quote
                
                       \\     backslash
                
                       \a     alert (BEL)
                
                       \b     backspace
                
                       \c     produce no further output
                
                 Manual page printf(1) line 1 (press h for help or q to quit)
                ```
                
                - `Search for manual pages case-sensitively.`
    - **Note📝:**
        
        **RTFM → Read The Fuking Manual**
        
        ![2dref5n544k51.webp](0x00-images/2dref5n544k51.webp)
        
- **help Command**
    
    ***help*** The help command is **the simplest way to get information regarding a built-in shell command**. It helps you fetch information from the shell's internal documentation. It takes a text string as the command line argument and looks for the provided string in the shell's documents
    
    - **Help command itself offers three options:**
        - **d:** display only a brief description of the specified command.
        - **m:** organize the available information just as the **man command** does.
        - **s:** display the command syntax of the specified command.
    - **Syntax 📝**
        - `$**help** [OPTION]... [COMMAND NAME]...`
        - **help command**
            - Displays brief summaries of builtin commands.
            - `$helphelp`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ help --help 
                help: help [-dms] [pattern ...]
                    Display information about builtin commands.
                
                    Displays brief summaries of builtin commands.  If PATTERN is
                    specified, gives detailed help on all commands matching PATTERN,
                    otherwise the list of help topics is printed.
                
                    Options:
                      -d        output short description for each topic
                      -m        display usage in pseudo-manpage format
                      -s        output only a short usage synopsis for each topic matching
                                PATTERN
                
                    Arguments:
                      PATTERN   Pattern specifying a help topic
                
                    Exit Status:
                    Returns success unless PATTERN is not found or an invalid option is given.
                ```
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ help help
                help: help [-dms] [pattern ...]
                    Display information about builtin commands.
                
                    Displays brief summaries of builtin commands.  If PATTERN is
                    specified, gives detailed help on all commands matching PATTERN,
                    otherwise the list of help topics is printed.
                
                    Options:
                      -d        output short description for each topic
                      -m        display usage in pseudo-manpage format
                      -s        output only a short usage synopsis for each topic matching
                                PATTERN
                
                    Arguments:
                      PATTERN   Pattern specifying a help topic
                
                    Exit Status:
                    Returns success unless PATTERN is not found or an invalid option is
                ```
                
                - `We get everything we want to know about help command`
        - **help -d command**
            - Using the -d option to output short description for each topic
            - `$help -d``help`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ help -d help 
                help - Display information about builtin commands.
                ```
                
                - We can see that -d flag gives a one line description for the command mentioned.
            
        - **help -m command**
            - Using the -m option to output in pseudo-manpage format
            - `$help -m``help`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ help -m help 
                NAME
                    help - Display information about builtin commands.
                
                SYNOPSIS
                    help [-dms] [pattern ...]
                
                DESCRIPTION
                    Display information about builtin commands.
                
                    Displays brief summaries of builtin commands.  If PATTERN is
                    specified, gives detailed help on all commands matching PATTERN,
                    otherwise the list of help topics is printed.
                
                    Options:
                      -d        output short description for each topic
                      -m        display usage in pseudo-manpage format
                      -s        output only a short usage synopsis for each topic matching
                                PATTERN
                
                    Arguments:
                      PATTERN   Pattern specifying a help topic
                
                    Exit Status:
                    Returns success unless PATTERN is not found or an invalid option is given.
                
                SEE ALSO
                    bash(1)
                
                IMPLEMENTATION
                    GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
                    Copyright (C) 2020 Free Software Foundation, Inc.
                    License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
                ```
                
                - The -m flag gives the output in manpage like format. Man is system’s manual viewer.
        - **help -s command**
            - Using -s option to output only a short usage synopsis
            - `$help -s``help`
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ help -s help 
                help: help [-dms] [pattern ...]
                ```
                
                - -s flag displays the command syntax of the specified command.
            
- **apropos Command**
    
    **apropos** Linux/Unix comes with a huge number of commands and thus it becomes quite difficult sometimes to remember each and every command.
    
     **apropos** command becomes useful in such cases. *apropos* command helps the user when they don’t remember the exact command but know a few keywords related to the command that define its uses or functionality.
    
     It searches the **Linux man page** with the help of the keyword provided by the user to find the command and its functions.
    
    - `apropos [OPTION..] INPUT`
    - **Syntax 📝**
        - $`**apropos** [OPTION..] INPUT`
        - `**apropos**`
            - Suppose you don’t know how to compress a file then you could type the following command in the terminal and it will show all the related commands and their short descriptions or functionality.
            - `$**apropos** input`
                
                Suppose you don’t know how to compress a file then you could type the following command in the terminal and it will show all the related commands and its short description or functionality.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ apropos compress
                fsck.cramfs (8)      - fsck compressed ROM file system
                gunzip (1)           - compress or expand files
                gzexe (1)            - compress executable files in place
                gzip (1)             - compress or expand files
                logrotate (8)        - rotates, compresses, and mails system logs
                logrotate.conf (5)   - rotates, compresses, and mails system logs
                lzcat (1)            - Compress or decompress .xz and .lzma files
                lzcmp (1)            - compare compressed files
                lzdiff (1)           - compare compressed files
                lzegrep (1)          - search compressed files for a regular expression
                lzfgrep (1)          - search compressed files for a regular expression
                lzgrep (1)           - search compressed files for a regular expression
                lzless (1)           - view xz or lzma compressed (text) files
                lzma (1)             - Compress or decompress .xz and .lzma files
                lzmore (1)           - view xz or lzma compressed (text) files
                mkfs.cramfs (8)      - make compressed ROM file system
                pbget (1)            - compress and encode arbitrary files to pastebin.com
                pbput (1)            - compress and encode arbitrary files to pastebin.com
                pbputs (1)           - compress and encode arbitrary files to pastebin.com
                uncompress (1)       - compress or expand files
                unlzma (1)           - Compress or decompress .xz and .lzma files
                unsquashfs (1)       - tool to uncompress squashfs filesystems
                unxz (1)             - Compress or decompress .xz and .lzma files
                xz (1)               - Compress or decompress .xz and .lzma files
                xzcat (1)            - Compress or decompress .xz and .lzma files
                xzcmp (1)            - compare compressed files
                xzdiff (1)           - compare compressed files
                xzegrep (1)          - search compressed files for a regular expression
                xzfgrep (1)          - search compressed files for a regular expression
                xzgrep (1)           - search compressed files for a regular expression
                xzless (1)           - view xz or lzma compressed (text) files
                xzmore (1)           - view xz or lzma compressed (text) files
                zcat (1)             - compress or expand files
                zcmp (1)             - compare compressed files
                zdiff (1)            - compare compressed files
                zegrep (1)           - search possibly compressed files for a regular expression
                zfgrep (1)           - search possibly compressed files for a regular expression
                zgrep (1)            - search possibly compressed files for a regular expression
                zless (1)            - file perusal filter for crt viewing of compressed text
                zmore (1)            - file perusal filter for crt viewing of compressed text
                znew (1)             - recompress .Z files to .gz files
                ```
                
                - After executing the above command you will observe a bunch of commands listed on the terminal that deal with not only how to compress a file but also how to expand a compressed file, search a compressed file, comparing a compressed file, etc.
            - **Note📝:**
                
                ***apropos*** also support multiple keywords if given as an argument i.e. we can also provide more than one keyword for a better search. 
                
                Thus, if two keywords are provided the **apropos** command will display all the command’s list which contains either the first keyword in its man page description or the second keyword.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ apropos email address
                addr2line (1)        - convert addresses into file names and line numbers
                address_families (7) - socket address families (domains)
                bridge (8)           - show / manipulate bridge addresses and devices
                byobu-reconnect-sockets (1) - Sourcable script that updates GPG_AGENT_INFO and DBUS_SESSION_BUS_ADDRESS in the enviro...
                devlink-region (8)   - devlink address region access
                dladdr (3)           - translate address to symbolic information
                dladdr1 (3)          - translate address to symbolic information
                dlsym (3)            - obtain address of a symbol in a shared object or executable
                dlvsym (3)           - obtain address of a symbol in a shared object or executable
                ether_aton (3)       - Ethernet address manipulation routines
                ether_aton_r (3)     - Ethernet address manipulation routines
                ether_hostton (3)    - Ethernet address manipulation routines
                ether_line (3)       - Ethernet address manipulation routines
                ether_ntoa (3)       - Ethernet address manipulation routines
                ether_ntoa_r (3)     - Ethernet address manipulation routines
                ether_ntohost (3)    - Ethernet address manipulation routines
                ethers (5)           - Ethernet address to IP number database
                freeaddrinfo (3)     - network address and service translation
                freehostent (3)      - get network hostnames and addresses
                freeifaddrs (3)      - get interface addresses
                gai_cancel (3)       - asynchronous network address and service translation
                gai_error (3)        - asynchronous network address and service translation
                gai_strerror (3)     - network address and service translation
                gai_suspend (3)      - asynchronous network address and service translation
                get_myaddress (3)    - library routines for remote procedure calls
                rpc_soc (3t)         - "library routines for remote procedure calls"
                getaddrinfo (3)      - network address and service translation
                getaddrinfo_a (3)    - asynchronous network address and service translation
                getifaddrs (3)       - get interface addresses
                getipnodebyaddr (3)  - get network hostnames and addresses
                getipnodebyname (3)  - get network hostnames and addresses
                getnameinfo (3)      - address-to-name translation in protocol-independent manner
                git-check-mailmap (1) - Show canonical names and email addresses of contacts
                gitmailmap (5)       - Map author/committer names and/or E-Mail addresses
                gpgparsemail (1)     - Parse a mail message into an annotated format
                inet (3)             - Internet address manipulation routines
                inet_addr (3)        - Internet address manipulation routines
                inet_aton (3)        - Internet address manipulation routines
                inet_lnaof (3)       - Internet address manipulation routines
                inet_makeaddr (3)    - Internet address manipulation routines
                inet_netof (3)       - Internet address manipulation routines
                inet_network (3)     - Internet address manipulation routines
                inet_ntoa (3)        - Internet address manipulation routines
                inet_ntop (3)        - convert IPv4 and IPv6 addresses from binary to text form
                inet_pton (3)        - convert IPv4 and IPv6 addresses from text to binary form
                ip-address (8)       - protocol address management
                ip-addrlabel (8)     - protocol address label management
                ip-maddress (8)      - multicast addresses management
                mailaddr (7)         - mail addressing description
                mremap (2)           - remap a virtual memory address
                nameif (8)           - name network interfaces based on MAC addresses
                process_vm_readv (2) - transfer data between process address spaces
                process_vm_writev (2) - transfer data between process address spaces
                pthread_attr_getstackaddr (3) - set/get stack address attribute in thread attributes object
                pthread_attr_setstackaddr (3) - set/get stack address attribute in thread attributes object
                resolvconf (1)       - Resolve domain names, IPV4 and IPv6 addresses, DNS resource records, and services; introspect ...
                resolvectl (1)       - Resolve domain names, IPV4 and IPv6 addresses, DNS resource records, and services; introspect ...
                set_tid_address (2)  - set pointer to thread ID
                subpage_prot (2)     - define a subpage protection for an address range
                tc-nat (8)           - stateless native address translation action
                vsock (7)            - Linux VSOCK address family
                x86_64-linux-gnu-addr2line (1) - convert addresses into file names and line numbers
                ```
                
        - **-d Option**
            - `$**apropos** -d email`
                
                -d, --debug
                Print debugging information.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ apropos -d email 
                From the config file /etc/manpath.config:
                  Mandatory mandir `/usr/man'.
                  Mandatory mandir `/usr/share/man'.
                  Mandatory mandir `/usr/local/share/man'.
                  Path `/bin' mapped to mandir `/usr/share/man'.
                  Path `/usr/bin' mapped to mandir `/usr/share/man'.
                  Path `/sbin' mapped to mandir `/usr/share/man'.
                  Path `/usr/sbin' mapped to mandir `/usr/share/man'.
                  Path `/usr/local/bin' mapped to mandir `/usr/local/man'.
                  Path `/usr/local/bin' mapped to mandir `/usr/local/share/man'.
                  Path `/usr/local/sbin' mapped to mandir `/usr/local/man'.
                  Path `/usr/local/sbin' mapped to mandir `/usr/local/share/man'.
                  Path `/usr/X11R6/bin' mapped to mandir `/usr/X11R6/man'.
                  Path `/usr/bin/X11' mapped to mandir `/usr/X11R6/man'.
                  Path `/usr/games' mapped to mandir `/usr/share/man'.
                  Path `/opt/bin' mapped to mandir `/opt/man'.
                  Path `/opt/sbin' mapped to mandir `/opt/man'.
                  Global mandir `/usr/man', catdir `/var/cache/man/fsstnd'.
                  Global mandir `/usr/share/man', catdir `/var/cache/man'.
                  Global mandir `/usr/local/man', catdir `/var/cache/man/oldlocal'.
                  Global mandir `/usr/local/share/man', catdir `/var/cache/man/local'.
                  Global mandir `/usr/X11R6/man', catdir `/var/cache/man/X11R6'.
                  Global mandir `/opt/man', catdir `/var/cache/man/opt'.
                  Global mandir `/snap/man', catdir `/var/cache/man/snap'.
                  Added sections: `1', `n', `l', `8', `3', `0', `2', `3posix', `3pm', `3perl', `3am', `5', `4', `9', `6', `7'.
                ```
                
                - This option is used to emit debugging messages. When this option is used then terminal returns man directories, global path, path directory, warnings, etc. of each command which is related to the search keyword.
        - **-v Option**
            - `$**apropos** -v email`
                
                -v, --verbose
                Print verbose warning messages.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ apropos -v email 
                git-check-mailmap (1) - Show canonical names and email addresses of contacts
                gpgparsemail (1)     - Parse a mail message into an annotated format
                ```
                
                - -**v**: This option is used to print verbose warning messages.
        - **-e Option**
            - `$**apropos** -e ls`
                
                e, --exact
                Each keyword will be exactly matched against the page names and the descriptions.
                
                ```bash
                ┌──(kali㉿kali)-[~]
                └─$ apropos -e ls 
                dircolors (1)        - color setup for ls
                git-mktree (1)       - Build a tree-object from ls-tree formatted text
                ls (1)               - list directory contents
                ```
                
                - **-e**, **–exact**: This option is used to search each keyword for exact match. If no option is used, the apropos command returns list of all the command whose description in the man page description matches with the keyword or which are somehow related to the keyword given in the argument.
                - However, when the *-e* option is used, the apropos only returns the command whose description exactly matches with the keyword.
        - **For more Options…….**
            
            
            ![Mao_RTFM_vectorize_by_cmenghi.png](0x00-images/Mao_RTFM_vectorize_by_cmenghi.png)
            
            ![BabyRunGIF.gif](0x00-images/BabyRunGIF.gif)
            
- **ls Command**
    
    **ls** is a Linux shell command that lists directory contents of files and directories.  It provides valuable information about files, directories, and their attributes.
    
    - `ls [option] [file/directory]`
    - **Syntax 📝**
        - `ls [option] [file/directory]`
        
        | Options | Description |
        | --- | --- |
        | -l | known as a long format that displays detailed information about files and directories. |
        | -a | Represent all files Include hidden files and directories in the listing. |
        | -t | Sort files and directories by their last modification time, displaying the most recently modified ones first. |
        | -r | known as reverse order which is used to reverse the default order of listing. |
        | -S | Sort files and directories by their sizes, listing the largest ones first. |
        | -R | List files and directories recursively, including subdirectories. |
        | -i | known as inode which displays the index number (inode) of each file and directory. |
        | -g | known as group which displays the group ownership of files and directories instead of the owner. |
        | -h | Print file sizes in human-readable format (e.g., 1K, 234M, 2G). |
        | -d | List directories themselves, rather than their contents. |
- **mv Command**
    
    **`mv`** is a [Unix](https://en.wikipedia.org/wiki/Unix) command that [moves](https://en.wikipedia.org/wiki/Computer_file#Operations) one or more [files](https://en.wikipedia.org/wiki/Computer_file) or [directories](https://en.wikipedia.org/wiki/Directory_(computing)) from one place to another. If both filenames are on the same filesystem, this results in a simple file rename; otherwise, the file content is copied to the new location and the old file is removed
    
    - **Syntax 📝**
        - **Renaming a file in Linux**
            - **`mv [source_file_name(s)] [Destination_file_name]`**
            
            Enter your **source file name** in place of **[source_file_name(s)]** and your **destination file name** in place of **[Destination_file_name].**
            
            ```bash
            ┌──(kali㉿kali)-[~]
            └─$ ls
            **fileA.txt**  fileB.txt  fileC.txt  fileD.txt  fileE.txt  fileF.txt
            ┌──(kali㉿kali)-[~]
            └─$ mv **fileA.txt filea.txt**
            ┌──(kali㉿kali)-[~]
            └─$ ls
            fileB.txt  fileC.txt  fileD.txt  fileE.txt  fileF.txt  **filea.txt**
            ```
            
            - **`mv [source_file_name(s)] [Destination_file_name]`**
        - **Moving a file in Linux**
            
            **`mv [source_file_name(s)] [Destination_path]`**
            
            Enter your **source file name** in place of **[source_file_name(s)]** and your **destination path** in place of **[Destination_path].**
            
            ```bash
            ┌──(kali㉿kali)-[~]
            └─$ ls -l
            total 0
            drwxr-xr-x 1 kali kali 4096 Oct  8 09:04 **Ibrahim**
            ┌──(kali㉿kali)-[~]
            └─$ mv **Ibrahim** /tmp/folder/
            ┌──(kali㉿kali)-[~]
            └─$ ls -l /tmp/folder/
            total 0
            drwxr-xr-x 1 kali kali 4096 Oct  8 09:06 Ibrahim
            ```
            
- **pwd Command**
    
    **pwd** stands for **Print Working Directory**. It prints the path of the working directory, starting from the root. pwd is shell bult-in command(pwd) or an actual binary(/bin/pwd).
    
    - **Syntax 📝**
        
        `pwd [OPTIONS]`
        
        This command doesn’t have any arguments or options, but it can accept flags for specific behavior.
        
        - **Flags For Specific behavior in `pwd` command in Linux.**
            - The “-L” flag resolves symbolic links and prints the path of the target directory.
            - The default behavior of the shell built-in “pwd” is equivalent to using “pwd -L”.
            - Mention the “-P” flag, which displays the actual path without resolving symbolic links.
            - The default behavior of the binary “/bin/pwd” is the same as using “pwd -P”
- **mkdir Command**
    
    **mkdir** command in Linux allows the user to create directories (also referred to as folders in some operating systems). This command can create multiple directories at once as well as set the permissions for the directories. It is important to note that the user executing this command must have enough permission to create a directory in the parent directory, or he/she may receive a ‘permission denied’ error.
    
    - **Syntax 📝**
        
        `mkdir [options...] [directories ...]`
        
- **rm Command**
    
    **rm** stands for **remove** here. rm command is used to remove objects such as files, directories, symbolic links and so on from the file system like UNIX. To be more precise, rm removes references to objects from the filesystem, where those objects might have had multiple references (for example, a file with two different names). **By default, it does not remove directories.** This command normally works silently and you should be very careful while running **rm** command because once you delete the files then you are not able to recover the contents of files and directories.
    
    - **Syntax 📝**
        
        **`rm [OPTION]... FILE...`**
        
- **cp Command**
    
    **cp** stands for a **copy**. This command is used to copy files or groups of files or **[directories](https://www.geeksforgeeks.org/structures-of-directory-in-operating-system/)**. It creates an exact image of a file on a disk with a different file name. *cp* command requires at least two filenames in its arguments.
    
    - **Syntax 📝**
        
        **`rm [OPTION]... FILE...`**
        
        **cp** [OPTION] Source Destination
        
        **cp** [OPTION] Source Directory
        
        **cp** [OPTION] Source-1 Source-2 Source-3 Source-n Directory
        
        The first and second syntax is used to copy the Source file to the Destination file or Directory.
        The third syntax is used to copy multiple Sources(files) to the Directory.
        
- **sudo command**
    
    **sudo** (**S**uper **U**ser **DO**) command in Linux is generally used as a prefix for some commands that only superusers are allowed to run. If you prefix any command with “sudo”, it will run that command with elevated privileges or in other words allow a user with proper permissions to execute a command as another user, such as the superuser. This is the equivalent of the “run as administrator” option in Windows. The option of sudo lets us have multiple administrators.
    
    - **syntax for the `sudo` command:**
        
        sudo-V | -h | -l | -v | -k | -K | -s | [ -H ] [-P ] [-S ] [ -b ] |[ -p prompt ] [ -c class|- ] [ -a auth_type ] [-r role ] [-t type ][ -u username|#uid ]command
        
        **Options Available in the `sudo` command**
        
        | Options | Description | Syntax |
        | --- | --- | --- |
        | -V | The -V (version) option causes sudo to print the version number and exit. If the invoking user is already root, the -V option will print out a list of the defaults sudo was compiled with. | sudo -V |
        | -l | The -l (list) option will print out the commands allowed (and forbidden) the user on the current host. | sudo -l |
        | -h or –help | The -h (help) option causes sudo to print a usage message and exit. | sudo -h |
        | -v | If, given the -v (validate) option, sudo will update the user’s timestamp, prompting for the user’s password if necessary. This extends the sudo timeout for another 5 minutes (or as given in sudoers) but does not run a command. This does not give any output. | sudo -v |
        | -k | The -k (kill) option to sudo invalidates the user’s timestamp. So, the next time sudo is run a password will be required. This option does not require a password and was added to allow a user to revoke sudo permissions from a logout file. | sudo -k |
        | -K | Similar to the -k option, the -K (sure kill) option is used to remove the user’s timestamp entirely. Likewise, this option does not require a password. | sudo -K |
        | -b | The -b (background) option tells sudo to run the given command in the background. Note that if you use the -b option you cannot use shell https://www.geeksforgeeks.org/process-control-commands-unixlinux/ to manipulate the process. | sudo -b [command]
        (replace “command” with the command you want run in the background) |
        | -p | the sudo -p prompt command allows you to customize the password prompt that sudo displays when it requests the user’s password. By default, sudo will display a generic password prompt that looks like | sudo -p "Enter your password" [command]
        (replace “command” with the command you want run in the background) |
        | -n | The -n option allows sudo to execute a command without prompting for a password. This option is useful when running sudo commands as background jobs or in a shell script. The -n option stands for non-interactive. | sudo -n [command]
        (replace “command” with the command you want run in the background) |
        | -u | The -u option causes sudo to run the specified command as a user other than root. To specify a UID instead of a username, use #uid. | sudo -u [user] [command]
        (replace “command” with the command you want run in the background) |
        | -s | The -s option runs the shell specified by the SHELL environment variable if it is set or the shell as specified in the file passwd. | sudo -s [command]
        (replace “command” with the command you want run in the background) |
        | -H | The -H option sets the HOME environment variable to the home directory of the target user (root by default) as specified in passwd. By default, sudo does not modify HOME. | sudo -H [command]
        (replace “command” with the command you want run in the background) |
        | -S | The -S option causes sudo to read the password from standard input instead of the terminal device. | sudo -S [command]
        (replace “command” with the command you want run in the background) |
        | -a | The -a option causes sudo to use the specified authentication type when validating the user, as allowed by /etc/login.conf. The system administrator may specify a list of sudo-specific authentication methods by adding an “auth-sudo” entry in /etc/login.conf. | sudo -a [auth-type] [command]
        (replace “command” with the command you want run in the background) |
        | — | The — flag indicates that sudo should stop processing command line arguments. It is most useful in conjunction with the -s flag. | sudo -- [command]
        (replace “command” with the command you want run in the background) |
        
    - **Accomplish previous commands with sudo**
        
        Commands that have been executed previously are stored in the Linux command line. By pressing the up arrow, you can access these records. Use the following command to repeat the last command with enhanced privileges:
        
        `sudo !!`
        
    - **Environment Variable with sudo**
        
        
        | Tag | Description |
        | --- | --- |
        | EDITOR  | Default editor to use in -e (sudoedit) mode if VISUAL is not set  |
        | HOME  | In -s or -H mode (or if sudo was configured with the –enable-shell-sets-home option), set to homedir of the target user 
         |
        | PATH  | Set to a sane value if the secure_path sudoers option is set. 
         |
        | SHELL  | Used to determine shell to run with -s option  |
        | SUDO_PROMPT  | Used as the default password prompt  |
        | SUDO_COMMAND  | Set to the command run by sudo  |
        | SUDO_USER  | Set to the login of the user who invoked sudo  |
        | SUDO_UID  | Set to the uid of the user who invoked sudo  |
        | SUDO_GID  | Set to the gid of the user who invoked sudo  |
        | SUDO_PS1  | If set, PS1 will be set to its value  |
        | USER  | Set to the target user (root unless the -u option is specified) 
         |
        | VISUAL  | Default editor to use in -e (sudoedit) mode  |
    
- **adduser command or useradd**
    
    **adduser** command in Linux is used to add a new user to your current Linux machine. This command allows you to modify the configurations of the user which is to be created. It is similar to the **useradd** command in Linux. The adduser command is much interactive as compared to useradd command.
    
    - **Syntax:**
        
        `adduser username`
        
- **su command**
    
    The standard function of `su` command , if summoned without any options, is to drive an interactive shell as root:
    
    - Syntax:
        
        `su [OPTIONS] [USER [ARGUMENT...]]`
        

### 💬 Text Editing

- **echo command**
    
    The **echo** command in Linux is a built-in command that allows users to display lines of text or strings that are passed as arguments. It is commonly used in shell scripts and batch files to output status text to the screen or a file.
    
    - **Syntax:**
        
        `echo [option] [string]`
        
- **nano command**
    
    **nano** is a user-friendly, simple and WYSIWYG(What You See Is What You Get) text editor, which improves the features and user-friendliness of UW Pico text editor. Unlike vim editor or any other command-line editor, it doesn’t have any mode. It has an easy GUI(Graphical User Interface) which allows users to interact directly with the text in spite of switching between the modes as in vim editor.
    
    - **Syntax:**
        
        `nano filename`
        
- **cat command**
    
    ![4nxl3m.jpg](0x00-images/4nxl3m.jpg)
    
    Cat(concatenate) command is very frequently used in Linux. It reads data from the file and gives its content as output. It helps us to create, view, and concatenate files. So let us see some frequently used cat commands.
    
    ![systemd_cat.jpg](0x00-images/systemd_cat.jpg)
    
    - **Syntax:**
        
        `cat file_name`
        
        ![1XHi4pf.png](0x00-images/1XHi4pf.png)
        
- **which command**
    
    **which** command in Linux is a command which is used to locate the executable file associated with the given command by searching it in the path environment variable. It has 3 return statuses as follows:
    
    - **0** : If all specified commands are found and executable.
    - **1** : If one or more specified commands is nonexistent or not executable.
    - **2** : If an invalid option is specified.
    - **Syntax:**
        
        `which [filename1] [filename2] ...`
        
- **locate command**
    
    ***locate*** command in Linux is used to find the files by name. There are two most widely used file-searching utilities accessible to users called to find and *locate*. The *locate* utility works better and faster than the *find* command counterpart because instead of searching the file system when a file search is initiated, it would look through a database. This database contains bits and parts of files and their corresponding paths on your system. By default, the locate command does not check whether the files found in the database still exist and it never reports files created after the most recent update of the relevant database.
    
    - **Syntax:**
        
        `locate [OPTION]... PATTERN..`
        
    - **Options Available in `locate` command in Linux**
    
    | OPTIONS | DESCRIPTION |
    | --- | --- |
    | -b, –basename | Match only the base name against the specified patterns, which is the opposite of –whole name. |
    | -c, –count | Instead of writing file names on standard output, write the number of matching entries only. |
    | -d, –database DBPAT | Replace the default database with DBPATH. DBPATH is a : (colon) separated list of database file names. If more than one –database option is specified, the resulting path is a concatenation of the separate paths. An empty database file name is replaced by the default database. A database file name – refers to the standard input. Note that a database can be read from the standard input only once. |
    | -e, –existing | Print only entries that refer to files existing at the time locate is run. |
    | -L, –follow | When checking whether files exist (if the –existing option is specified), follow trailing symbolic links. This causes bro ken symbolic links to be omitted from the output. This option is the default behavior. The opposite can be specified using –nofollow. |
    | -h, –help | Write a summary of the available options to standard output and exit successfully. |
    | -i, –ignore-case | Ignore case distinctions when matching patterns. |
    | -l, –limit, -n LIMIT | Exit successfully after finding LIMIT entries. If the –count option is specified, the resulting count is also limited to LIMIT. |
    | -m, –mmap | Ignored, but included for compatibility with BSD and GNU locate. |
    | -P, –nofollow, -H | When checking whether files exist (if the –existing option is specified), do not follow trailing symbolic links. This causes broken symbolic links to be reported like other files. This option is the opposite of –follow. |
    | -0, –null | Separate the entries on output using the ASCII NULL character instead of writing each entry on a separate line. This option is designed for interoperability with the –null option of GNU xargs. |
    | -S, –statistics | Write statistics about each read database to standard output instead of searching for files and exit successfully. |
    | q, –quiet | Write no messages about errors encountered while reading and processing databases. |
    | -r, –regexp REGEXP | Search for a basic regexp REGEXP. No PATTERNs are allowed if this option is used, but this option can be specified multiple times. |
    | –regex | Interpret all PATTERNs as extended regexps. |
    | -s, –stdio | Ignored, for compatibility with BSD and GNU locate. |
    | -V, –version | Write information about the version and license of locate on standard output and exit successfully. |
    | -w, –wholename | Match only the whole path name against the specified patterns. This option is the default behavior. The opposite can be specified using –basename. |
- **find command**
    
    The **find** command in UNIX is a command line utility for walking a file hierarchy. It can be used to find files and directories and perform subsequent operations on them. It supports searching by file, folder, name, creation date, modification date, owner, and permissions. By using the ‘-exec’ other UNIX commands can be executed on files or folders found.
    
    - **Syntax:**
        
        `$ find [where to start searching from]`
        
        `[expression determines what to find] [-options] [what to find]`
        
    - **exec CMD:** The file being searched which meets the above criteria and returns 0 for as its exit status for successful command execution.
    - **ok CMD :** It works same as -exec except the user is prompted first.
    - **inum N :** Search for files with inode number ‘N’.
    - **links N :** Search for files with ‘N’ links.
    - **name demo :** Search for files that are specified by ‘demo’.
    - **newer file :** Search for files that were modified/created after ‘file’.
    - **perm octal :** Search for the file if permission is ‘octal’.
    - **print :** Display the path name of the files found by using the rest of the criteria.
    - **empty :** Search for empty files and directories.
    - **size +N/-N :** Search for files of ‘N’ blocks; ‘N’ followed by ‘c’can be used to measure the size in characters; ‘+N’ means size > ‘N’ blocks and ‘-N’ means size < ‘N’ blocks.
    - **user name :** Search for files owned by username or ID ‘name’.
    - **\(expr \) :** True if ‘expr’ is true; used for grouping criteria combined with OR or AND.
    - **! expr :** True if ‘expr’ is false.
- **updatedb command**
    
    The `updatedb` command is typically run as a daily cron job to ensure that the database files are up to date. However, you can also run it manually when you need to update the database files immediately.
    
    - **Syntax:**
        
        `updatedb [OPTION]...`
        
- **Task📝**
    - [x]  **Add User with root permissions**
    - **solution**
        
        **Add The User**
        
        1. **Create a username for your new user, in my example my new user is ibrahim:**
            
            ```bash
            ┌──(kali㉿kali)-[~]
            └─$ sudo adduser ibrahim
            		Adding user `ibrahim' ...
            		Adding new group `ibrahim' (1001) ...
            		Adding new user `ibrahim' (1001) with group `ibrahim' ...
            		Creating home directory `/home/ibrahim' ...
            		Copying files from `/etc/skel' ...
            		New password:
            		Retype new password:
            		passwd: password updated successfully
            		Changing the user information for ibrahim
            		Enter the new value, or press ENTER for the default
            		        Full Name []: Ibrahim Sallam
            		        Room Number []:
            		        Work Phone []:
            		        Home Phone []:
            		        Other []:
            ```
            
        2. **Grant Root Privileges:**
            
            ```bash
            ┌──(kali㉿kali)-[~]
            └─$ sudo usermod -aG sudo ibrahim
            ```
            
        3. **Verify New User**
            
            ```bash
            ┌──(kali㉿kali)-[~]
            └─$ su - ibrahim
            		grep '^sudo' /etc/group
            		sudo:x:27:kardl,ibrahim
            ```
            

### 🌐Network IP

- **Network commands**
    - **ifconfig**
        
        **ifconfig** displays the current configuration for a network interface when no optional parameters are supplied
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$ ifconfig
        		eth0: flags=4443<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1025
                inet 192.168.0.0  netmask 255.255.255.0  broadcast 192.168.0.0
                ether 6c:f0:49:25:d7:0a  (Ethernet)
                RX packets 0  bytes 0 (0.0 B)
                RX errors 0  dropped 0  overruns 0  frame 0
                TX packets 0  bytes 0 (0.0 B)
                TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        
        		eth1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
                inet 192.168.0.0  netmask 255.255.255.0  broadcast 192.168.0.0
        ```
        
    - **ip a**
        
        **Ip** command in Linux is present in the net-tools which are used for performing several network administration tasks. IP stands for Internet Protocol. This command is used to show or manipulate routing, devices, and tunnels
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$ ip
        		15: eth0: <BROADCAST,MULTICAST,UP> mtu 1500 group default qlen 1
            link/ether 6c:f0:49:25:d7:0a
            inet 192.168.0.0/24 brd 192.168.0.0 scope global dynamic
               valid_lft 758245sec preferred_lft 758245sec 
        ```
        
    - **ip add**
        
        To add an IP address to an existing link/interface, use the addr add command. The format for the command is **ip addr add ADDRESS/NETMASK dev LINK_ID**
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$ ip a add (ip_address) dev (interface)
        ```
        
    
- **reference**
    
    [rh_ip_command_cheatsheet_1214_jcs_print.pdf](0x00-images/rh_ip_command_cheatsheet_1214_jcs_print.pdf)
    

### 🕸️ **Managing Kali services**

Having certain services start automatically can be useful in Kali Linux. For example, let's say I want to be able to SSH (covered in the *Configuring and using SSH* recipe) to my Kali Linux distribution. By default, the SSH server does not start in Kali, so I would need to log in to the virtual machine, open a Terminal, and run the command to start the service.

- **SSH Service**
    
    ```bash
    	┌──(kali㉿kali)-[~]
    	└─$ sudo apt-get install openssh-server
    			Reading package lists... Done
    			Building dependency tree... Done
    			Reading state information... Done
    			The following additional packages will be installed:
    			  libwrap0 ncurses-term openssh-client openssh-sftp-server ssh-import-id
    			Suggested packages:
    			  keychain libpam-ssh monkeysphere ssh-askpass molly-guard
    			The following NEW packages will be installed:
    			  libwrap0 ncurses-term openssh-server openssh-sftp-server ssh-import-id
    			The following packages will be upgraded:
    			  openssh-client
    			1 upgraded, 5 newly installed, 0 to remove and 28 not upgraded.
    			Need to get 1703 kB of archives.
    			After this operation, 6157 kB of additional disk space will be used.
    			Do you want to continue? [Y/n]	Y
    
    	┌──(kali㉿kali)-[~]
    	└─$ service ssh status 
    			ssh.service OpenBSD Secure Shell server
    			Loaded: loaded (/lib/systemd/system/ssh.service; disabled; vendor preset: disabled)
    			Active: active (running) since Sun 2019-10-20 13:06:43 CEST; 8min ago
    			Docs: man: sshd (8)
    			man: sshd_config(5)
    			Process: 3570 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
    			Main PID: 3583 (sshd)
    			Tasks: 1 (limit: 4915)
    			Memory: 3.5M
    			CGroup: /system.slice/ssh.service
    			L3583 /usr/sbin/sshd -D
    			Okt 20 13:10:30 kali sshd[11192]: Failed password for root from ::1 port 55520 ssh2
    			Okt 20 13:10:40 kali sshd[11192]: Failed password for root from ::1 port 55520 ssh2 Okt 20 13:10:57 kali sshd[11192]: Failed password for root from ::1 port 55520 ssh2
    			Okt 20 13:10:57 kali sshd[11192]: Connection closed by authenticating user root ::1 port 555
    			Okt 20 13:10:57 kali sshd[11192]: PAM 2 more authentication failures; logname= uid=0 euid=0
    			Okt 20 13:14:09 kali sshd[18949]: pam_unix(sshd: auth): authentication failure; logname= uid=
    			Okt 20 13:14:12 kali sshd[18949]: Failed password for root from ::1 port 55522 ssh2
    			Okt 20 13:14:23 kali sshd[18949]: Failed password for root from ::1 port 55522 ssh2
    			Okt 20 13:14:59 kali sshd[18949]: Connection closed by authenticating user root ::1 port 555 Okt 20 13:14:59 kali sshd[18949]: PAM 1 more authentication failure; logname= uid=0 euid=0 t
    	┌──(kali㉿kali)-[~]
    	└─$ service ssh start
    ```
    
- **HTTP Service**
    
    [Kali http server setup](https://linuxconfig.org/kali-http-server-setup)
    

### 🐧 Important Commands

- **sudo service [service] [command]**
    
    The `sudo service [service] [command]` command is used to control System V init services in Linux. It is a powerful tool that can be used to start, stop, restart, and reload services.
    
    To use the `sudo service` command, you must be logged in as a user with sudo privileges. This means that you can run commands as the root user.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo service apache2 restart
    ```
    
- **sudo systemctl [service] [command]**
    
    The `sudo systemctl [service] [command]` command is used to control Systemd services in Linux. Systemd is a newer init system that is replacing SysV init on most Linux distributions.
    
    To use the `sudo systemctl` command, you must be logged in as a user with sudo privileges. This means that you can run commands as the root user.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo service apache2 restart
    ```
    
- **sudo systemctl list-unit-files**
    
    The `sudo systemctl list-unit-files` command lists all of the unit files installed on the system, in combination with their enablement state. Unit files are files that describe system services, sockets, timers, device nodes, and other entities that systemd manages.
    
    To use the `sudo systemctl list-unit-files` command, you must be logged in as a user with sudo privileges. This means that you can run commands as the root user.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo systemctl list-unit-files --type service
    ```
    
- **passwd**
    
    The `passwd` command is used to change the password of the current user or another user on the system. If no user is specified, the password of the current user is changed.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo passwd <username>
    ```
    

### 🔎 Searching, installing, and removing tools

- **sudo apt-get update**
    
    `sudo apt-get update` fetches the latest version of the package list from your distro's software repository and any third-party repositories you may have configured. In other words, it'll figure out what the latest version of each package and dependency is, but will not actually download or install any of those updates.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo apt-get update
    ```
    
- **sudo apt-get upgrade**
    
    The `sudo apt-get upgrade` command downloads and installs the updates for each outdated package and dependency on your system. But just running `sudo apt-get upgrade` will not automatically upgrade the outdated packages – you'll still have a chance to review the changes and confirm that you want to perform the upgrades.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo apt-get update
    ```
    
- **sudo apt-get upgrade**
    
    The `sudo apt-get upgrade` command downloads and installs the updates for each outdated package and dependency on your system. But just running `sudo apt-get upgrade` will not automatically upgrade the outdated packages – you'll still have a chance to review the changes and confirm that you want to perform the upgrades.
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ sudo apt-get update
    ```
    
- Use the `apt-cache show` command to view information about a package, such as its version, description, and dependencies.
- Use the `apt-cache search` command to search for packages by name or keyword.
- Use the `apt-get install` command to install a package.
- Use the `apt-get remove` command to remove a package.
- Use the `apt-get update` command to update the list of available packages.
- Use the `apt-get upgrade` command to upgrade all installed packages to the latest version.
- Use the `apt-get dist-upgrade` command to upgrade all installed packages, including removing and installing packages as needed.
- Use the `apt-get autoremove` command to remove packages that are no longer needed.
- Use the `apt-get clean` command to remove downloaded package files.
- Use the `apt-get autoclean` command to remove downloaded package files that are no longer needed.

**Install a package:**

 `dpkg -i [/path/to/vim_7.3.429-2ubuntu2_amd64.deb]`

or alternatively, use the `--install` flag

 `dpkg --install [/path/to/vim_7.3.429-2ubuntu2_amd64.deb]`

**Remove a package:**

To remove a package using `dpkg` **without** removing its configuration files:

 `$ dpkg --**remove** [package-name]`

alternatively, use the `-r` flag:

 `$ dpkg -r [**package**-name]`

To remove a package using `dpkg` **along with** its corresponding configuration files, use the `--purge` command:

 `$ dpkg --purge [**package**-name]`

### 🟰 Environment Variables

**Environment variables** or **ENVs** basically define the behavior of the environment. They can affect the ongoing processes or programs executed in the environment. Every Linux process has an associated set of environment variables that influence its behavior and interactions with other processes.

- **Accessing Environment Variables**
    
    In Linux, **environment variables** are typically accessed through the shell. The shell is a command-line interface that interprets and executes commands entered by the user. It provides a way to set, modify, and retrieve environment variables. The most common shell in Linux is the Bash shell (Bourne Again SHell), which is the default shell for many distributions.
    
- **Scope of an environment variable**
    
    The scope of any **variable** is the region from which it can be accessed or over which it is defined. An environment variable in Linux can have a **global** or **local** scope.
    
    - **Global**
        
        A globally scoped **ENV** that is defined in a terminal can be accessed from anywhere in that particular environment that exists in the terminal. That means it can be used in all kinds of scripts, programs, or processes running in the environment bound by that terminal.
        
    - **Local**
        
        A locally scoped ENV that is defined in a terminal cannot be accessed by any program or process running in the terminal. It can only be accessed by the terminal (in which it was defined) itself.
        
- **How to access ENVs?**
    
    **Syntax:**
    
     `$NAME`
    
    📝 Both local and global **environment** variables are accessed in the same way.
    
- **How to display ENVs?**
    
    **Syntax:**
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$ echo $NAME
    ```
    
- **To display all the Linux ENVs**
    
    **Syntax:**
    
    ```bash
    ┌──(kali㉿kali)-[~]
    └─$  printenv //displays all the global ENVs
    or
    ┌──(kali㉿kali)-[~]
    └─$ set //display all the ENVs(global as well as local)
    or
    ┌──(kali㉿kali)-[~]
    └─$ env //display all the global ENVs
    ```
    
- **How to set environment variables?**
    - **To set a global ENV**
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$  export NAME=Value
        or
         set NAME=Value
        ```
        
    - **To set a local ENV**
        
        **Syntax:**
        
        ```bash
        ┌──(kali㉿kali)-[~]
        └─$  NAME=Value
        ```
        
    - **To set user-wide ENVs**
        
        These variables are set and configured in ~/.bashrc, ~/.bash_profile, ~/.bash_login, ~/.profile
        
        files according to the requirement. These variables can be accessed by a particular user and persist through power offs.
        
        **Step 1:** Open the terminal.
        
        **Step 2:**
        
        ```
        $ sudo vi ~/.bashrc
        ```
        
        **Step 3:** Enter password.
        
        **Step 4:** Add variable in the file opened.
        
        ```
        export NAME=Value
        ```
        
        **Step 5:** Save and close the file.
        
        **Step 6:**
        
        ```
        $ source ~/.bashrc
        ```
        
    - **To set system wide ENVs**
        
        These variables are set and configured in /etc/environment, /etc/profile, /etc/profile.d/, /etc/bash.bashrc files according to the requirement. These variables can be accessed by any user and persist through power offs.
        
        Following steps can be followed to do so:
        
        **Step 1:** Open the terminal.
        
        **Step 2:**
        
        ```
        $ sudo -H vi /etc/environment
        ```
        
        **Step 3:** Enter password.
        
        **Step 4:** Add variable in the file opened.
        
        ```
        NAME=Value
        ```
        
        **Step 5:** Save and close the file.
        
        **Step 6:** Logout and Login again.
        
    - **How to unset environment variables?**
        
        **Syntax:**
        
        ```
        $ unset NAME
        or
        $ NAME=''
        ```
        
    - **Some commonly used ENVs in Linux**
        
        
        | Environment Variables | Description |
        | --- | --- |
        | $USER | Gives search path for commands. |
        | $PATH | Gives search path for commands. |
        | $HOME | Gives path of home directory. |
        | $PWD | Gives the path of present working directory. |
        | $HOSTNAME | Gives name of the host. |
        | $LANG | Gives the default system language. |
        | $EDITOR | Gives default file editor. |
        | $UID | Gives user ID of current user. |
        | $SHELL | Gives location of current user’s shell program. |
        

### 📅 History Commands

- **history command**
    
    ***history*** command is used to view the previously executed command. This feature was not available in the Bourne shell. Bash and Korn support this feature in which every command executed is treated as the event and is associated with an event number using which they can be recalled and changed if required. These commands are saved in a history file. In Bash shell **history** command shows the whole list of the commands.
    
    **Syntax:**
    
    ```
    $ history
    ```
    
- **resource**
    
    🌐 **GreekforGekks**
    
    [history command in Linux with Examples - GeeksforGeeks](https://www.geeksforgeeks.org/history-command-in-linux-with-examples/?ref=gcse)
    
    🌐 **RedHat**
    
    [How to manage your Linux command history](https://www.redhat.com/sysadmin/history-command)
    

### 🪄 L**nix Shortcuts**

**Keyboard shortcuts** help you to be more productive and efficient with whatever tool you use. Just think about it. If someone holds the mouse all the way down to copy entire text instead of Ctrl+A, how would you feel about it?

- **resource**
    
    [13 Linux Terminal Shortcuts Every Power Linux User Must Know](https://linuxhandbook.com/linux-shortcuts/)
    
    [Unix Shortcuts](https://www.osc.edu/book/export/html/3022)
    

### 🎭 **Pipes and Redirection in Linux**

**Pipes and redirection** are two different kinds of mechanisms used in Linux. Sometimes, we need the output of a command to be passed as input of another command and do some operation. There we use the pipe operator. The operator is “|”. It’s found on top of the “Enter” key. Sometimes, we redirect or pass all the output of a command to a file for storing purposes. Also, we take a file’s content as input for a command. This is called redirection and operators are used like “>”, “>>” and “<”.

- **Redirecting to a New File**
    
    When we run any command in a Linux terminal, the output will be printed on the screen. If we want to send the output of a command, we can use “>” to do this operation.
    
    **“>”,** there will not be any output in the terminal and output will be stored inside “redirection.txt”.
    
    ```bash
    $ ls -lhrt > redirection.txt
    
    $ cat redirection.txt
    total 16K
    drwxrwxr-x 3 rian rian 4.0K Feb 11 22:22 zip-unzip
    drwxrwxr-x 2 rian rian 4.0K Feb 11 22:37 bash
    -rw-rw-r-- 1 rian rian    0 Feb 11 22:43 redirection.txt
    drwxrwxr-x 2 rian rian 4.0K Feb 11  2016 cat-more-less
    drwxrwxr-x 2 rian rian 4.0K Feb 11  2016 cmd-bash
    ```
    
- **Redirecting to an Existing File**
    
    In that case, we have to use “>>” to keep the old content and append the redirected content.
    
    ```bash
    $ cat redirection.txt
    redirection
    
    $ ls -lhrt >> redirection.txt
    
    $ cat redirection.txt
    redirection
    total 24K
    drwxrwxr-x 3 rian rian 4.0K Feb 11 22:22 zip-unzip
    drwxrwxr-x 2 rian rian 4.0K Feb 11 22:37 bash
    -rw-rw-r-- 1 rian rian  269 Feb 11 22:43 redirection.txt
    -rw-rw-r-- 1 rian rian    4 Feb 11 22:53 123.txt
    drwxrwxr-x 2 rian rian 4.0K Feb 11  2016 cat-more-less
    drwxrwxr-x 2 rian rian 4.0K Feb 11  2016 cmd-bash
    ```
    
- **Redirecting From an Existing**
    
    We can also redirect from an existing file and give input to any command. Let us see the below example. Here, we are searching for “redirection” using the “grep” command from the content of dile “redirection.txt”
    
    ```bash
    $ grep -i "redirection" < redirection.txt
    redirection
    -rw-rw-r-- 1 kali kali    4 Feb 11 22:53 123.txt
    ```
    
- **Redirecting STDERR**
    
    ```bash
    $ ls nofile.txt
    ls: cannot access 'nofile.txt': No such file or directory
    
    $ ls nofile.txt 2> error.txt
    
    $ cat error.txt
    ls: cannot access 'nofile.txt': No such file or directory
    ```
    
- **Use of Single and Multiple Pipe**
    
    One of the most powerful shell operators is the pipe (`|`). The pipe takes output from one command and uses it as input for another. And, you're not limited to a single piped command—you can stack them as many times as you like, or until you run out of output or file descriptors.
    
    ```bash
    $ ls | grep -i "bash"
    bash
    cmd-bash
    ```
    

### 🔎 **Linux commands for text manipulation and searching**

- `grep` `sed` `awk` **commands**
    
    Sysadmins use an untold number of command-line tools, and you probably regularly use the three discussed in this article: `grep`, `sed`, and `awk`. But do you know all the ways you can use them to manipulate text? If not (or you're not sure), continue reading….👇
    
    [3 must-know Linux commands for text manipulation](https://www.redhat.com/sysadmin/linux-text-manipulation-tools)
    

---

- `cut` **command**
    
    The **cut** command in UNIX is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of a line by **byte position, character and field**. Basically, the cut command slices a line and extracts the text to continue reading….👇
    
    [cut command in Linux with examples - GeeksforGeeks](https://www.geeksforgeeks.org/cut-command-linux-examples/)
    
- `sort` **command**
    
    The **SORT** command is used to sort a file, arranging the records in a particular order. By default, the sort command sorts file assuming the contents are ASCII. Using options in the sort command can also be used to sort numerically.
    
    [SORT command in Linux/Unix with examples - GeeksforGeeks](https://www.geeksforgeeks.org/sort-command-linuxunix-examples/?ref=gcse)
    

### 📝 Editing file from the command line

- **nano Editor**
    
    [Getting started with Nano](https://www.redhat.com/sysadmin/getting-started-nano)
    
- **vi Editor**
    
    [An introduction to the vi editor](https://www.redhat.com/sysadmin/introduction-vi-editor)
    

### 👀 Comparing files

**Compare Files in Linux With These Tools**

- **Diff command.**
- **Colordiff command.**
- **Wdiff command.**
- **Vimdiff command.**
- **Gitdiff command.**
- **Kompare.**
- **Meld.**

[How to Compare Two Files in Linux](https://linuxhint.com/compare-two-files-linux/)

### 📄 **head, tail, more & less Commands**

head: to display a specified number of lines from the top of the file.

---

head cities.txt

```
* Display 10 lines from the top of the file.

* 10 is the default value for head command

```

head -n 15 cities.txt  (or)  head -15 cities.txt

head -n 5 cities.txt

tail: to display a specified number of lines from the bottom of the file.

---

```
tail cities.txt

* Display the last 10 lines from the file.

* 10 is the default value for tail command

```

tail -n 15 cities.txt  (or)  tail -15 cities.txt

tail -n 5 cities.txt

Display the lines from 10 to 15.

```
head -15 cities.txt | tail -6

```

Display the lines from 20 to 30.

```
head -30 cities.txt | tail -11

```

ls - l   Display List of files and directories

ls -l | head -5   Display Top 5 files and directories

ls -l | tail -5   Display Top 5 files and directories

more: Display content page by page. (Next page - space, Next line - Enter,  q- Command prompt)

---

```
more cities.txt

```

more: Display content page by page in both directions means next page or to previous page

Next page - space, Next line - Enter,  q- Command prompt)

---

```
more cities.txt

```

ls -l | more

ls -l | less

### 🦾 **Process Management In Linux**

- **ps command**
    
    This command is used to display information about running processes.
    
    - `$ps`
- **top command**
    
    This command is used to display a real-time view of system processes.
    
    - `$top`
- **kill command**
    
     This command is used to [terminate a process](https://unstop.com/blog/kill-process-linux). The "kill" command can be used with the process ID (PID) of the process or with a signal number to request a specific action.
    
    - `$kill`
- **nice command**
    
    This command is used to change or adjust the priority of a running process, which affects its CPU usage.
    
    - `$renice Priority -p ProcessID`
- **renice command**
- **jobs command**
    
    This command is used to display a list of background jobs running in the current shell session.
    
    - `$jobs`
- **bg command**
    
    This command is used to move a suspended process to the background. The "bg" command can be used with the job ID of the suspended process.
    
    - `$bg`

[Unstop - Competitions, Quizzes, Hackathons, Scholarships and Internships for Students and
    Corporates](https://unstop.com/blog/process-management-in-linux)

### 🐧  **monitor Linux log files in real-time**

- **‘tail -f’ command**
    
    `tail -f /var/log/syslog /var/log/auth.log`
    
- **logwatch command**
    
    ```bash
    sudo apt-get update
    sudo apt-get install logwatch
    ```
    
    `sudo logwatch`
    
    `sudo logwatch --range "2019-09-07"`
    

### ⏬ Downloading files Linux

- **axel command**
    
    `sudo apt-get install axel`
    
    `axel <file URL>`
    
- **curl command**
    
    ***curl*** is a command-line tool to transfer data to or from a server, using any of the supported protocols (HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, TELNET, LDAP, or FILE). *curl* is powered by Libcurl. This tool is preferred for automation since it is designed to work without user interaction. curl can transfer multiple files at once.
    
    `curl [options] [URL...]`
    

### 👷‍♂️ Customization bash environment

[Customizing Bash Environment | Hostwinds](https://www.hostwinds.com/tutorials/customizing-bash-environment)

## Resources

[0xmuka](https://blog.0xmuka.tech/search/label/linux)

[0xmuka](https://blog.0xmuka.tech/search/label/command%20line)

[0xmuka](https://blog.0xmuka.tech/search/label/services)

---

# 🐧Bash Scripting

## A Brief **Overview** of Bash Scripting

Bash scripting, or Bash shell programming, is a method of writing multiple commands and instructions in a single text file, and then executing them all at once. It is commonly used on Unix-like operating systems, such as Linux and macOS, to automate repetitive tasks and simplify complex operations.

**Benefits of Bash Scripting:**

- **Automation:** Save time and effort by automating repetitive tasks.
- **Efficiency:** Complete tasks faster and more accurately.
- **Ease of Use:** Relatively simple programming language, making it suitable for beginners.
- **Power:** Ability to process files, control applications, and interact with operating systems.
- **Versatility:** Wide range of applications in various fields, such as system administration, data analysis, and network programming.

**Examples of Bash Scripting Usage:**

- **Backing up files:** Write a script that automatically copies your important files to a secure storage location.
- **Processing data:** Analyze and organize large datasets using Bash commands.
- **Deploying applications:** Write a script that deploys your application to a web server.
- **System administration:** Automate system administration tasks like updating software and configuring networks.

**Learning Bash Scripting:**

Numerous resources are available online for learning Bash scripting, including:

- **Tutorials:** Websites offering free tutorials with explanations and code examples.
- **Books:** Comprehensive reference books providing detailed explanations of the Bash language and its uses.
- **Forums:** Online communities for discussing Bash scripting and troubleshooting issues.

**Note:** This is a very brief overview of Bash scripting. For more information, please refer to the available online resources or specialized books.

## Comment

In Bash, comments are used to explain your code and make it easier to understand. They are ignored by the Bash interpreter, so they don't affect how the script runs.

There are two main ways to write comments in Bash:

1. **Single-line comments:**
- These comments start with the hash symbol (#) at the beginning of a line.
- Anything after the hash symbol on that line is considered a comment.

Here's an example:

```bash
# This is a single-line comment.
echo "Hello, world!"  # This is another comment after a command.

```

1. **Multiline comments:**
- These comments are useful for longer explanations or documentation within your script.
- There are two common ways to create multiline comments:
    - **Using here documents:**
        
        This method involves using the `<<` (here document) operator followed by a word (identifier). Everything written after that word until you encounter the same word again on a new line by itself is considered a comment.
        
        Here's an example:
        
        ```bash
        <<COMMENT
        This is a multiline comment created using a here document.
        You can write multiple lines of explanation here.
        COMMENT
        echo "This line is after the multiline comment."
        
        ```
        
    - **Using a colon (:) and heredoc syntax:**
        
        This method involves using a colon (:) followed by a `<<` (here document) operator and a word (identifier). Similar to the previous method, everything written after that word until you encounter the same word again on a new line by itself is considered a comment.
        
        Here's an example:
        
        ```bash
        : <<'MULTILINE_COMMENT'
        This is another way to create a multiline comment in Bash.
        It uses a colon (:) followed by heredoc syntax.
        MULTILINE_COMMENT
        echo "This line is after the multiline comment."
        
        ```
        

**Best Practices:**

- Use comments liberally throughout your Bash scripts to explain complex parts, document assumptions, and improve code readability for yourself and others.
- Keep your comments clear, concise, and informative.
- Avoid using comments to disable code. If you need to temporarily disable a section of code, it's better to use comment characters but also indent the code block to visually distinguish it.

## Variables

Bash variables act like temporary storage units for your data. They can hold text (strings) or numbers. These variables come in handy when you're working in Bash scripting or on the command line itself, especially for repetitive tasks.

Here's a quick rundown on how Bash variables work:

- **Creating a Variable:**
    - You simply assign a name to the variable and give it a value using the equals sign (=).
    - Variable names can include letters, numbers, and underscores, but they cannot start with a number.
    - Here's an example:

```bash
name="Bard"
age=3  # This can also be written as age=3

```

- **Using a Variable:**
    - To use the variable's value, put a dollar sign ($) before its name.
    - For instance, to print the value of the variable `name`, you'd type:

```bash
echo $name

```

- **Bash Script Variables:**
    - Variables are particularly useful in Bash scripts. They allow you to store and reuse data throughout the script.

Here are some additional points to keep in mind:

- **Bash is Case-Sensitive:** The names `name` and `NAME` are considered different variables.
- **Special Variables:** Bash also provides predefined variables that contain system information, like `$USER` (current username) or `$#` (number of arguments passed to a script).

I hope this explanation helps! If you'd like to delve deeper into specific aspects of Bash variables, feel free to ask!

## echo

The `echo` command is a fundamental tool in Bash for printing text or variable values to the terminal. Here's a breakdown of how it works:

**Basic Usage:**

- In its simplest form, `echo` followed by some text enclosed in quotes (single or double) will simply print that text on the terminal.
    
    ```bash
    echo "Hello, world!"
    
    ```
    
    This will output:
    
    ```
    Hello, world!
    
    ```
    
- You can use double quotes to include special characters within your output, like spaces or quotation marks themselves.
    
    ```bash
    echo "This message has "quotes" within it."
    
    ```
    

**Using Variables:**

- The `echo` command can also be used to display the values of variables. You can access a variable's value by placing a dollar sign ($) before its name.
    
    ```bash
    name="Bard"
    echo "Hello, $name!"
    
    ```
    
    This will output:
    
    ```
    Hello, Bard!
    
    ```
    

**Additional Options:**

- `echo` offers several options to control its behavior:
    - `n`: This option suppresses the automatic newline character that `echo` adds by default at the end of the output.
        
        ```bash
        echo -n "This text"
        echo "will be printed on the same line."
        
        ```
        
    - `e`: This option enables the interpretation of backslash escape sequences within your strings. These escape sequences allow you to represent special characters or formatting.
        
        ```bash
        echo -e "This line has a newline character \\n inserted."
        
        ```
        
    - There are other options available for more advanced use cases. You can refer to the Bash manual page for `echo` using `man echo` for a detailed list and explanations.

**Common Use Cases:**

- Printing messages to the user during script execution.
- Displaying variable values for debugging purposes.
- Creating formatted output using escape sequences (with `e`).

In summary, `echo` is a versatile tool for interacting with the terminal and providing informative output in your Bash scripts.

## printf

In Bash, `printf` is a powerful built-in command that offers more precise control over formatted output compared to the simpler `echo` command. It closely resembles the `printf` function found in C and other programming languages.

Here's a breakdown of how `printf` works:

**Basic Structure:**

- `printf` takes two mandatory arguments:
    1. **Format String:** This string defines the overall layout of the output, including placeholders for data and formatting options.
    2. **Arguments:** These are the values that will be inserted into the format string according to the specified placeholders.

**Placeholders and Formatting:**

- Format specifiers within the format string act as placeholders for the arguments. These specifiers dictate how the corresponding argument will be presented in the output.
    - Common format specifiers include:
        - `%s`: Insert a string argument.
        - `%d`: Insert a decimal integer argument.
        - `%f`: Insert a floating-point number argument.
        - `%c`: Insert a single character argument.
        - There are many more specifiers for various data types and formatting options.
    - You can also use options within the format specifier itself to control aspects like width, alignment, and precision (decimal places for numbers).

**Example:**

```bash
name="Bard"
age=30

printf "Hello, my name is %s and I am %d years old.\\n" "$name" $age

```

This will output:

```
Hello, my name is Bard and I am 30 years old.

```

**Advantages of `printf`:**

- **Precise Formatting:** You have more control over the layout and presentation of your output compared to `echo`.
- **Flexibility:** Supports various data types and formatting options.
- **Clear Separation:** Separates formatting logic from the data itself (in the format string).

**Use Cases:**

- Creating custom informational messages in your scripts.
- Generating formatted reports or logs.
- Aligning output columns for better readability.

By understanding `printf` and its capabilities, you can enhance the readability and presentation of your Bash script outputs.

## Read only

The `readonly` command in Bash is used to make variables or functions read-only. This means their values cannot be changed after they are initially assigned. Here's a detailed explanation:

**Making Variables Read-Only:**

- Syntax:

```bash
readonly [-aApf] [name[=value]] ...

```

- Breakdown:
    - `readonly`: Keyword to declare variables as read-only.
    - Options:
        - `a`: Treat each name as an element of an indexed array.
        - `A`: Restrict variables to associative arrays (Bash dictionaries).
        - `p`: Print a list of all currently declared read-only variables and functions.
        - `f`: Mark shell functions corresponding to the names as read-only.
    - `name`: The name of the variable you want to make read-only.
    - `value` (optional): The initial value to assign to the variable before making it read-only.
- Example:

```bash
name="Bard"
readonly name  # Make the variable 'name' read-only
age=30

name="Alice"  # This will result in an error as 'name' is read-only

echo "Name: $name"
echo "Age: $age"

```

**Important Points:**

- Once a variable is declared `readonly`, you cannot modify its value using subsequent assignment statements.
- The `readonly` attribute applies only during the current shell session. If you close the terminal and open a new one, the variables won't be read-only anymore.
- To make variables permanently read-only, you can consider setting them in read-only files like environment variables.

**Making Shell Functions Read-Only:**

- You can also use `readonly` with the `f` option to prevent modifications to shell functions. This can be helpful to protect critical functions from accidental changes.

**Use Cases:**

- Protecting sensitive configuration variables from accidental modification.
- Enforcing data integrity in scripts by preventing unintended changes to variables.
- Improving code readability by clearly indicating that a variable's value is fixed.

I hope this explanation clarifies how the `readonly` command works in Bash!

## set

The `set` command in Bash serves multiple purposes related to setting and managing shell options and positional parameters. Let's break down its functionalities:

**1. Setting Shell Options:**

- `set` allows you to enable or disable various shell behaviors by using options with a minus sign (-) to disable or a plus sign (+) to enable.
    - Common options include:
        - `h`: Disable history expansion (recalling previous commands).
        - `x`: Print commands and their arguments as they are executed (for debugging).
        - `v`: Print shell input lines as they are read (useful for tracing).
        - There are many more options; you can refer to the Bash manual page (`man bash`) for a complete list.
    - Example:
        
        ```bash
        set -x  # Enable printing commands during execution
        echo "Hello, world!"
        set +x  # Disable printing commands again
        
        ```
        

**2. Unsetting Shell Options:**

- You can unset a previously set option using `set` followed by the option with a plus sign (+) at the beginning.
    - Example:
        
        ```bash
        set -x  # Enable printing commands
        # ... some commands here
        set +x  # Disable printing commands
        
        ```
        

**3. Displaying Shell Options and Variables:**

- If you invoke `set` with no arguments, it will display a list of currently enabled shell options and their values for informational purposes.
    - Example:
        
        ```bash
        set -x  # Enable printing commands (shown in the output)
        echo "Hello, world!"
        set      # List all shell options (including -x)
        
        ```
        

**4. Setting Positional Parameters:**

- `set` can also be used to set positional parameters (arguments passed to the script) after the script execution has begun. These parameters are denoted by `$1`, `$2`, and so on.
    - Syntax:
        
        ```bash
        set arg1 arg2 arg3  # Set positional parameters
        
        ```
        
    - This is generally less common than using the arguments passed to the script directly, but it can be useful in specific situations.

**5. Unsetting Positional Parameters:**

- You can unset all positional parameters using `set --` (two dashes). This is helpful for starting fresh within a script if you don't need the original arguments.
    - Example:
        
        ```bash
        echo "First argument: $1"
        set --  # Unset all positional parameters
        echo "Second argument (should be empty): $2"
        
        ```
        

**Important Note:**

- The changes made using `set` are typically temporary and persist only within the current shell session. They won't affect future shell sessions or child processes.

I hope this explanation clarifies the different functionalities of the `set` command and `unset` within the context of `set` in Bash!

## unset

The `unset` command in Bash is used to remove variables or functions from the current shell environment. Here's a breakdown of its functionality:

**What it Does:**

- When you use `unset` with a variable name, it removes the variable from the current scope. This means you can no longer access its value using the variable name.
- `unset` can also be used with functions to remove them from the current shell session.

**Syntax:**

```bash
unset name [name ...]
unset -f function_name [function_name ...]

```

- `name`: The name of the variable you want to remove.
- `function_name`: The name of the function you want to remove.
- `f`: This option is used specifically for removing functions.

**Example:**

```bash
name="Bard"
age=30

echo "Name: $name"
echo "Age: $age"

unset name
echo "Name: $name"  # This will output nothing as 'name' is unset

# Function example
my_function() {
  echo "This is a function."
}

unset -f my_function
# Now trying to call the function will result in an error
my_function

```

**Important Points:**

- `unset` only removes the variable or function from the current shell session. If you open a new terminal window, the variable or function will still exist.
- `unset` doesn't deallocate memory associated with the variable. It simply removes the reference to that memory.
- You cannot unset special variables (like `$USER` or `$PWD`) or environment variables set outside the current shell session.

**Use Cases:**

- Cleaning up unused variables to avoid cluttering the shell environment.
- Preventing accidental modifications of variables within a script by unsetting them after use.
- Removing dynamically created functions that are no longer needed.

I hope this explanation clarifies the purpose and usage of the `unset` command in Bash!

## Special variable

### Special Variables List in Bash

Here is a list of the Bash special variables and their usage:

| Variable | Purpose |
| --- | --- |
| $0 | The name of the executing script. |
| $1…$9 | The first nine command-line arguments. |
| $# | The number of positional parameters passed to the script. |
| $@ | All positional parameters as separate strings. |
| $* | All positional parameters as a single string. |
| $? | The exit status of the last executed command. |
| $$ | The process ID of the current shell. |
| $! | The process ID of the last background command. |
| $- | The current options set for the shell. |

## Bash Special Variables with 9 Examples

The Bash **[shell](https://linuxsimply.com/what-is-a-shell-linux/)** treats several variables specially. Here’s a detailed look with examples of the Bash special variables:

### “$0” Special Variable in Bash

The `$0` variable holds the name of the current shell or script. It is called the **zeroth argument**
 of the script. It allows you to reference the script’s name within the 
script itself.  Check the following script to see how the special 
variable **$0** works:

```bash
#!/bin/bash

echo "The script's name is: $0"
```

Bash

EXPLANATION

In the line `echo "The script's name is: $0"`, `$0` holds the name of the current shell that is being executed and the **[echo command](https://linuxsimply.com/bash-scripting-tutorial/input-output/output/echo-command/)** prints the output.

![https://linuxsimply.com/wp-content/uploads/2023/08/img3-Output-showing-scripts-name.png](https://linuxsimply.com/wp-content/uploads/2023/08/img3-Output-showing-scripts-name.png)

From the above image, you can see that the value of the **$0** variable is replaced with the currently executed script name.

### “$1…$9” Special Variable

The special variables **$1**, **$2**, **$3**, …**$9** contain the **first nine** command-line arguments provided to the script. Here, each variable corresponds to a specific positional number like `$1` represents the **first** argument, `$2` represents the **second** argument, etc.

Here’s an example of the special variables **$1, $2, and $3**:

```bash
#!/bin/bash

echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"
```

Bash

EXPLANATION

Here, in the three lines `echo "First argument: $1"`, `echo "Second argument: $2"`, `echo "Third argument: $3"`, **$1, $2,** and **$3** represent the first three arguments of the current script and the `echo` command prints the output.

Now, run the script by the following command:

```bash
./firstToNinth.sh Hello Linux World
```

Bash

![https://linuxsimply.com/wp-content/uploads/2023/08/img4-Output-showing-first-three-arguments.png](https://linuxsimply.com/wp-content/uploads/2023/08/img4-Output-showing-first-three-arguments.png)

From the above image, you can see that I have accessed the **first three arguments**. Similarly, you can access arguments from **first to ninth** whatever you need.

### “$#” Special Variable in Bash

The special variable `$#` specifies
 the number of command-line arguments passed to a function or script. 
You can use this to create Bash scripts that usually validate the user 
inputs. Check the bash script of special variable **$#**:

```bash
#!/bin/bash

echo "Argument Number: $#"
```

Bash

EXPLANATION

In the line `echo "Argument Number: $#"`, `$#` retrieves the number of command-line arguments, and the `echo` command displays the output.

![https://linuxsimply.com/wp-content/uploads/2023/08/img5-Argument-number-checking.png](https://linuxsimply.com/wp-content/uploads/2023/08/img5-Argument-number-checking.png)

From the above image, you can see that **$#**
 determines the number of provided arguments, and the script displays 
them. As I did not put any argument after the script, it showed **Argument Number** **0**.

### “$@” Special Variable

The `$@` variable represents 
all command-line arguments passed to a script or function as separate 
words or an array. It lets you access each command-line argument 
individually while creating Bash scripts.

To know how to work with **$@** special variable, check the bash script:

```bash
#!/bin/bash

for arg in "$@"; do
    echo "$arg"
done
```

Bash

EXPLANATION

The line `for arg in “$@”; do` indicates a loop that iterates over each word in the **$@** variable. Here, `"$@”` retrieves all the command-line arguments as separate entities. Now, in the line `echo "$arg"`, the `echo` command prints the value of the **arg** variable.

Now, run the script by the following command:

```bash
./allarg.sh grape orange
```

Bash

![https://linuxsimply.com/wp-content/uploads/2023/08/img6-All-arguments-as-separate-entities.png](https://linuxsimply.com/wp-content/uploads/2023/08/img6-All-arguments-as-separate-entities.png)

From the image, you can see all the arguments as a **space-separated** list.

### “$*” Special Variable in Bash

Generally, the `$*` variable acts like the `$@` variable when used without **double quotes**.  But if you double-quote this variable, it behaves differently. In this case, the `$*` variable stores all the command-line arguments passed to the script as a single string.

Here’s an example of a special variable **$***:

```bash
#!/bin/bash

for arg in "$*"; do
    echo "$arg"
done
```

Bash

EXPLANATION

The line `for arg in “$*”; do` indicates a loop that iterates over each word in the `$*` variable. Here, `“$*”`
 specifies that the entire argument’s set as a single string meaning 
that the loop will iterate only once over this single entity. Now, the `echo` command prints the value of the **arg** variable.

Now, run the script by the following command:

```bash
./singlestring.sh grape orange apple
```

Bash

![https://linuxsimply.com/wp-content/uploads/2023/08/img7-All-arguments-as-single-string.png](https://linuxsimply.com/wp-content/uploads/2023/08/img7-All-arguments-as-single-string.png)

From the above image, you can see all the assigned arguments as a single string.

### “$?” Special Variable

The `$?` variable stores the 
exit status of the last executed command. It checks the success or 
failure of the most recently executed command within a script. Moreover,
 it helps to handle errors depending on the success and failure of a 
command.

Here’s an example of how to check the exit status of the **[ping](https://linuxsimply.com/ping-command-in-linux/)** command with **$?** special variable:

```bash
#!/bin/bash

ping -c 1 linuxsimply.com

if [ $? -eq 0 ]; then
    echo "Ping successful."
else
    echo "Ping failed."
fi
```

Bash

EXPLANATION

Here, `ping -c 1 linuxsimply.com` sends a single ping packet to the host **linuxsimply.com**. In the line `if [ $? -eq 0 ]; then`, `$?` checks the exit status of the last `ping` command. If the exit status is **0**, it indicates success, otherwise, it indicates failure. When the success occurs, the `echo`
 command will execute “Ping successful.”. If the failure occurs, the 
echo command will execute “Ping failed.” in the else branch.

![https://linuxsimply.com/wp-content/uploads/2023/08/img8-Displaying-the-exit-status.png](https://linuxsimply.com/wp-content/uploads/2023/08/img8-Displaying-the-exit-status.png)

From the image, you can see that the attempt I made to ping the website **linuxsimply.com** is successful.

### “$$” Special Variable in Bash

The `$$` variable contains the **process ID (PID)**
 of the currently executed script. You can create temporary & unique
 files, and manage multiple background processes by using this useful 
variable.

See the bash script to know how to check **PID** with special variable **$$**:

```bash
#!/bin/bash

echo "Process ID (PID) of this script: $$"
```

Bash

EXPLANATION

In `echo "Process ID (PID) of this script: $$"`, `$$` holds the **process ID** of the currently executing script and the `echo` command prints the output.

![https://linuxsimply.com/wp-content/uploads/2023/08/img9-Process-ID-of-the-currently-executed-script.png](https://linuxsimply.com/wp-content/uploads/2023/08/img9-Process-ID-of-the-currently-executed-script.png)

In the above snapshot, you can see that the process ID of the script I have executed is **2634**.

### “$!” Special Variable

The `$!` variable contains 
the process ID (PID) of the last executed background command in the 
script. This variable is helpful for monitoring multiple processes and 
handling long-run background commands.

Let’s see an example of a special variable **$!**:

```bash
#!/bin/bash

echo "A background process is going to start."

sleep 1 &
background_pid=$!

echo "Background process has started with the PID: $background_pid"

#Waiting for the background process to complete
wait $background_pid

echo "Background process with the PID $background_pid has completed."
```

Bash

EXPLANATION

The `echo "A background process is going to start."` indicates that a background process is going to start. Then, in `sleep 1 &` the **[sleep command](https://linuxsimply.com/sleep-command-in-linux/)** causes the script to wait for **1 second**. Here, the `&` symbol sends it to the background. Now, in the line background_pid=$!, `$!` holds the process ID of the background process.

The `echo "Background process has started with the PID: $background_pid"` indicate that the PID of the background process has started. Afterward, `wait $background_pid` pauses
 the script execution until the background process with PID completes. 
After the completion of the background process, the `echo` command prints **Background process with the PID $background_pid has completed.**

![https://linuxsimply.com/wp-content/uploads/2023/08/img10-Process-ID-of-the-last-executed-background-command-in-the-script.png](https://linuxsimply.com/wp-content/uploads/2023/08/img10-Process-ID-of-the-last-executed-background-command-in-the-script.png)

The above snapshot specifies the **process ID** of the last background command of the script.

### “$-” Special Variable in Bash

The `$-` variable represents 
the current option flags for the shell. Through this variable, you can 
display the current state of the shell in terms of multiple options. 
However, every option and its meaning can vary based on the 
configuration of your shell. Here are some commonly used options:

- **h**: Hashall option.
- **m**: Monitor mode.
- **i**: Interactive mode.
- **x**: Execution tracing.
- **u**: Unset variables as an error.
- **e**: Exit the shell.
- **B**: Brace expansion mode.
- **H**: History expansion.

Now, look at the bash script of the special variable **$-**:

```bash
#!/bin/bash

echo "Current shell options: $-"

if [[ "$-" == *i* ]]; then
    echo "Enabled interactive mode."
else
    echo "Disabled interactive mode."
fi

if [[ "$-" == *x* ]]; then
    echo "Enabled execution tracing."
else
    echo "Disabled execution tracing."
fi
```

Bash

EXPLANATION

Here, the line `echo "Current shell options: $-"` prints the value of the `$-` variable. Then, the first conditional statement `if [[ "$-" == *i* ]]; then` checks if **i** is present in the output of **$-**. If **i** is present, the `echo` command prints “Enabled interactive mode.”. Otherwise, it goes to the **else** block, and the **echo** command
 prints “Disabled interactive mode.”. The second conditional statement 
follows the same as the first but it checks if the execution tracing is 
enabled or not.

![https://linuxsimply.com/wp-content/uploads/2023/08/img11-Current-shell-options.png](https://linuxsimply.com/wp-content/uploads/2023/08/img11-Current-shell-options.png)

The above image depicts the current shell options for my system: **hB** meaning that the **hashall** option is enabled and the shell is running in **brace expansion** mode too. Also, the interactive mode and execution tracing are disabled for my shell.

### What are some commonly used special variables in Bash?

Some commonly used special variables in Bash are as follows:

1. **$0:** Indicates the shell script name.
2. **$1, $2,…,$N:** Indicates positional parameters. $1
represents the 1st argument passed to the script, $2 represents the 2nd
argument passed to the script, and $N represents the Nth argument passed to the script.
3. **$#:** Counts the number of arguments passed to the script.
4. **$@:** Treats all the arguments as a **separate** entity.
5. **$*:** Treates all the arguments as a **single** entity.
6. **$$:** Represents the process ID **(PID)** of the current script.
7. **$!:** Represents the process ID **(PID)** of the last background command.
8. **$?:** Indicates the exit status of the last executed command.

## mathematical operator bash 2 ways

**1. Arithmetic Expansion:**

This method is the preferred way for basic arithmetic calculations within Bash. It's concise and efficient.

**Syntax:**

```bash
$(( expression ))

```

- `$((` : This starts the arithmetic expansion.
- `expression`: This is the mathematical expression you want to evaluate. It can involve numbers, variables containing numbers, and arithmetic operators.
- `))` : This closes the arithmetic expansion.

**Example:**

```bash
num1=10
num2=5

sum=$(( num1 + num2 ))
difference=$(( num1 - num2 ))
product=$(( num1 * num2 ))
quotient=$(( num1 / num2 ))  # Integer division (truncates decimals)

echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"

```

**2. `expr` command:**

This method uses the `expr` command, a built-in Bash utility for performing various text manipulations and simple arithmetic operations. While it offers more features than arithmetic expansion, it's generally less preferred for basic math due to its slightly less readable syntax.

**Syntax:**

```bash
expr expression [ operator expression ]

```

- `expr`: The command itself.
- `expression`: The first operand (number or variable).
- `operator`: The arithmetic operator (+, -, *, /, %).
- `expression` (optional): The second operand (number or variable) if applicable for the operator.

**Example (equivalent to the previous example using `expr`):**

```bash
num1=10
num2=5

sum=`expr $num1 + $num2`
difference=`expr $num1 - $num2`
product=`expr $num1 \\* $num2`  # Use \\* for multiplication
quotient=`expr $num1 / $num2`  # Integer division

echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"

```

**Key Points:**

- Arithmetic expansion is generally preferred for its readability and efficiency.
- `expr` offers more features but can be less intuitive for simple calculations.
- Both methods support various arithmetic operators (+, -, *, /, %).
- Remember to use single quotes (') around variable references within `expr` to prevent unintended interpretation of special characters.

## Comparison Operators

**Comparison Operators:**

- **`gt` (Greater Than):**
    - Checks if the first operand is strictly greater than the second numerically.
    - Returns 0 (true) if the first operand is greater, non-zero (false) otherwise.

```bash
numberA=30
numberB=20

if [ $numberA -gt $numberB ]
then
  echo "$numberA is greater than $numberB."
fi

```

- **`ge` (Greater Than or Equal To):**
    - Checks if the first operand is greater than or equal to the second numerically.
    - Returns 0 (true) if the first operand is greater than or equal to the second, non-zero (false) otherwise.

```bash
age=21
votingAge=18

if [ $age -ge $votingAge ]
then
  echo "You are eligible to vote."
fi

```

- **`ne` (Not Equal To):**
    - Checks if the two operands are not numerically equal.
    - Returns 0 (true) if the operands are not equal, non-zero (false) otherwise.

```bash
username="admin"
enteredName="guest"

if [ $username -ne $enteredName ]
then
  echo "Invalid username. Please try again."
fi

```

- **String Comparisons:**
    - Use double quotes (") around strings to prevent special character interpretation.
    - Common string comparison operators include:
        - `==` (Equal To)
        - `!=` (Not Equal To)
        - `<` (Less Than - Compares character positions lexicographically)
        - `>` (Greater Than)
        - `le` (Less Than or Equal To)
        - `ge` (Greater Than or Equal To)

```bash
name1="Alice"
name2="Bob"

if [ "$name1" == "$name2" ]
then
  echo "Names are equal."
else
  echo "Names are different."
fi

file1="report.txt"
file2="data.csv"

if [ "$file1" < "$file2" ]  # Lexicographic comparison based on first character
then
  echo "$file1 comes before $file2 alphabetically."
fi

```

**Remember:** When comparing strings, use the appropriate string comparison operators, not the numeric ones (`-eq`, `-lt`, etc.).

By effectively using these comparison operators, you can create robust conditional logic within your Bash scripts to make decisions based on various conditions.

## access and manipulate data in Bash scripting

These are all different ways to access and manipulate data in Bash scripting. Here's a breakdown of each:

**1. `${}` (Brace Expansion):**

- This is a general expansion mechanism used for various purposes.
- It allows you to perform operations on the value enclosed within the braces.

**Common Uses:**

- **Variable Expansion:** `${variable_name}` expands to the value of the variable named `variable_name`.
    - Example: `name="John"` echo "Hello, ${name}!" # Outputs "Hello, John!"
- **Command Substitution:** `${$(command)}` executes the command within parentheses and expands to the output of that command.
    - Example: `current_date=$(date +%Y-%m-%d)` # echo "Today's date is: ${current_date}"
- **Arithmetic Expansion:** `${((expression))}` performs arithmetic evaluation within the double parentheses.
    - Example: `sum=$(( 5 + 3 ))` echo "The sum is: ${sum}"

**2. `$` (Variable Expansion):**

- This is the simplest way to access the value of a variable.
- You place a dollar sign ($) followed by the variable name.
    - Example: `name="Alice"` echo "Hello, $name!" # Same output as `${name}!`

**3. `$(())` (Arithmetic Expansion):**

- This is a dedicated construct for performing arithmetic operations within single parentheses.
- It's functionally equivalent to `${((expression))}` but uses slightly less syntax.
    - Example: `sum=$(( 5 + 3 ))` # Equivalent to `sum=$(expr 5 + 3)` (using `expr` command)

**4. `${name[0]}` (Array Indexing):**

- This is used to access specific elements within an array.
- `${name[index]}` expands to the element at the specified index (starting from 0) of the array named `name`.
    - Example: `names=("Alice" "Bob" "Charlie")` echo "First name: ${names[0]}" # Outputs "Alice"

**Choosing the Right Option:**

- Use `${variable_name}` or `$variable_name` for simple variable expansion.
- Use `${$(command)}` for command substitution when you need the output of a command within your script.
- Use `${((expression))}` or `$(())` for arithmetic calculations.
- Use `${name[index]}` for accessing elements within an array.

## Sequence Generation Techniques in Bash

The outputs you provided demonstrate two different functionalities in Bash:

**1. seq 10:**

- This command uses the `seq` built-in in Bash to generate a sequence of numbers.
- In this case, `seq 10` generates a sequence starting from 1 and ending at 10 (inclusive).
- The output will be:

```
1 2 3 4 5 6 7 8 9 10

```

**2. echo {1..10}:**

- This uses the `echo` command to print the literal content within curly braces `{}`.
- However, within curly braces like this, Bash doesn't interpret the sequence `1..10` for generating numbers.
- Instead, it treats `{1..10}` as a plain string and simply prints it as is.
- So, the output for `echo {1..10}` will be:

```
{1..10}

```

**Key Difference:**

- `seq 10` actively generates a sequence of numbers for output.
- `echo {1..10}` prints the string "{1..10}" without interpreting the sequence.

**To achieve the same output as `seq 10` using `echo`, you can combine it with backticks (`) or command substitution:**

```bash
echo $(seq 10)

```

This approach executes the `seq 10` command within backticks, captures its output (the sequence), and then `echo` prints the captured output. This will result in:

```
1 2 3 4 5 6 7 8 9 10

```

## if statement

The `if` statement is a fundamental building block for making decisions and controlling the flow of your Bash scripts. Here's a breakdown of its syntax and usage:

**Basic Syntax:**

```bash
if [ condition ]; then
  #  commands to execute if the condition is true
fi

```

- `if`: This keyword marks the beginning of the if statement.
- `[ condition ]`: This part specifies the condition to be evaluated. Square brackets are required around the condition. Common comparison operators like `eq` (equal to), `gt` (greater than), `lt` (less than), etc., are used within the condition. You can also use logical operators like `&&` (AND), `||` (OR), and `!` (NOT) to combine conditions.
- `then`: This keyword introduces the block of commands that will be executed if the condition evaluates to true.

**Example:**

```bash
age=25
votingAge=18

if [ $age -ge $votingAge ]; then
  echo "You are eligible to vote."
fi

```

**Additional Clauses:**

- **else:** This clause specifies the code block to be executed if the condition in the `if` statement is false.
    - Example:
        
        ```bash
        if [ $age -lt $votingAge ]; then
          echo "You are not old enough to vote."
        else
          echo "You are eligible to vote."
        fi
        
        ```
        
- **elif:** This clause allows you to check for additional conditions after the initial `if` condition. You can have multiple `elif` clauses chained together.
    - Example:
        
        ```bash
        score=75
        pass_mark=80
        distinction_mark=90
        
        if [ $score -ge $distinction_mark ]; then
          echo "Congratulations! You achieved distinction."
        elif [ $score -ge $pass_mark ]; then
          echo "You passed the exam."
        else
          echo "You didn't pass. You need a higher score."
        fi
        
        ```
        

**Important Notes:**

- Remember the spaces around the square brackets `[]` in the condition part.
- Use single quotes (') around variable references within the condition to prevent unintended interpretation of special characters.
- Indentation is not strictly required but highly recommended for readability.

By effectively using `if` statements along with comparison and logical operators, you can create conditional logic within your Bash scripts to make informed decisions and control the flow of execution.

## Case

The `case` statement is another way to make decisions and control the flow of your Bash scripts. It's often a good alternative to nested `if` statements when you have multiple conditions to check against a single value.

**Syntax:**

```bash
case expression in
  pattern1)  # statements to execute if expression matches pattern1
    ;;
  pattern2)  # statements to execute if expression matches pattern2
    ;;
  ...        # more patterns and corresponding statements
  *)         # default case (optional)
    ;;
esac

```

- `case`: This keyword marks the beginning of the case statement.
- `expression`: This is the value you want to compare against the patterns. It can be a variable, a command substitution, or a literal value.
- `pattern1`, `pattern2`, etc.: These are the patterns you want to match against the expression. Patterns can be simple values, wildcards (``), or ranges using ``.
- `statements`: The indented block of commands to be executed if the expression matches the corresponding pattern.
- `;;`: This double semicolon (mandatory) marks the end of each pattern clause.
- `)`: This is the optional default case that gets executed if none of the other patterns match the expression.

**Example:**

```bash
dayOfWeek=$(date +%u)  # Get the day of the week (1-7)

case $dayOfWeek in
  1)
    echo "Today is Monday."
    ;;
  2)
    echo "Today is Tuesday."
    ;;
  3)
    echo "Today is Wednesday."
    ;;
  *)
    echo "It's a weekend (Saturday or Sunday)."
    ;;
esac

```

**Advantages of `case`:**

- More readable for multiple conditions compared to nested `if` statements.
- Breaks on the first matching pattern, making the code more efficient.

**When to Use `case`:**

- When you have a single value to compare against multiple conditions.
- When you want a cleaner and more organized way to handle multiple conditions.

Remember that both `if` statements and `case` statements offer ways to control the flow of your Bash scripts. The choice between them depends on your specific needs and coding style.

## Command substitution

Command substitution is a powerful feature in Bash scripting that allows you to capture the output of a command and use it within your script as if it were a value. Here's a breakdown of how it works and how you can leverage it effectively:

**Syntax:**

There are two main ways to perform command substitution:

1. **Using Backticks (deprecated):**
    
    ```bash
    variable_name=`command`
    
    ```
    
    - `variable_name`: This is the name of the variable where you want to store the output of the command.
    - `command`: This is the Bash command whose output you want to capture.
    - **Note:** The use of backticks for command substitution is considered deprecated in modern Bash scripting due to potential parsing issues.
2. **Using Parentheses (recommended):**
    
    ```bash
    variable_name=$(command)
    
    ```
    
    - This syntax is the preferred and more reliable way to perform command substitution. It offers better readability and avoids potential parsing problems.

**Example:**

```bash
current_date=$(date +%Y-%m-%d)  # Capture date in YYYY-MM-DD format
echo "Today's date is: $current_date"

```

**Explanation:**

- The `date +%Y-%m-%d` command formats the current date in the specified format (YYYY-MM-DD).
- The output of this command is captured using `$( )` and assigned to the `current_date` variable.
- The `echo` command then prints the stored date from the `current_date` variable.

**Common Use Cases:**

- **Capture Output for Later Use:** You can use command substitution to store the output of any command, such as file listings, system information, or the results of calculations, and utilize it later in your script.
- **Dynamic File Names:** You can incorporate the output of a command within file names or paths to create dynamic file operations.
- **Conditional Logic:** You can use command substitution to check the output of a command and make decisions based on it within your script.

**Benefits:**

- Improves code readability and maintainability by encapsulating complex commands within variables.
- Enables dynamic behavior by allowing the script to adapt based on the output of commands.

**Important Considerations:**

- Be cautious when using `eval` in conjunction with command substitution, as it can introduce security risks if not handled properly. Consider safer alternatives for dynamic command execution.
- Ensure proper quoting (single or double quotes) around the command within the parentheses to prevent unintended manipulation by the shell.

## read

The `read` command in Bash scripting is used to accept user input from the terminal. Here's a breakdown of its functionality and the options you mentioned:

**Basic Usage:**

```bash
read variable_name

```

- `variable_name`: This is the name of the variable where you want to store the user's input.

**Example:**

```bash
echo "What is your name?"
read name
echo "Hello, $name!"

```

**Option -s (Silent Mode):**

- The `s` option suppresses the echo of the user's input on the screen. This is useful for situations where you want to capture passwords or other sensitive information without displaying it on the terminal.

**Example:**

```bash
echo "Enter your password (won't be shown):"
read -s password
echo " "  # Add an empty line for spacing
echo "Password (not echoed) is: $password"

```

**Explanation:**

- The `s` option with `read` ensures the user's password typing won't be displayed on the screen.
- An empty line (`echo " "`) is added for better formatting and separation from the next output line.

**Option -p (Prompt):**

- The `p` option allows you to specify a custom prompt message that is displayed to the user before they enter their input.

**Example:**

```bash
echo "Enter your age:"
read -p "Age: " age
echo "You entered: $age"

```

**Explanation:**

- The `p "Age: "` part defines the prompt message that will be displayed before the user enters their age.

**Key Points:**

- Remember that the `read` command waits for the user to press Enter before proceeding.
- Use single quotes (') around the prompt message in `p` to prevent special character interpretation.
- Consider using input validation to ensure the user enters data in the expected format.

By incorporating these options with the `read` command, you can create more interactive and user-friendly Bash scripts that cater to different input scenarios.

## Creating, Accessing, and Modifying Arrays in Bash

In Bash scripting, arrays provide a powerful way to store and manage collections of items under a single variable name. Here's a breakdown of how to work with arrays:

**1. Creating Arrays:**

- Arrays can be declared using the `declare` builtin or simply by assigning values enclosed in parentheses to a variable.

```bash
# Method 1: Using declare
declare -a my_array  # Declares an empty array named my_array

# Method 2: Direct assignment
fruits=("apple" "banana" "orange")  # Creates an array named fruits

```

**2. Accessing Elements:**

- Individual elements are accessed using their numerical index within square brackets (starting from 0).

```bash
fruits=("apple" "banana" "orange")

first_fruit=${fruits[0]}  # Assigns "apple" to the variable first_fruit
last_element=${fruits[-1]}  # Assigns "orange" (using negative index for last element)

```

**3. Adding Elements:**

- You can append elements to the end of the array using the assignment operator within square brackets.

```bash
fruits=("apple" "banana" "orange")
fruits[3]="mango"  # Adds "mango" to the fourth position (index 3)

```

**4. Updating Elements:**

- Similar to adding, use square brackets with the desired index to modify an existing element.

```bash
fruits=("apple" "banana" "orange")
fruits[1]="cherry"  # Replaces "banana" with "cherry" at index 1

```

**5. Removing Elements (Indirect):**

- Bash arrays don't have a built-in method to directly remove elements. However, you can achieve a similar effect by creating a new array without the unwanted element(s).

```bash
fruits=("apple" "banana" "orange" "grape")
new_fruits=()

# Looping through the original array and adding elements except "banana" to the new array
for fruit in "${fruits[@]}"; do
  if [[ $fruit != "banana" ]]; then
    new_fruits+=("$fruit")
  fi
done

fruits=("${new_fruits[@]}")  # Assigning the new array back to fruits (effectively removes "banana")

```

**6. Looping Through Arrays:**

- The `for` loop with parameter expansion is commonly used to iterate through each element in an array.

```bash
vegetables=("potato" "carrot" "broccoli")

for veggie in "${vegetables[@]}"; do
  echo "Wash the $veggie."
done

```

**7. Array Length:**

- The `$#array_name` expression provides the number of elements in the array.

```bash
fruits=("apple" "banana" "orange")
num_fruits=${#fruits[@]}
echo "There are $num_fruits fruits in the array."

```

**8. Other Array Features:**

- Bash supports associative arrays (introduced in Bash version 4) where elements can be accessed by keys instead of just numerical indexes.
- The `declare` builtin offers additional functionalities for managing arrays.

By understanding these concepts, you can leverage arrays to organize and process data efficiently within your Bash scripts.

## while loop

The `while` loop is a fundamental control flow statement in Bash scripting that allows you to repeatedly execute a block of commands as long as a specific condition remains true. Here's a breakdown of its syntax and usage:

**Basic Syntax:**

```bash
while [ condition ]; do
  # commands to execute if the condition is true
done

```

**Explanation:**

- `while`: This keyword marks the beginning of the `while` loop.
- `[ condition ]`: This part specifies the condition that needs to be evaluated. Square brackets are required around the condition. Common comparison operators like `eq` (equal to), `gt` (greater than), `lt` (less than), etc., are used within the condition. You can also use logical operators like `&&` (AND), `||` (OR), and `!` (NOT) to combine conditions.
- `do`: This keyword introduces the block of commands that will be executed repeatedly as long as the condition evaluates to true.
- `done`: This keyword marks the end of the `while` loop.

**Example:**

```bash
counter=1
while [ $counter -le 5 ]; do  # Loop runs 5 times
  echo "Iteration number: $counter"
  counter=$((counter + 1))  # Increment counter
  #counter=$((counter++))   Increment counter
done

```

**Key Points:**

- The condition within the square brackets is evaluated before each iteration of the loop.
- If the condition is true, the commands within the `do`...`done` block are executed.
- The loop continues to iterate as long as the condition remains true.
- Once the condition becomes false, the loop exits, and the script execution continues with the code after the `done` keyword.

**Additional Considerations:**

- Use proper indentation for readability, although not strictly required by Bash.
- You can use the `break` statement within the loop to exit it prematurely if a certain condition is met.
- The `continue` statement allows you to skip the remaining commands in the current iteration and jump to the next iteration of the loop.

**Common Use Cases:**

- Iterating over a set number of times based on a counter variable.
- Processing a list of files or lines from a file.
- Waiting for a specific event or condition to occur (e.g., user input, network availability).

## for loop

The `for` loop is another essential control flow statement in Bash scripting that allows you to iterate over a list of items and execute a block of commands for each item. Here's a breakdown of its syntax and usage:

**Basic Syntax:**

```bash
for variable in list; do
  # commands to execute for each item in the list
done

```

**Explanation:**

- `for`: This keyword marks the beginning of the `for` loop.
- `variable`: This is the name of the variable that will hold the value of each item in the list during each iteration of the loop.
- `in`: This keyword separates the variable from the list.
- `list`: This represents the collection of items that the loop will iterate over. The list can be a sequence of strings, numbers, filenames, or the output of a command.
- `do`: This keyword introduces the block of commands that will be executed for each item in the list.
- `done`: This keyword marks the end of the `for` loop.

**Example:**

```bash
fruits="apple banana orange"

for fruit in $fruits; do
  echo "I like to eat $fruit."
done

```

**Key Points:**

- In each iteration, the loop assigns the value of the current item from the list to the specified variable.
- The commands within the `do`...`done` block are executed for each item in the list.
- The loop automatically moves to the next item in the list after executing the commands for the current item.

**Additional Features:**

- You can use a range of numbers in the list: `for num in {1..5}` (iterates from 1 to 5).
- You can iterate over the lines in a file: `for line in $(cat myfile.txt)`.
- The `break` statement allows you to exit the loop prematurely.
- The `continue` statement skips the remaining commands in the current iteration and moves to the next item.

**Common Use Cases:**

- Processing each item in a list of files or directories.
- Performing calculations or operations on a sequence of numbers.
- Iterating over lines in a text file and processing each line.

## select

The `select` construct in Bash scripting provides a convenient way to create interactive menus that allow users to choose from a list of options. Here's a breakdown of its syntax and how you can leverage it for user input:

**Syntax:**

```bash
select item in list; do
  # commands to execute based on the selected item
  break
done

```

**Explanation:**

- `select`: This keyword marks the beginning of the `select` construct.
- `item`: This represents the variable name that will store the selected item from the list.
- `in`: This keyword separates the variable from the list.
- `list`: This is the collection of items that will be displayed in the menu. The list can be a sequence of strings enclosed in double quotes or a command substitution.
- `do`: This keyword introduces the block of commands that will be executed.
- `break`: This statement is essential within the `do` block to exit the loop after a selection is made. Without `break`, the loop would continue to display the menu.

**Example:**

```bash
options=("Option 1" "Option 2" "Exit")

PS3="Please select an option: "  # Optional prompt for user input

select choice in "${options[@]}"; do
  case $choice in
    "Option 1")
      echo "You selected Option 1."
      break
      ;;
    "Option 2")
      echo "You selected Option 2."
      break
      ;;
    "Exit")
      echo "Exiting the script."
      break
      ;;
    *)
      echo "Invalid choice. Please select a numbered option."
      ;;
  esac
done

```

**Explanation:**

1. The `options` array holds the menu items.
2. The `PS3` variable (optional) sets a custom prompt message displayed before the menu.
3. The `select` loop iterates through the `options` array.
4. The `case` statement checks the selected `$choice` from the loop.
5. Each case block handles the selection and executes the corresponding action.
6. The `break` statement within each case or the default (``) clause exits the loop.

**Key Points:**

- The `select` construct automatically numbers the menu items for user selection.
- You can use `PS3` to customize the prompt message displayed before the menu.
- Utilize `case` statements to handle different choices and perform actions accordingly.
- Include a default case (``) to handle invalid user input and provide an informative message.

By incorporating the `select` construct in your Bash scripts, you can create user-friendly interfaces that guide users through their options and improve the overall interactive experience.

## execute Bash scripts using different methods

**1. Using `sh` (Bourne Shell):**

- **Functionality:** The `sh` command refers to the Bourne shell, the historical default shell in Unix systems. While it can generally execute Bash scripts, there might be subtle syntax differences between Bash and sh.
- **Execution:**
    
    ```bash
    sh your_script.sh
    
    ```
    

**2. Using `bash` (Bourne Again Shell):**

- **Functionality:** This is the recommended approach for Bash scripts. The `bash` command explicitly calls the Bash interpreter, ensuring your script runs in the intended Bash environment.
- **Execution:**
    
    ```bash
    bash your_script.sh
    
    ```
    

**3. Using `zsh` (Z shell):**

- **Functionality:** Z shell (zsh) is a powerful shell that can also execute Bash scripts. However, similar to `sh`, there might be minor compatibility considerations.
- **Execution:**
    
    ```bash
    zsh your_script.sh  # Not recommended for pure Bash scripts
    
    ```
    

**4. Using `./` (Execute from Current Directory):**

- **Functionality:** The `./` prefix indicates the script resides in the current working directory. This is a convenient way to execute the script directly, assuming the script has executable permissions.
- **Setting Executable Permissions:**
    
    ```bash
    chmod +x your_script.sh  # Makes the script executable
    
    ```
    
- **Execution:**
    
    ```bash
    ./your_script.sh
    
    ```
    

**Choosing the Right Method:**

- For maximum compatibility and control, using `bash` is generally recommended for Bash scripts.
- If `bash` is not available or you're unsure, `sh` might work but with a slight risk of minor compatibility issues.
- Avoid using `zsh` for pure Bash scripts unless you're aware of potential differences.
- The `./` method is efficient for executable scripts in the current directory.

**Additional Considerations:**

- Script headers (shebang lines) can be used to specify the preferred interpreter. For example, `#!/bin/bash` at the beginning of your script explicitly tells the system to use Bash for execution.
- Ensure your script has the necessary permissions (usually `chmod +x your_script.sh`) to be executed.

By understanding these methods and considerations, you can effectively execute your Bash scripts using the most appropriate approach for your specific needs.

## These flags are commonly used

**1. -x (execute):**

- This flag is used with the `test` command (or its synonym `[ ]`) to check if a file has execute permission for the current user.
- Example: `test -x my_script.sh` returns true if the script is executable, false otherwise.

**2. -r (read):**

- This flag checks if a file has read permission for the current user.
- Example: `test -r data.txt` returns true if the file "data.txt" is readable.

**3. -w (write):**

- This flag checks if a file has write permission for the current user.
- Example: `test -w important_file.txt` returns true if the file can be written to.

**4. -s (size):**

- This flag is used with the `test` command to check if a file has a non-zero size (i.e., is not empty).
- Example: `test -s output.log` returns true if the file "output.log" is not empty.

**5. -f (regular file):**

- This flag checks if a file is a regular file (not a directory, symbolic link, etc.).
- Example: `test -f configuration.ini` returns true if "configuration.ini" is a regular file.

**6. -d (directory):**

- This flag checks if a path points to a directory.
- Example: `test -d /home/user` returns true if "/home/user" exists and is a directory.

**7. -e (exist):**

- This flag checks if a file or directory exists.
- Example: `test -e backup.tar.gz` returns true if the file "backup.tar.gz" exists.

**8. -z (zero length):**

- This flag checks if a string variable is empty (zero length).
- Example: `test -z "$my_variable"` returns true if the variable `my_variable` is empty.

**9. -o (OR):**

- This flag is used with the `test` command as a logical operator to combine multiple conditions using OR logic.
- Example: `test -r file1.txt -o -r file2.txt` checks if either "file1.txt" or "file2.txt" is readable.

**Important Notes:**

- These flags are primarily used with the `test` command or for file attribute checks.
- The specific behavior of some flags might vary depending on the context and command used.
- Refer to the manual pages of the specific commands you're using for detailed information on available flags and their functionalities.

## The -a Flag in Bash: Working with Arrays

The `-a` flag, also known as the array flag, is used in various contexts within Bash scripting to manipulate and interact with arrays. Here's a breakdown of its functionalities along with examples:

**1. Checking for Array Existence (with `test`):**

- When used with the `test` command (or its synonym `[ ]`), `a` helps verify if a variable name represents an actual array.

```bash
my_array=(element1 element2 element3)

# Check if my_array is an array
if test -a my_array; then
  echo "my_array is an array."
else
  echo "my_array is not an array."
fi

```

This script defines an array `my_array` and then uses `test -a` within an `if` statement. If `my_array` is indeed an array, the first message is printed.

**2. Accessing All Array Elements:**

- The `a` flag plays a role in parameter expansion when working with arrays. It allows you to access all elements of an array at once.

```bash
my_array=(apple banana orange)

# Print all elements of the array
echo "${my_array[@]}"

```

Here, `${my_array[@]}` expands the array `my_array` and prints all its elements (apple, banana, orange) separated by spaces.

**3. Looping Through Arrays (with `for`):**

- The `a` flag within a `for` loop iterates through each element of an array efficiently.

```bash
fruits=(apple banana orange)

for element in "${fruits[@]}"; do
  echo "I like to eat $element."
done

```

This script defines a `fruits` array and uses a `for` loop with `-a`. The loop iterates over each element (`element`) in the array, and the corresponding message is printed for each fruit.

**4. Other Potential Uses (Limited):**

- In some less common scenarios, specific Bash commands might utilize the `a` flag for array-related functionalities. It's always best to consult the manual page of the specific command for details on its flag behavior.

**Key Points:**

- The `a` flag primarily finds use in contexts involving arrays.
- It helps verify if a variable is an array, access all elements, or iterate through them in loops.
- When expanding arrays, it's often combined with other parameter expansion constructs like `@` (all elements) or `` (individual elements based on index).

By understanding the `-a` flag and its role in array operations, you can effectively manage and process data collections within your Bash scripts.

## functions

In Bash scripting, functions are like mini-programs within your main script. They help you organize your code by grouping related tasks together. Here's a simplified explanation:

**1. Creating a Function:**

Imagine a function as a named box where you put instructions to do a specific job. You give the box a name (the function name) and tell it what to do with simple commands.

```bash
function greet_user {
  echo "Hello!"
}

```

In this example, the function is named `greet_user`. When you run this code, nothing happens yet. The function is just defined, waiting for its turn.

**2. Running a Function:**

To use the function, you call its name like you're calling a friend. This tells the script to execute the instructions inside the function.

```bash
greet_user  # This calls the function

```

Now, the script will print "Hello!" because that's what the function is programmed to do.

**3. Benefits of Functions:**

- **Reusability:** Once you define a function, you can call it multiple times throughout your script without rewriting the code each time.
- **Organization:** Functions break down your script into smaller, easier-to-understand parts.
- **Flexibility:** You can pass information (arguments) to functions, making them more adaptable for different situations.

**4. Key Points:**

- Functions are named blocks of code that perform specific tasks.
- You call a function to execute its instructions.
- Functions improve code readability and maintainability.

Think of functions as tools in your Bash scripting toolbox. They help you write cleaner and more efficient scripts!

## methods create functions

All three of the ways you've provided are valid methods to define a function in Bash scripting. They achieve the same outcome but differ slightly in style:

1. **Function Declaration (Most Common):**

```bash
function function_name() {
  # Function body with commands here
}

```

This is the most common and recommended way. It explicitly declares the function using the `function` keyword, followed by the function name and parentheses. The opening and closing curly braces `{}` enclose the function's body, containing the code that executes when the function is called.

1. **Function Keyword Omission (Less Common):**

```bash
function_name() {
  # Function body with commands here
}

```

In this approach, you omit the `function` keyword before the function name. While Bash allows this, it's less common and can lead to readability issues if you're not consistent throughout your script. It's generally recommended to use the explicit `function` declaration for clarity.

1. **Shorthand Function Definition (Simplest, But Limited):**

```bash
fun() {
  # Function body with commands here
}

```

This is the simplest way, but it has limitations. Here, you directly define the function name followed by parentheses and curly braces. This method is suitable only for very short functions without arguments. For more complex functions or those that take arguments, it's best to use the full function declaration with the `function` keyword.

**In summary:**

- All three methods create functional functions.
- The first approach (function declaration) is the most readable and preferred.
- The second approach (omitting function keyword) is less common and can be confusing.
- The third approach (shorthand) is limited to very simple functions.

Choose the style that best suits your coding preferences and maintains clarity within your scripts.

## Variable Scope in Bash Scripting

**1. Local Variables:**

- Local variables are created within a specific scope, such as a function or a block of code enclosed in curly braces `{}`.
- They are only accessible within that scope and are not visible from outside of it. This helps prevent naming conflicts and unintended modifications from other parts of the script.

```bash
function greet_user() {
  local name="Alice"  # Local variable, only accessible within this function
  echo "Hello, $name!"
}

greet_user  # This doesn't affect any variable outside the function

name="Bob"  # This is a separate global variable (explained below)
echo "Hello again, $name!"  # This prints "Hello again, Bob!"

```

**2. Global Variables:**

- Global variables are declared outside of any function or block of code.
- They are accessible from anywhere within the script, including all functions.
- Use global variables with caution as they can lead to unintended side effects if modified within functions. It's generally recommended to prioritize local variables for better code maintainability.

```bash
name="Charlie"  # Global variable, accessible throughout the script

function change_name() {
  name="David"  # Modifying the global variable within the function
}

change_name

echo "The name has changed to: $name"  # This prints "The name has changed to: David"

# Here, name is accessible and modified by the function

```

**Key Points:**

- Local variables are preferred for keeping your code modular and avoiding naming conflicts.
- Global variables should be used sparingly and only when data truly needs to be shared across different parts of your script.
- Be mindful of potential side effects when modifying global variables within functions.

## Functions in Bash: Advanced Explorations

Bash functions go beyond simple code reuse. They offer powerful mechanisms to modularize, enhance readability, and manage complexity in your scripts. Here's a deep dive into their advanced functionalities:

**1. Arguments and Parameters:**

- Functions can accept arguments passed from the script invocation. These arguments are accessible within the function using positional parameters like `$1`, `$2`, and so on.

```bash
greet_user() {
  local name="$1"  # Assigns the first argument to the variable "name"
  echo "Hello, $name! How can I help you today?"
}

greet_user "Alice"  # "Alice" is passed as the first argument

```

**2. Return Values:**

- Unlike functions in some programming languages, Bash functions generally don't return values through a dedicated `return` statement.
- However, the function's exit status (0 for success, non-zero for error) can be used to indicate its execution outcome. The script can check this status using the `$?` variable.

```bash
check_file_exists() {
  local file_path="$1"
  if [[ -f "$file_path" ]]; then
    echo "File exists!"
    return 0  # Indicate success
  else
    echo "File not found!"
    return 1  # Indicate error
  fi
}

file_to_check="data.txt"
check_file_exists "$file_to_check"

if [[ $? -eq 0 ]]; then
  echo "We can proceed as the file exists."
else
  echo "The script cannot continue without the file."
fi

```

**3. Local vs. Global Variables:**

- By default, variables declared within a function are local to that function's scope and are not accessible from the main script.
- To modify a variable outside the function, you can either pass it as an argument or use the `global` keyword (with caution) to declare it as global within the function.

**4. Nested Functions:**

- Functions can be defined and called within other functions, creating a hierarchy of functionalities.

```bash
calculate_area() {
  local shape="$1"
  local length="$2"
  local width="$3"

  if [[ $shape == "rectangle" ]]; then
    return $(($length * $width))
  elif [[ $shape == "square" ]]; then
    return $(($length * $length))
  else
    echo "Unsupported shape!"
    return 1
  fi
}

get_total_area() {
  local rectangle_area=$(calculate_area rectangle 5 4)
  local square_area=$(calculate_area square 3)
  echo "Total area: $((rectangle_area + square_area))"
}

get_total_area

```

**5. Recursion:**

- In certain scenarios, functions can call themselves, leading to recursive behavior. This can be useful for tasks involving tree-like data structures or repetitive operations.

**6. Function Libraries:**

- You can create separate files containing reusable functions and source them into your scripts using the `. source` command. This promotes code organization and reduces redundancy.

**7. Advanced Techniques:**

- Advanced topics include anonymous functions (using process substitution), function pointers (storing functions in variables), and manipulating function attributes with `declare`.

By understanding these advanced concepts, you can leverage Bash functions to write clean, maintainable, and powerful scripts. Remember to carefully consider the use of global variables and recursion to avoid potential pitfalls.

## Resources

[Command Line Arguments in Linux Shell Scripts - TecAdmin](https://tecadmin.net/tutorial/bash-scripting/bash-command-arguments/)

[](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)

[Bash For Loop Examples](https://www.cyberciti.biz/faq/bash-for-loop/)

[Bash Functions](https://linuxize.com/post/bash-functions/)
