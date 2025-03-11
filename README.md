# mario-maskim

## Description
This project installs an Nginx web server to serve a mario game website. It uses Ansible to automate the server configuration.

## Project Structure
- `README.md`: This file with the project description.
- `run_ansible.sh`: Script to run Ansible.
- `ansible/`
  - `hosts`: File with host information for Ansible.
  - `playbook.yml`: Ansible playbook for server configuration.
- `app/`
  - `files/`
    - `nginx.conf.j2`: Template for the Nginx configuration file.
    - `site/`: Directory with site files.

## Usage
1. Install Ansible if it is not already installed:
    ```sh
    sudo apt-get install ansible
    ```
2. Run the `run_ansible.sh` script to configure the server:
    ```sh
    ./run_ansible.sh
    ```

## License
This project is licensed under the MIT License.
