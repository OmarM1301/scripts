#!/bin/bash
#Use this script to determine when losses occurred
grep '08:00:00 PM' 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' >> Dealer_working_during_losses
