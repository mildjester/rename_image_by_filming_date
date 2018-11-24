# rename_image_by_filming_date

This script rename image files in current dir.  
Image file is renamed with filming date  
(yyyymmddhhmmss_suffix.extention).  


Be required exiftool.  
Please install due `brew install exiftool`.  

## Usage

Set alias on shell setting. (bashrc etc...)  
```
alias rename_image="/this_repository_path/rename_image_by_filming_date.sh"
```

Please `cd` to Dir that have Image File.  
And just run this script.  
If you set argument, suffix change to suffix word.
```
$ cd /image_dir_path/
$ rename_image hogehoge
$ ls -l
-rwxrwxrwx   1 user  staff   9.6M 11 23 15:06 20181123150648_hogehoge.JPG
-rwxrwxrwx   1 user  staff   9.7M 11 23 15:06 20181123150650_hogehoge.JPG
-rwxrwxrwx   1 user  staff   9.7M 11 23 15:06 20181123150652_hogehoge.JPG
```
