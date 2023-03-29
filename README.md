# InterfaceMaster
For configuring network interfaces


This script will determine the switch port identifiers on your device, back up the current /etc/network/interfaces file, create a new script in the cumulus user home directory for configuring the interfaces, make the script executable, run the script using sudo, apply the changes and verify that the ports are active. You can add your own interface configuration commands to the script by replacing the example commands with your own.
