# List devices
blkid
# Assemble RAID
mdadm --assemble /dev/md0 /dev/sdc1 /dev/sdd1
# And mount it
mount /dev/md0 /mnt/raid4tb/
