# ==============================================================================
#
# Rails Env Installer
#
# The first playbook needs to be run as the root user.
# It will configure basic sever security, enable the firewall and create the deploy user for us
#
# ==============================================================================

echo '\nRunning server provisioning...\n'

ansible-playbook playbooks/base/setup.yml -i hosts -u root -vvvv

# ==============================================================================
#
# The following playbooks are run as the deploy user
#
# ==============================================================================

echo '\nRunning as deploy user...\n'

ansible-playbook playbooks/rbenv/setup.yml -i hosts -u deploy -vvvv
