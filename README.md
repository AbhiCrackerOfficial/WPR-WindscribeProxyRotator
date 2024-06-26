<h1 align="center">WPR-WindscribeProxyRotator</h1>
WPR (Windscribe Proxy Rotator) is a bash script that automates the rotation of Windscribe VPN proxies on Linux systems. It provides a convenient way to switch between proxies at regular intervals, enhancing privacy and bypassing geo-restrictions effectively.


## Legal Disclamer:
    The author does not hold any responsibility for the bad use of this tool,
    remember this is only for educational purpose.

## Dependencies

- `figlet`: Required for ASCII art text generation.
- `lolcat`: Used for colorful text output.
- `zenity`: Utilized for graphical user interface prompts.
- `windscribe`: The Windscribe VPN CLI tool for Linux.

## NOTE:
    Install Windscribe-CLI from Official Website - https://windscribe.com/guides/linux
    Login Your Account (Command) - windscribe login 
    Then Run This Tool (This Script Can Only Install First 3 Dependencies listed above)
    
## Requirements :  
    1 - Windscribe Free/Premium Account
    2 - Attentive Brain 
    3 - Linux OS
    
## Install Windscribe-CLI For Debain/Ubuntu Users (Copy Below And Run):
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7 && echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list && sudo apt-get update && sudo apt-get install windscribe-cli && windscribe login
    
## Download/Config/Usage:
    1 - Download the Tool
         git clone https://github.com/AbhiCrackerOfficial/WPR-WindscribeProxyRotator.git
	 
    2 - Set script execution permission
         cd WPR-WindscribeProxyRotator
         chmod +x wpr.sh
	 
    3 - Install Windscribe By Above Method Given If your System is Debain/Ubuntu
    
    4 - Run Script :
       ./wpr.sh

## Screenshot:
![pic1](https://i.imgur.com/czttZsV.png)

Main Screen

![pic2](https://i.imgur.com/Pc22r8V.png)

Time Duration

![pic3](https://i.imgur.com/1Nm8LdK.png)

IP Country

![pic4](https://i.imgur.com/0rJmmbk.png)

Proxy Rotating

<br />


## Acknowledgments

- Thanks to the developers of Windscribe for providing a powerful VPN service and CLI tool.
- Special thanks to the creators of `figlet`, `lolcat`, and `zenity` for their useful utilities.
