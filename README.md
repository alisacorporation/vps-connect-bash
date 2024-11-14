# connect-vps.sh

This shell script connects to a server through SSH. If connected through a WireGuard VPN, it will use the VPN's internal IP. 
Otherwise, it will fall back to using the server's external IP address.

## Requirements

- **Bash**: The script is compatible with most Unix-based systems with bash installed.
- **SSH Key**: Ensure you have your SSH private key available for authentication.
- **WireGuard**: A WireGuard VPN configuration to connect through a secure tunnel.

## Configuration

Open `connect-vps.sh` and edit the following variables to suit your setup:

- `WIREGUARD_TUNNEL_IP`: The internal IP of your server accessible through WireGuard.
- `EXTERNAL_IP`: The external/public IP address of your server.
- `SSH_USER`: The SSH username to log into your server.
- `SSH_PORT`: The SSH port on your server (default is 22).

## Usage

1. Make the script executable:

   ```bash
   chmod +x connect-vps.sh
   ```

2. Run the script:

   ```bash
   ./connect-vps.sh
   ```

The script will attempt to ping the server's internal IP over WireGuard. If successful, it will SSH through the VPN. If the VPN is inactive, it will connect through the external IP.

## License

This script is available under the MIT License. See LICENSE for details.

## Troubleshooting

- **Permission Denied**: Ensure that your SSH key has the correct permissions and your username and IPs are correct.
- **Ping Failure**: If the WireGuard connection cannot be established, check your VPN status and network configuration.

## Contributions

Feel free to submit issues or pull requests for improvements.
