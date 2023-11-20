# Major Blocks:

## Section 2: Motivation

### Retraining frequency
**** 

### Golden Model - Use the COCO Detector to get the classification accuracy on the same tasks.

## Section 3.2: Dynamic profiles: Show that the profiles on the pareto boundary are predictable (or similar). Predictable: it fits the hyperdrive model.

## Section 3.4: Profiles on synthetic custom profiles just to show big gains.
## Look up examples on the ekya gains sheet and use those to _jointly_ pick the training and inference cfgs.

## Section 5: Profiling:
Hyperdrive: https://www.cse.unr.edu/~fyan/Paper/Middleware17.pdf
It employs curve prediction from history on DIFFERENT data. See Sec 3.1.1
Q. Still requires a short run..
Q. 

## Section 4: Solution



=====
1/14
Decay in Section 3?
Dataset for running scheduling experiments:
    Exponential hyperparameter space - sequential order of hyperparameters matters here.
    

====
01/28
Profiler-Scheduler interface:
* Poll with Start accuracy to get final accuracy + confidence bounds
* Given current observed accuracy - ("Am I on track?")
* Golden model - need to run it to get the real accuracy (with a low frequency in the background - sort of like a sanity checker running in the bg)
* Add golden model cost to the simulator to have those in the results
* 

=======
01/02

# The two strawman baselines:
## where we send data to the cloud
## Where we load model per city/changing scene
# Profiling - see with subsampling if that's a good predictor
# Profiling - Try out the new profiles running on Rocket6 to see if they increase the accuracy gap 
# Once we have a grip on profiling, get the E2E numbers with simulator.
# Real implementation


======
02/02
DONE - Class distribution for Fig 1 - sample incremental is good - Possibly images of same class across different frames - differing angles of cars, lighting and class distribution.
# Red curve on Fig 1 for coco pretrained model - this one is below all threen - Shows the Decay
DONE - The retraining freuqency expt where you sample from task 1 to 5 and train at 6. ACcuracy dips till task 6, increases a bit, then keeps dipping.   
DONE - Minima constraint on the individual accuracy 
## PRofile checkpointing cost

## Ref Fig1: For the images incorrectly classified, log their file path to figure out why accuracy is low

## Fig 4a - address the illustrative comment where we compare hyperparamters

=====
02/04

# What is the mapping of workload <-> real world scenario ( 

# The two strawman baselines:
## where we send data to the cloud
## Where we load model per city/changing scene

## We can support Lower retraining frequency
## 

Eval:
Sim
Implementation
strawman baselines

# How fast the scene changes effect on scheduler.