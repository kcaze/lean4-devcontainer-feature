#!/bin/bash
INSTALL_ELAN_SCRIPT_PATH="/usr/local/share/install_elan.sh"
tee "$INSTALL_ELAN_SCRIPT_PATH" > /dev/null \
<< EOF
#!/bin/sh
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y
EOF
