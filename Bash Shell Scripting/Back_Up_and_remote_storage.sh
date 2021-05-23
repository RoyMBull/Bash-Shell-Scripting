
#we will use: "rsync" and "dd"

#	rsync: copies the contents of a set of files/directories, either copying the data's content, 
#			or mirroin the exact attributes of the file: file permissions, ownership, filetype, etc etc
#			this command works over a network or on sinle machines (can be useful for remote cloning)
#	   -o: (ex rsync -o source destination) -> copies the ownership of the file
#	   -g: (ex rsync -g source destination) -> copeis the group ownership of the file
#	   -p: (ex rsync -p source destination) -> copies the file permissions
#	   -t: (ex rsync -t source destination) -> copies the file timestamps
#	   -r: (ex rsync -r source destination) -> copies the directories recusively (including their contents too)
#	   -l: (ex rsync -l source destination) -> permits symbolic links to be copied (not to the files they point to)
#	   -D: (ex rsync -D source destination) -> permit devices to be copied (COULD BE USEFUL)
#	   -a: (ex rsync -a source destination) -> mirros all options of the files  (VERY USEFUL)
#	   -x: (ex rsync -x source destination) -> copies files while remaining of same filesystem, not crossing over into other ones
#	   -n: (ex rsync -n source destination) -> don't do any copying, just display what would be done (USEFUL)
#	   -v: (ex rsync -v source destination) -> print information about what's happening during the copy process: use 
#												-progress to display a numeric meter of the transfer percentage 
#		(ex rsync -a mydir someplace@server.someaddress.com) -> this is how to mirror over a network, and is securred with SSH
#
#	  dd: copies one file to another, along with the ability to clone a disk by copying from one device to another device (Wariing overwrites the destination device)
#	if=filename/device  of=filename/device  : (ex dd if=filename/device of=filename/device )
#	bs=N (ex dd bs=numberofblocks) ->copeis a certain number of bytes at a time
#	skip=N (ex dd skip=numberofblocks) -> skip packs of bytes for input before starting the copy
#	seek=N (ex dd seek=numberofblocks) -> discard blocks of output before starting the copy 
#	conv=spec (ex dd conv=ucase/lcase/ascii/etc) -> convert the data being transferred
#

#useful to me:    -r, -p, -o, -n, -a
#		my uses:
#				rsync -r -a -v -progress somedir newdir -> copies all directory with all files, with all permissions  (cloning directories)
#				rsync -a -v -progress somefile somefile (clonning a file)
#				dd if=filename/device of=filename/device  ex: dd if=/dev/sdb of=/dev/sd0 bs=512 (Warining, formats destination device, and if not used carefully can destroy your own)
#					(potential virus with this is having the harddrive re-write itself and destroy all data)


function df_human_readable
{
	df -h -la 
}

function Clone
{filesys="Disk_to_clone"
 CloneTo="/dev/sda"
	echo "Displaying File systems >>>>"
	clear
		df_human_readable
	echo "   "
	echo "   "
	echo "Enter the filesystem as you see it described"
		read filesys 
		dd if=$filesys of=$CloneTo bs=512
}


echo "Warning... All data on destination device will be DESTROYED"
sleep 4
	Clone
