#!/vendor/bin/sh

#
# Switch to schedutil if available, if it's not available (using legacy EAS),
# then switch to sched governor.
#
available_governors=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors)

# Prefer schedutil
echo "$available_governors" | grep schedutil && gov=schedutil || gov=sched
echo $gov > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo $gov > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
