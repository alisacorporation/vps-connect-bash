#!/bin/bash

# Define variables
WIREGUARD_TUNNEL_IP="10.66.66.1"        # Replace with the WireGuard IP of your server
EXTERNAL_IP="your_server_ip"            # Replace with the public IP of your server
SSH_USER="your_ssh_user"                # Replace with your SSH username
SSH_PORT=40023                          # Replace with your SSH port if not the default (22)

# Check if we can reach the server through the WireGuard IP
if ping -c 1 -W 1 "$WIREGUARD_TUNNEL_IP" > /dev/null 2>&1; then
    echo "WireGuard tunnel is active. Connecting via tunnel IP ($WIREGUARD_TUNNEL_IP)..."
    ssh -i ~/.ssh/id_rsa -p "$SSH_PORT" "$SSH_USER@$WIREGUARD_TUNNEL_IP"
else
    echo "WireGuard tunnel is not active. Connecting via external IP ($EXTERNAL_IP)..."
    ssh -i ~/.ssh/id_rsa -p "$SSH_PORT" "$SSH_USER@$EXTERNAL_IP"
fi
