    #!/bin/bash
            if amixer -c 0 get Master | grep -q off
                    then
                                amixer set Master unmute
                                        amixer set Speaker unmute
                                                amixer set Front unmute
                                                    else
                                                                amixer set Master mute
                                                                    fi


