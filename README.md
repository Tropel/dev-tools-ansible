# An ansible playbook for provisioning a developer work station

The tools installed are not a generic set of tools for any developer or any purpose but my personal preference used for provisioning an LXC container as a development environment.

Subject to change and to be expanded.

The node.js installation support is from https://github.com/aenglund/nodejs-ansible

## usage

### Inventory file

You (probably) want to use an inventory file to define the target(s).
Since we are provisioning lxc containers, we'll call it `containers`

So:

`$ touch containers`

And then edit the file and specify one container to be provisioned:

```
[containers]
<target_host> ansible_connection=ssh ansible_ssh_user=<user_name> ansible_sudo_pass=<user_passwd>
```

## Test the setup

`$ ansible -i containers all -m ping`

## Run the playbooks

`$ ansible-playbook -i containers dev-tools.yml`
