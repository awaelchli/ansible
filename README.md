# Personal Ansible Configuration for Desktop and Server


Provision local machine in a single command:
```bash
curl https://raw.githubusercontent.com/awaelchli/ansible/master/provision.sh | sudo bash
```

Alternatively, if ansible-pull is already installed:
```bash
ansible-pull -U https://github.com/awaelchli/ansible.git --ask-vault-pass
```
