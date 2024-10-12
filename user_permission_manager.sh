 #!/usr/bin/bash

 echo "User  Permission Manager " 
 echo "1. View Permission"
 echo "2. Change Permission"
 echo "3. Change Ownership"
 echo "4. Exit"


 read -p "Enter Choice: " choice 
 

   view_permissions() {
     read -p "Enter the file or directory name: " filename
     ls -l "$filename"
    }

   change_permission() {

     read -p "Enter the file or  directory name: " filename
     read -p "Enter the permission (eg. u+rwx , g+rw): " perm
      if  chmod $perm "$filename"; then 
        echo "Permission updated!"
      else 
        echo "Failed to update."
      fi
    }

   change_ownership(){

     read -p "Enter the file or directory name: " filename
     read -p "Enter the new owner: " owner
      if  chown $owner "$filename"; then
        echo "Ownership updated"
      else 
        echo "Failed."
      fi
    }

  case $choice in

    1) view_permissions ;;
    2) change_permissions ;;
    3) change_ownership ;;
    4) exit 0 ;;
    5) echo "Invaliid choice" ;;
  esac
