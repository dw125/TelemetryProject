close all
clear all
clc

P_0 = 180.0; 
P_1 = 170.0;
speed_of_light = 3*10^8;                              % Speed of light = C = 3 * 10^ 8 (m/s)
lora_in_GHz = 0.915e+9;                               % Frequency(LoRa),  f = 915 MHz 
lte_in_GHz = 0.729e+9;                                % Frequency(LTE-M), f = 7129 MHz
wave_length_lora =  speed_of_light/lora_in_GHz;
wave_length_lte =  speed_of_light/lte_in_GHz;
distance_from_transmitter = [0:1:10000];                   
receiving_signal_strength_in_dBm_LoRa = P_0-20*log((4*pi*distance_from_transmitter)/wave_length_lora);
receiving_signal_strength_in_dBm_LTE = P_1-20*log((4*pi*distance_from_transmitter)/wave_length_lte);

figure 
plot(distance_from_transmitter,receiving_signal_strength_in_dBm_LoRa, distance_from_transmitter,receiving_signal_strength_in_dBm_LTE)
title('RSSI across distance on the free space propagation mode')
xlabel('Distance (d) from the transmitter in meter (m)')
ylabel('The value of RSSI in dBm')
legend('LoRa','LTE-M')
grid on
grid minor
