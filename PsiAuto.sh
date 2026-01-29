while true; do
    echo "Starting Psiphon..."

    sudo psiphon &
    PID=$!

    sleep 15

    if ps -p $PID > /dev/null; then
        echo "Psiphon is running. Checking connectivity..."

        if curl --proxy http://127.0.0.1:8081 -s https://www.google.com > /dev/null; then
            echo "✅ Connected successfully through Psiphon!"
            wait $PID
            break
        else
            echo "❌ Connection failed. Restarting Psiphon..."
            kill $PID
            sleep 5
        fi
    else
        echo "Psiphon process stopped unexpectedly. Restarting..."
        sleep 5
    fi
done
