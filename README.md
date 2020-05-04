Contents

- [Gatsby over Node.js with Docker](#gatsby-over-nodejs-with-docker)
- [Naming convention for Images - Examples](#naming-convention-for-images-examples)
- [Naming convention for Containers - Examples](#naming-convention-for-containers-examples)


# Gatsby over Node.js with Docker

Dockerfile to build a generic base for working with Gatsby Site Generator.
 
The parent image (nod-nod-debi:12.16.2-9.12.0) was built using a (clone of the) 
official NodeJS (version 12.16.2) Docker image over Debian (version 9.12.0) Stretch. 

# Naming convention for Images - Examples

Since we work with lots of images and container daily as time goes and container and
images start piling up, we need to come up with a convenient way to name such objects
inside Docker. 

Here's a suggested naming convention for images:
 
**[VENDOR]-[MAIN SOFTWARE]-[OPERATING SYSTEM]:[TAG]**

*XXX-YYY-ZZZZ:N.N.N.N-N.N.N.N = [3-3-4]:[7-7]*

Where XXX: Are 3 letters from the image vendor. 

      YYY: Are 3 letters from the image main software.

      XXXX: Are 4 letters from the OS used to build the image. 

Examples:

**php-php-ubun:7.0-18.04** = Is PHP 7.0 from the vendor PHP.net running over Ubuntu 18.04 LTS.

**mys-mys-fedo:8.0-30** = MySQL 8.0 from vendor MySQL over Fedora 30.

**mic-sql-ws16:17.0-2016** = SQL Server 17.0 or 2016 from vendor Microsoft and running over
Windows Server 2016.

# Naming convention for Containers - Examples

[VENDOR]-[MAIN SOFTWARE]-[OPERATING SYSTEM]_[VERSION]
XXX-YYY-ZZZZ_N.N.N.N-N.N.N.N = [3-3-4]_[7-7]

Examples: 

**atl-jir-cent_8.2.3-8** = Jira 8.2.3 from Atlassian running over Centos 8 OS.

**asf-kaf-ubun_2.2.0-18.04** = Kafka 2.2.0 from Apache Software Foundation running over
Ubuntu 18.04 LTS.

As you can see it offers a more predictable way to name images and containers and offers
a more organized way to display such names on console to commands such as `docker ps`.

