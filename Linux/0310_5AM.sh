#!/bin/bash
#Use this script to determine when losses occurred
grep '05:00:00 AM' 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' >> Dealer_working_during_losses
