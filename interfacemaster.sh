#!/bin/bash

# Determine the switch port identifiers on your device using the ip link show command
ip link show

# Back up the current /etc/network/interfaces file
cp /etc/network/interfaces /etc/network/interfaces.bak

# Create the script in the cumulus user home directory
cat << EOF > ~/interfaces_config.sh
#!/bin/bash

# Add your interface configuration commands here
# For example:
# auto eth0
# iface eth0 inet dhcp

EOF

# Make the script executable
chmod +x ~/interfaces_config.sh

# Run the script using sudo, then apply the changes
sudo ~/interfaces_config.sh
sudo ifreload -a

# Verify that the ports are active using the ip link show command
ip link show
