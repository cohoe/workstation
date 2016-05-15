#!/bin/bash

# Set environment
export DISPLAY=:0

# Some predefined things
PANEL_QUERY="xfconf-query -c xfce4-panel"
PLUGIN_NAME="pulseaudio"

get_plugin_ids() {
    plugin_ids=$($PANEL_QUERY -p '/panels/panel-1/plugin-ids' | egrep -e '^[0-9]')
    #echo $plugin_ids
}

check_existing_plugin() {
    for id in $plugin_ids; do
        name=$($PANEL_QUERY -p "/plugins/plugin-$id")
        if [[ "$name" == "$PLUGIN_NAME" ]]; then
            exit 2
        fi
    done
}

get_new_plugin_id() {
    local result=$2
    i=1

    while [[ $i -lt 10 ]] ; do
        #echo "--- START LOOP ---"
        failed=0
        for id in $plugin_ids; do
            #echo "Comparing i=$i to id=$id"
            if [[ "$id" == "$i" ]]; then
                #echo "This plugin alredy exists."
                failed=1
                break
            else
                #echo "ID $i is available."
                failed=0
                continue
            fi
        done
        if [[ "$failed" == "0" ]]; then
            eval $result="'$i'"
            break
        fi
        i=$(($i+1))
        #echo "--- END LOOP ---"
    done
    #echo $i
}

set_pulse_plugin() {
    $PANEL_QUERY -p "/plugins/plugin-$new_plugin_id" --create -t string -s "$PLUGIN_NAME"
    $PANEL_QUERY -p "/plugins/plugin-$new_plugin_id/enable-keyboard-shortcuts" --create -t bool -s true
}

set_panel_plugins() {
    new_plugin_ids="$plugin_ids $new_plugin_id"
    new_plugin_ids=$(echo $new_plugin_ids | sed 's/^\([0-9+ ]\+\)\+\([0-9+]\) \([0-9+]\)$/\1\3 \2/')
    #echo $new_plugin_ids
    set_query="$PANEL_QUERY -p /panels/panel-1/plugin-ids "
    for id in $new_plugin_ids; do
        set_query="$set_query -t int -s $id"
    done
    $set_query
}

# Get the current list of plugins
get_plugin_ids plugin_ids

# Check that the plugin doesnt already exist
check_existing_plugin plugin_ids

# Figure out a new plugin id to use
get_new_plugin_id plugin_ids new_plugin_id

# Create the new plugin
set_pulse_plugin new_plugin_id

# Set the array of active plugins
set_panel_plugins plugin_ids new_plugin_id

# Reset Panel
xfce4-panel -r

# Exit
exit
