#**********************************************************************
#                                                                    **
# Title: problem1.R                                                  **
#                                                                    **
# Author: nolanHg                                                    **
#                                                                    **
# Purpose: Generates 200 random values from the standard             **
#          exponential distribuion and finds their mean and          **
#          standard deviation.                                       **
#                                                                    **
# Date: 03/18/2019                                                   **
#                                                                    **
#**********************************************************************


###########################################################
# Get command line arguments for rate and number of samples
###########################################################
args = commandArgs(trailingOnly = TRUE)


###################################################################
# Generate n_samps random values from standard exp. (rate = lambda)
###################################################################
lambda <- as.numeric(args[1])
n_samps <- as.numeric(args[2])
exp.draws.1 <- rexp(n = n_samps, rate = lambda)


###############################################################
# Find the mean and standard deviation of the 200 random values
###############################################################
mexp <- mean(exp.draws.1)
sdexp <- sd(exp.draws.1)


###########################################
# Print out the mean and standard deviation
###########################################
sprintf("The mean of the %d exponential values is %0.5f. We would expect it to be close to %0.5f", n_samps, mexp, 1 / lambda)
sprintf("The standard deviation of the %d exponential values is %0.5f. We would expect it to be close to %.5f", n_samps, sdexp, 1 / lambda)

