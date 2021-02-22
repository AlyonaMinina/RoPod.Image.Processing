# RoPod
RoPod is a toolkit that comprises microscopy chambers, in which you can grow and image *Arabidopsis thaliana* seedlings roots without taking the plants out, and a detailed protocol on how to do it. No stress!

For more information about the hardware, see here: https://www.alyonaminina.org/ropod



# Examples of RoPod applications


## Semi-automated image analysis used to track root hair tips
This method allows to track, from an image stack of a growing root,

<img src = "/Images/Growing_root.gif" width = "250">

the tip of a growing root hair

 <img src = "/Images/Hair_tracking.gif" width = "300">

It is a semi-automated method that requires the software [ImageJ](https://imagej.nih.gov/ij/), a [pre root hair tracking macro](https://github.com/AlyonaMinina/RoPod/blob/main/1-Pre-root%20hair%20tracking) and the chore [tracking macro](https://github.com/AlyonaMinina/RoPod/blob/main/2-Root%20hair%20tracking).

Below is a video tutorial to facilitate understanding.

[<img src = "/Images/Miniature_for_video_20210222.jpg" width = "800">](https://youtu.be/P79lPA15OrY "Video tutorial for semi-automated image analysis for root hair growth assays")

An [image example](https://github.com/AlyonaMinina/RoPod/blob/main/Image_example_for_training/20191128_col-0_sucrose_002_serie_04-06.tif) is also available on GitHub to test this tool. [Example of results](https://github.com/AlyonaMinina/RoPod/tree/main/Image_example_for_training) obtained with the two macros are also accessible.

### Table of content
* [Pre-tracking macro](https://github.com/AlyonaMinina/RoPod/blob/main/README.md#pre-tracking-macro)
  * [Aim of the macro](https://github.com/AlyonaMinina/RoPod#aim-of-the-macro)
  * [Running the macro](https://github.com/AlyonaMinina/RoPod#running-the-macro)
* [Tracking macro](https://github.com/AlyonaMinina/RoPod#tracking-macro)
  * [Aim of the macro](https://github.com/AlyonaMinina/RoPod#aim-of-the-macro-1)
  * [Running the macro](https://github.com/AlyonaMinina/RoPod#running-the-macro-1)

### Pre-tracking macro
#### Aim of the macro
* Preselect the root hairs that will be analysed later, highlighting them using a straight line (Manual step).

<img src = "/Images/Pre-Tracking_macro_hair_selection.jpg" height = "300">

* Save the drawn lines as a Region Of Interest (ROI) in one file that will be used for a further process.
 
#### Running the macro
Before running the macro, you should open a file with growing root hairs (*e.g.* a stitched image of a root). Then run the macro, and follow the instructions.
**It is important to  draw each straight line starting from the basis of a hair and extending over the entire length of it.**

### Tracking macro
#### Aim of the macro
This macro should be run on a **grey scale** time lapse acquisitions where ROIs have been drawn over root hair(s) (RH) of interest on the last time frame image. If there are several ROIs, this macro will loop to successively analyse all those ROIs. The main steps consist in:

1. Drawing a coarse skeleton of the root hair on the final slice (manual step)

<img src = "/Images/Tracking_macro_2-Coarse_skeleton.jpg" width = "800">

2. Cleaning the surrounding area to facilitate the detection


<img src = "/Images/Tracking_macro_3-Surrounding_cleaning.jpg" width = "800">

3. Thresholding the hair

<img src = "/Images/Tracking_macro_4-Thresholding.jpg" width = "800">

4. Performing a last background cleaning (manual step)
5. Identifying the hair tip

<img src = "/Images/Tracking_macro_5-Tip_identification.jpg" height = "150">

6. Performing a hair tracking correction (manual step)
7. Performing a drifting correction (useful for the early steps of hair growth)

<img src = "/Images/Tracking_macro_6Drift_correction.jpg" width = "800">

8. For each hair, save the tracking result as a ROI and the hair growth over time in a table

<img src = "/Images/Tracking_macro_7-result.jpg" width = "800">

#### Running the macro
Before running the macro:
* check the steps labelled with "******". They can be modified if some adjustments are needed depending on your image. You can look for them using the research tool of ImageJ, in the script window (Shortcut: "ctlr + F"). Recommendations about the modifications possible are written directly next to the steps that can be modified.
* Open the grey scale time laps of a root.
* Create or import already drawn ROIs covering the RH to analyse (*e.g.* ROIs generated with the macro "Pre-root hair tracking").
