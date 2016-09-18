# Sandbox

A Vagrant setup for testing things. Creates a Windows Nano and an Ubuntu Xenial machine.

## Setup

1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
3. Clone this repository: `git clone https://github.com/NickMRamirez/sandbox.git`
4. Change directory into the *sandbox* folder
5. Call `vagrant up`

## Usage

To remote into the Windows machine, use `vagrant powershell nano`. Once logged in, use `ipconfig` to find the machine's IP address. IIS listens at port 80 and an ASP.NET Core website listens at port 8000. To copy files to this machine:

```
# Create a credential, use "vagrant" as password when prompted
$cred = Get-Credential vagrant

# Create a Powershell remote session
$sess = New-PSSession [IP address of nano machine] -Credential $cred

# Copy a local file to the virtual machine's C: drive
Copy-Item -ToSession $sess -Path .\file.txt C:\
```

To remote into Ubuntu, call `vagramt ssh linux1`. One logged in, all files can be accessed through the */vagrant* folder inside the VM. Use `ifconfig` to get the machine's IP address.

The Windows machine can see the Linux machine and vice versa.
