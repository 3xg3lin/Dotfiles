for file in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_max_freq;do
       echo "3500000" > $file;
done
