#!/bin/bash
INSTALL_ELAN_SCRIPT_PATH="/usr/local/share/install_elan.sh"

tee "$INSTALL_ELAN_SCRIPT_PATH" > /dev/null \
<< EOF
#!/bin/sh
set -e
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -o /usr/local/share/elan-init.sh
sh /usr/local/share/elan-init.sh -y
EOF

chmod 755 "$INSTALL_ELAN_SCRIPT_PATH"