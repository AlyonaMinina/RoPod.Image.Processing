# RoPod
RoPod is a toolkit that comprises microscopy chambers, in which you can grow and image *Arabidopsis thaliana* seedlings roots without taking the plants out, and a detailed protocol on how to do it. No stress!

For more information see here: https://www.alyonaminina.org/ropod



# Examples of RoPod applications


## Semi-automated image analysis used to track root hair tips
This method allows to track, from an image stack of a growing root,

<img src = "/Images/Growing_root.gif" width = "250">

the tip of a growing root hair

 <img src = "/Images/Hair_tracking.gif" height = "100">

It is a semi-automated method that requires the software [ImageJ](https://imagej.nih.gov/ij/), a [pre roo hair tracking macro](https://github.com/AlyonaMinina/RoPod/blob/main/1-Pre-root%20hair%20tracking) and the chore [tracking macro](https://github.com/AlyonaMinina/RoPod/blob/main/2-Root%20hair%20tracking).

A [video tutorial](https://github.com/AlyonaMinina/RoPod/blob/main/Images/Hair%20tracking-demo.avi) is available to facilitate understanding

### Use of the pre-tracking macro
#### Aim of the macro
* Preselect the root hairs that will be analysed later, highlighting them using a straight line (Manual step).

<img src = "/Images/Pre-Tracking_macro_hair_selection.jpg" height = "300">

* Save the drawn lines as a Region Of Interest (ROI) in one file that will be used for a further process.
 
#### Running the macro
Before running the macro, you should open a file with growing root hairs (e.g. a stiched image of a root). Then run the macro, and follow the instructions.
**It is important to  draw each straight lines starting from the basis of a hair and extending over the entire length of it.**

### Use of the tracking macro
#### Aim of the macro
This macro should be run on time lapse acquisitions where ROIs have been drawn over root hair(s) (RH) of interest on the last time frame image.

<img src = "/Images/Tracking_macro_2-Coarse_skeleton.jpg" height = "300">

If there are several ROIs, this macro will loop to successively analyse thoose ROIs. The main steps consists in:
1. Drawing a coarse skeleton of the root hair (manual step)

<img src = "/Images/Tracking_macro_1-Hair_to_process.jpg" height = "150">

2. Cleaning the surrounding area to facilitate the detection

<img src = "/Images/Tracking_macro_3-Surrounding_cleaning.jpg" height = "150">

3. Thresholding the hair

<img src = "/Images/Tracking_macro_4-Thresholding.jpg" height = "150">

4. Performing a last background cleaning (manual step)
5. Identifying the hair tip

<img src = "/Images/Tracking_macro_5-Tip_identification.jpg" height = "300">

6. Performing a hair trackinf correction (manual step)
7. Performing a drifting correction (useful for the early steps of hair growth)

<img src = "/Images/Tracking_macro_6-Drift_correction.jpg" height = "150">

8. For each hair, save the tracking result as a ROI and the hair growth over time in a table

<img src = "/Images/Tracking_macro_7-result.jpg" height = "150">

#### Running the macro
The steps labeled with "******" can be modified if some adjustement are needed (look for them with the research tool. Shortcut: "ctlr + F"). Other steps can be of course modified, but this will be more tricky ^^
