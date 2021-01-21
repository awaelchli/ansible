# Desktop and Server Configuration with Ansible


## Usage

Provision local machine in a single command:
```bash
curl https://raw.githubusercontent.com/awaelchli/ansible/master/provision.sh | sudo bash
```
This requires the vault key saved in a file `$HOME/.vault-key`.

Alternatively, if ansible is already installed:
```bash
ansible-pull -U https://github.com/awaelchli/ansible.git --ask-vault-pass
```

## Acknowledgements

This Ansible configuration is built on the excellent template by [Jay LaCroix](https://github.com/LearnLinuxTV) from [LearnLinux.tv](http://www.learnlinux.tv).
