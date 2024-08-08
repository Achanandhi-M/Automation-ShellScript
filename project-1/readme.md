# DigitalOcean Droplet Management Script

This Bash script allows you to manage your DigitalOcean Droplets easily through the command line. It provides a menu-driven interface to list, create, and delete Droplets using the `doctl` command-line tool.

## Prerequisites

Before using this script, ensure the following:

1. **DigitalOcean Account**: You need an active DigitalOcean account.
2. **doctl Installed**: The DigitalOcean CLI tool `doctl` should be installed and configured with your DigitalOcean API token.

   - To install `doctl`, follow the instructions [here](https://docs.digitalocean.com/reference/doctl/how-to/install/).
   - Authenticate `doctl` using your API token:
     ```sh
     doctl auth init
     ```

## Script Overview

### Features

- **List Droplets**: View all your DigitalOcean Droplets.
- **Create Droplets**: Create a new Droplet with a specified name.
- **Delete Droplets**: Delete an existing Droplet by name.

### Menu Options

1. **List Droplets**: Displays a list of all your Droplets.
2. **Create Droplets**: Prompts you to provide a name and creates a new Droplet with a predefined configuration (Ubuntu 24.04, 1 vCPU, 1GB RAM, in region `blr1`).
3. **Delete Droplets**: Lists all Droplets and allows you to delete one by its name.
4. **Exit**: Exits the script.

## How to Use

1. **Download the Script**

   Save the script file with the `.sh` extension, for example, `droplet.sh`.

2. **Make the Script Executable**

   Before running the script, you need to make it executable:

   ```sh
   chmod +x droplet.sh
   ```

3. **Run the Script**

   Execute the script from your terminal:

   ```sh
   ./droplet.sh
   ```

   The script will display a menu with options to manage your Droplets.

### Script Breakdown

#### Functions:

- **`display_menu`**: Displays the main menu with options.
- **`create_droplet`**: Prompts the user for a Droplet name and creates it using a predefined configuration.
- **`list_droplet`**: Lists all the Droplets available in your DigitalOcean account.
- **`delete_droplet`**: Lists Droplets and prompts the user to delete one by its name.
- **`main`**: Controls the flow of the script, displaying the menu and handling user input.

## Example Output

- **Create Droplet**:
  ```sh
  Give Name for your droplet
  ```
  After entering the name, a new Droplet is created with the specified configuration, and the list of Droplets is displayed.

- **Delete Droplet**:
  ```sh
  Enter Name of your droplet to delete
  ```
  After entering the name, the specified Droplet is deleted, and the updated list of Droplets is displayed.

## Notes

- Ensure that you have sufficient permissions and that `doctl` is properly configured before running this script.
- The script is set to create Droplets with a specific configuration (1 vCPU, 1GB RAM, Ubuntu 24.04, in region `blr1`). Modify the script if you need different configurations.

