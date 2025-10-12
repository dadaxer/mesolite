# vim: set ft=make :

# alias patch-gmod := fix-gmod

# Toggle Bluetooth headset profile mode. If enabled, mic will be disabled on the Bluetooth device preventing the switch to headset profile, which has poor audio quality. Disable to restore mic functionality.
toggle-bt-mic:
    #!/usr/bin/bash
    CONFIG_FILE="/etc/wireplumber/wireplumber.conf.d/51-mitigate-annoying-profile-switch.conf"

    # Check current status
    CURRENT_STATE="Disabled"
    if [ -f "$CONFIG_FILE" ]; then
        CURRENT_STATE="Enabled"
    fi

    # Prompt user for action
    echo "Bluetooth headset profile mitigation is currently: ${bold}${CURRENT_STATE}${normal}"
    echo "Enable or Disable Bluetooth headset profile mitigation?"
    OPTION=$(ugum choose Enable Disable)

    if [[ "${OPTION,,}" == "enable" ]]; then
        echo "You chose to enable mitigation. This will disable headset mic functionality."
        echo "Requesting root privileges..."
        sudo mkdir -p "$(dirname "$CONFIG_FILE")"
        echo 'wireplumber.settings = {' | sudo tee "$CONFIG_FILE" > /dev/null
        echo '  bluetooth.autoswitch-to-headset-profile = false' | sudo tee -a "$CONFIG_FILE" > /dev/null
        echo '}' | sudo tee -a "$CONFIG_FILE" > /dev/null
        echo '' | sudo tee -a "$CONFIG_FILE" > /dev/null
        echo 'monitor.bluez.properties = {' | sudo tee -a "$CONFIG_FILE" > /dev/null
        echo '  bluez5.roles = [ a2dp_sink a2dp_source ]' | sudo tee -a "$CONFIG_FILE" > /dev/null
        echo '}' | sudo tee -a "$CONFIG_FILE" > /dev/null
        systemctl --user restart wireplumber
        echo "Mitigation has been ${green}${b}enabled${n}. Headset profile switching is now disabled."
    elif [[ "${OPTION,,}" == "disable" ]]; then
        echo "You chose to disable mitigation. This will restore headset mic functionality."
        echo "Requesting root privileges..."
        if sudo rm -f "$CONFIG_FILE"; then
            systemctl --user restart wireplumber
            echo "Mitigation has been ${red}${b}disabled${n}. Headset profile switching is now allowed."
        else
            echo "Failed to disable mitigation. Ensure you have sufficient permissions."
        fi
    else
        echo "No changes were made."
    fi
