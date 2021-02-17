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
The aim of this macro is to
* Preselect the root hairs that will be analysed later, highlighting them using a straight line (Manual step).
* Save the drawn lines as a Region Of Interest (ROI) in one file that will be used for a further process.
 
Before running the macro, you should open a file with growing root hairs (e.g. a stiched image of a root). Then run the macro, and follow the instructions.
**It is important to  draw each straight lines starting from the basis of a hair and extending over the entire length of it.**
