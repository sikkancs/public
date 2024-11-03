# SSH agent config 

## Example
```
Host Super-host
	User root
	HostName 192.168.0.2
	Port 22
	IdentityFile ~/.ssh/pubkey.pub
	IdentitiesOnly yes
	StrictHostKeyChecking no
	#!! GroupLabels Label1, Group1
	#!! EnableDragFile Yes
```

## Default agens ssh config

### Basic Host Configuration

**Host:** Defines a block for configuration options that apply only to the specified host(s). You can use patterns (e.g., Host *, Host *.example.com) to apply configurations to multiple hosts.  
`Host example.com`  

**HostName:** Specifies the actual hostname or IP address for the host entry. Useful when you want to use aliases.  
`HostName example.com`  

**Port:** Sets the port for SSH to connect on. The default is 22.  
`Port 2222`  

**User:** Specifies the default username for the connection.  
`User myusername`  


### Authentication Options

**IdentityFile:** Specifies the path to the private key file for authentication. You can define multiple keys for different hosts.  
`IdentityFile ~/.ssh/id_rsa`  

**PreferredAuthentications:** Lists authentication methods in order of preference. Common methods are publickey, password, keyboard-interactive.  
`PreferredAuthentications publickey,password`  

**PasswordAuthentication:** Enables or disables password authentication (yes or no).  
`PasswordAuthentication no`  

**KbdInteractiveAuthentication:** Enables or disables keyboard-interactive authentication.  
`KbdInteractiveAuthentication yes`  

**ChallengeResponseAuthentication:** Enables or disables challenge-response authentication, often used with two-factor authentication.  
`ChallengeResponseAuthentication yes`  

**PubkeyAuthentication:** Enables or disables public key authentication (yes or no).  
`PubkeyAuthentication yes`  


### Connection Settings

**ConnectTimeout:** Specifies the timeout (in seconds) for SSH to establish a connection.  
`ConnectTimeout 10`  

**ServerAliveInterval:** Specifies the interval (in seconds) to send keep-alive messages to the server to keep the connection alive.  
`ServerAliveInterval 60`  

**ServerAliveCountMax:** Number of server alive messages sent without response before SSH considers the connection broken.  
`ServerAliveCountMax 3`  

**TCPKeepAlive:** Enables or disables TCP keepalive packets to detect if the connection has been lost (yes or no).  
`TCPKeepAlive yes`  


### Proxy and Tunneling

**ProxyCommand:** Specifies a command to connect through a proxy, often useful for connecting through jump hosts.  
`ProxyCommand ssh -W %h:**%p jump-host`  

**ProxyJump:** A simpler alternative to ProxyCommand for specifying jump hosts. Available in OpenSSH 7.3 and newer.  
`ProxyJump jump-host`  

**DynamicForward:** Enables a SOCKS proxy on the specified port. Useful for tunneling web traffic.  
`DynamicForward 1080`  

**LocalForward:** Specifies a local port to forward to a remote address.  
`LocalForward 8080 remotehost:**80`  

**RemoteForward:** Specifies a remote port to forward to a local address.  
`RemoteForward 9090 localhost:**9090`  


### Encryption and Security Options

**Ciphers:** Specifies a list of encryption algorithms, in order of preference.  
`Ciphers aes256-ctr,aes192-ctr,aes128-ctr`  

**MACs:** Specifies a list of Message Authentication Code (MAC) algorithms.  
`MACs hmac-sha2-256,hmac-sha2-512`  

**Compression:** Enables or disables compression (yes or no).  
`Compression yes`  

**KexAlgorithms:** Specifies the key exchange algorithms.  
`KexAlgorithms diffie-hellman-group-exchange-sha256`  

**StrictHostKeyChecking:** Controls whether SSH will automatically add new host keys to known_hosts (yes, no, or ask).  
`StrictHostKeyChecking ask`  

**UserKnownHostsFile:** Specifies the file for known hosts. Useful when you want to keep a separate known hosts file per project or connection.  
`UserKnownHo`stsFile ~/.ssh/known_hosts  
**VerifyHostKeyDNS:** Specifies whether SSH should try to verify the host key using DNS (yes, no, or ask).  
`VerifyHostKeyDNS yes`  


### Output and Debugging

**LogLevel:** Sets the verbosity level of the SSH client’s logging (QUIET, FATAL, ERROR, INFO, VERBOSE, DEBUG, DEBUG1, DEBUG2, DEBUG3).  
`LogLevel INFO`  

**ControlPath:** Specifies the path for SSH multiplexing sockets, often used with ControlMaster for faster connections.  
`ControlPath ~/.ssh/sockets/%r@%h:**%p`  

**ControlMaster:** Enables or disables SSH multiplexing (sharing a connection between sessions).  
`ControlMaster auto`  

**ControlPersist:** Specifies how long to keep the master connection open in a multiplexed session.  
`ControlPersist 10m`  


### Miscellaneous

**ForwardAgent:** Enables or disables forwarding of the authentication agent to the remote host (yes or no).  
`ForwardAgent yes`  

**ForwardX11:** Enables or disables X11 forwarding (yes or no).  
`ForwardX11 yes`  

**CanonicalizeHostname:** Normalizes the hostname by resolving aliases and CNAMEs, potentially useful in complex DNS setups.  
`CanonicalizeHostname yes`  

**CanonicalDomains:** Specifies domains to add to unqualified hostnames for canonicalization.  
`CanonicalDomains example.com`  

**CanonicalizeFallbackLocal:** If set to yes, allows SSH to connect directly if canonicalization fails.  
`CanonicalizeFallbackLocal yes`  

## trzsz-ssh ( tssh ) - an openssh client alternative 

[trzsz-ssh github link](https://github.com/trzsz/trzsz-ssh/blob/main/README.en.md#custom-configuration)

[trzsz-ssh homepage](https://trzsz.github.io/ssh)
