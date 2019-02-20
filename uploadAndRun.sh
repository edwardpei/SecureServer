#!/usr/bin/expect

set timeout 15

set user kupei
set pass Bsti1031@
set host grunhilda.soe.ucsc.edu
set remoteDir /afs/cats.ucsc.edu/users/h/kupei/CMPS122/lab1
set localDir /Users/kuopei/Documents/Winter2019/CMPS122/LAB1/BrutalForceCracker

spawn scp $localDir/crack.c crack.h users4 additional.h $user@$host:$remoteDir

expect "assword:" {send "$pass\r"}

interact
