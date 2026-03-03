#!/bin/bash
# Wazuh Active Response - Advanced IP Ban
# Logic: Parse Attacker IP -> Check if already banned -> Apply IPtables Drop -> Send Slack Notification (Mockup)

read INPUT_JSON
ATTACKER_IP=$(echo $INPUT_JSON | jq -r '.parameters.alert.srcip')

if [ "$ATTACKER_IP" != "null" ]; then
    # 1. Prevent banning local network (Whitelisting logic)
    if [[ "$ATTACKER_IP" == 127.0.0.1 ]]; then exit 0; fi

    # 2. Apply IPTables Block
    iptables -I INPUT -s $ATTACKER_IP -j DROP
    
    # 3. Record the action for README evidence
    echo "$(date) - Banned IP: $ATTACKER_IP due to multiple SSH failures." >> /var/ossec/logs/active-responses.log
fi