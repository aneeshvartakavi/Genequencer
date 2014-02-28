Project-Studio-Group-E
======================

A temporary repository for Project Studio.

Aneesh Vartakavi, Brad Short, Chih-Wei Wu and Xinyuan Lai
Georgia Tech Center for Music Technology

Instructions : 
The piece uses Java externals, and Max needs to be told where to find them.

-> Open ~/Max 6.1/Cycling 74/java/max.java.config.txt.

-> Somewhere in the text file, you should see the words "max.dynamic.class.dir". 
Copy that line, remove the semicolon at the start and end, and change the path to the local repository on your computer.

 max.dynamic.class.dir <path_to_group_E_folder>/Genetic/bin
 max.dynamic.class.dir <path_to_group_E_folder>/messageProcessing/bin
