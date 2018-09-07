#!/bin/sh
            BINDIR=$(dirname "$(readlink -fn "$0")")
            while true
            do
                java -Dfile.encoding=utf-8 -Xincgc -server -Xmx2200M -Xms100M -XX:MaxPermSize=640M -jar Spigot.jar nogui -o true
                echo "To stopping the server, press the key combination Ctrl + C!"
                echo "Reboot:"
                for i in 1
                do
                    echo "$i..."
                    sleep 1
                done
                echo "Reboot complete!"
            done