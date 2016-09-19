# Sandbox

A set of Web servers to hack on.

A Vagrant setup for testing things. Creates a Windows Nano, Windows 2012 R2 and an Ubuntu Xenial machine. It takes a little over an hour to download and initialize everything.

## Setup

1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
3. Clone this repository: `git clone https://github.com/NickMRamirez/sandbox.git`
4. Change directory into the *sandbox* folder
5. Call `vagrant up`

## Usage

To log into the Windows machines, use `vagrant powershell [name of machine]` command. 

```
vagrant powershell nano
```

Once logged in, use `ipconfig` to find the machine's IP address. IIS listens at port 80 and an ASP.NET Core website listens at port 8000. To copy files to this machine:

```
# Create a credential, use "vagrant" as password when prompted
$cred = Get-Credential vagrant

# Create a Powershell remote session
$sess = New-PSSession [IP address of nano machine] -Credential $cred

# Copy a local file to the virtual machine's C: drive
Copy-Item -ToSession $sess -Path .\file.txt C:\
```

You can RDP into the Windows 2012 R2 box:

```
vagrant rdp win2012r2
```

To add the ASP.NET MVC website to it, use the `provision` command:

```
vagrant provision win2012r2
```

This installs IIS and adds a Web application under the Default website.

To remote into Ubuntu, call `vagramt ssh linux1`. One logged in, all files can be accessed through the */vagrant* folder inside the VM. Use `ifconfig` to get the machine's IP address. This server does not have anything installed on it, but you can install Apache: 

```
sudo apt update
sudo apt install apache2 -y
```

Or NGINX:

```
sudo apt update
sudo apt install nginx -y
```

The Windows machines can see the Linux machine and vice versa. All can be accessed from the host machine.
