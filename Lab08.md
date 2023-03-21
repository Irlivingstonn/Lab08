## Lab 08

- Name: Isabella Livingston
- Email: livingston.70@wright.edu

## Part 1 Answers

1. Disks: nvme0n1
2. Unpartitioned disk: There are not any unpartitioned disks
3. `gdisk` main menu options
   - `p`: Display basic partition summary data
   - `o`: Clear out all partition data.
   - `n`: Creates a new partition
   - `i`: Shows more detailed partition information 
   - `w`: Writes Data to the Partition

4. Using the `gdisk` utility on the disk: sudo gdisk /dev/nvme0n1 >> p
5. sudo mkfs -t ext4 /dev/nvme0n1
6. cd /mnt/ ; mkdir expanse
7. sudo mount /dev/nvme0n1 /mnt/expanse/
8. Skip - trust you to do it ;)
9. sudo strings /dev/nvme0n1: shows the main memory of the system
10. After reading through the output, it still shows the main memory of the system
11. Step 1: Run command "sudo shred -zvu -n 5 new_file.txt", Step 2: Run command "sudo strings /dev/nvme0n1" 
12. sudo umount /dev/nvme0n1 /mnt/expanse/ : I cannot interact with the files and folders

## Part 2 Answers

1. touch original.txt
2. For `original.txt` identify:
   - Command to find the following info about `original.txt`: stat original.txt
   - inode number of `original.txt`: 21794452
   - number of blocks storing `original.txt`: 8
   - number of links to `original.txt`: 1
3. Command to create a hard link to `original.txt`: ln original.txt new_file.txt
   - What identifiers indicate a hard link was created? Type in 'ls -al' and saw that new_file.txt was made
   - Does modifying the hard linked file modify `original.txt`? Explain: Yes it does  modify 'original.txt' since it's both files are linked together
4. Command to create a symbolic link to `original.txt`: ln -s original.txt new_file.txt
   - What identifiers indicate a symbolic link was created? "0 new_file.txt  4 original.txt" as the output
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain: Yes it does work since both file name identify that they are both linked together.
5. Command to create a copy of `original.txt`: cp original.txt new_original.txt
   - Does modifying the copied file modify `original.txt`? Explain: No it does not modify the copied file, since it is not linked
6. Command to move `original.txt` to another directory. mv original.txt new_dir
   - Does it have the same inode? Explain: Both files have the same inode since inodes are used to keep track of the content of the file, file ownership, access mode, and file type
   - Was the hard link you created affected? Explain: No, the hardlink links the files together to where they can be in any directory and the contents of the files can change if one is edited.
   - Was the symbolic link you created affected? Explain: Yes since the file name 'original.txt' did not exist in the same directory as new_file.txt

## Extra Credit Answers

Line added to `/etc/fstab`:

```
Insert line here
```
