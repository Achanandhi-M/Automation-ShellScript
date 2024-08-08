#!/bin/bash

display_menu(){
    echo -e "\n===== First Get Auth With DigitalOcean Before trying this one ====="

    echo "1. List Droplets"
    
    echo "2 Create Droplets"

    echo "3 Delete Droplets"

    echo "4. Exit"

    echo "==================="
}

# Function to create droplet

create_droplet(){

echo "Give Name for your droplet"

read Name

doctl compute droplet create $Name --size s-1vcpu-1gb --image ubuntu-24-04-x64 --region blr1

echo "Result from DigitalOcean"

doctl compute droplet list --format ID,Name,PublicIPv4,Status,Memory,VCPUs,Disk,Region,Image,Volumes

}

# function to list droplet
list_droplet(){
    doctl compute droplet list
}

# function to delete droplet

delete_droplet(){
    
doctl compute droplet list --format Name,Status,Memory,VCPUs,Disk,Region,Image,Volumes

echo "Enter Name of your droplet to delete"

read Name

doctl compute droplet delete $Name 

echo "Result from DigitalOcean"

doctl compute droplet list --format ID,Name,PublicIPv4,Status,Memory,VCPUs,Disk,Region,Image,Volumes

}

#Main function

main(){
    while true;do
    display_menu
    read -p "Enter your choice(1-4): " choice
    case $choice in
    1) list_droplet ;;
    2) create_droplet ;;
    3) delete_droplet ;;
    4) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid Choice. Please enter a number between 1 and 3" ;;
    esac
    done
}

# Execute the main 

main
