#!/bin/bash
ELAN_SCRIPT_PATH="/usr/local/share/elan-init.sh"
INSTALL_ELAN_SCRIPT_PATH="/usr/local/share/install_elan.sh"

curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -o "$ELAN_SCRIPT_PATH"
chmod 755 "$ELAN_SCRIPT_PATH"

tee "$INSTALL_ELAN_SCRIPT_PATH" > /dev/null \
<< EOF
#!/bin/sh
set -e
sh "$ELAN_SCRIPT_PATH" -y
echo 'export PATH="$HOME/.elan/bin:$PATH"' >> ~/.bashrc
EOF

chmod 755 "$INSTALL_ELAN_SCRIPT_PATH"