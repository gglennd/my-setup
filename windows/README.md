#### Windows Setup

- [Download ISO / Create Windows 11 Installation Media](https://www.microsoft.com/en-us/software-download/windows11)
- Create a bootable usb with [rufus](https://rufus.ie/en/)
  - (Optional but Recommended) [Clean Install](https://github.com/memstechtips/UnattendedWinstall)
- [Get started with OpenSSH for Windows](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell&pivots=windows-server-2022)

### Activate Windows and Microsoft Office

1. Press Window+X > Open "Window Powershell (Admin)"
2. ```bash
   slmgr /rearm
   ```
3. press "Ok"
4. restart pc

or

1. Press Window+X > Open "Window Powershell (Admin)"
2. ```bash
    irm https://get.activated.win | iex
   ```

#### Download VMware Workstation Pro

1. Login / Register [broadcom](https://login.broadcom.com/signin)
2. Dropdown select > VMware Cloud Foundation
   - My Donwloads > Search > Search by Product Name (eg."Workstation" )
   - VMware Worsktaion Pro > Download
