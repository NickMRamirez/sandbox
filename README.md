# Sandbox

A Vagrant setup for testing things. Creates a Windows 10 and an Ubuntu Xenial machine.

## Setup

1. Download and install ![VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Download and install ![Vagrant](https://www.vagrantup.com/downloads.html)
3. Clone this repository:

```
git clone https://github.com/NickMRamirez/sandbox.git
```

4. Call: `vagrant up`

## Usage

To remote into the Windows machine, use password *vagrant* after calling the `rdp` command:

```
vagrant rdp
```

To remote into Ubuntu, call `ssh`:

```
vagrant ssh
```