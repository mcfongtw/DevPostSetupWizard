A *nix* based post installer script implemented via Ansible. Here are the file structures:

# How to Use
By default, the playbook points to localhost as default host but you add your own hosts under *inventory/hosts*.

## [Debug] Dry Run
```bash
ansible-playbook -vv -C playbook.yml
```

## Run
```bash
ansible-playbook -vv playbook.yml
```

## [Debug] List Tasks
```bash
ansible-playbook -vv --list-tasks playbook.yml
```

## [Debug] List Hosts
```bash
ansible-playbook -vv --list-hosts playbook.yml
```

## [Debug] List Tags
```bash
ansible-playbook -vv --list-tags playbook.yml
```

## [Debug] Check Host Information
```bash
ansible -m setup localhost
```
```bash
ansible -m setup all
```

## [Debug] Check Host Connectivity
```bash
ansible -m ping all
```


# Tags 

## Tag Description
* installation : to simplify with one-tag process
* upgrade : upgrade binary
* configuration: change configuration
* service-enabled: enable service via systemctl or similar upstart daemon
* service-started: start service via systemctl or similar upstart daemon
* service-stopped: stop service via systemctl or similar upstart daemon

## Tag Assignment per Task Type
1. apt/yum/ install package
* installation
* upgrade

2. apt/yum/ update cache
* installation
* upgrade

3. apt update key
* installation
* upgrade

4. debug {{ var }} or registered var
* always

5. copy/template configuration
* installation
* configuration

6. enable service
* installation
* service-enabled

7. start service
* installation
* service-started

8. stop service
* service-stopped

9. mkdir / create user/group
* installation

10. check or register variable
* always
