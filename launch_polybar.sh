if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload left &
    MONITOR=$m polybar --reload mid &
    MONITOR=$m polybar --reload right &
  done
else
  polybar --reload left &
  polybar --reload mid &
  polybar --reload right &
fi
