#!/bin/bash

print_date() {
	date '+%Y-%m-%d %H:%M'
}

# xsetroot -name "  💿 $(print_mem)M ⬇️ $vel_recv ⬆️ $vel_trans $(dwm_alsa) [ $(print_bat) ]$(show_record) $(print_date) "
xsetroot -name "$(print_date)"

