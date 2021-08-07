# Edge Enhancement using Robert’s Gradient Convolution Mask
Generating Gradient images for edge enhancement using Robert’s gradient through convolution masks.

Robert Gradient: Robert Gradient falls under the category of Gradient-based techniques that uses the minimum and maximum of the first derivative to detect the edges in an image. Robert’s gradient uses eqn. (1) to generate the gradient function which can be shown by eqn. (2), which is then used to generate gradient images for. This gradient approximation assumes that the gradient is proportional to the difference in the gray level between the adjacent pixels. The gradient is approximated using discrete differentiation which is a cross-difference operation as shown in Fig. 1.


![rgo](https://user-images.githubusercontent.com/32479901/128588625-b0cf0307-9957-47d3-be36-504a4f8c32d3.jpg)


This gradient assumes relatively large values for prominent edges and small values in regions that are fairly smooth, and zero for regions that have a constant gray-level.



![img_grad](https://user-images.githubusercontent.com/32479901/128588631-63b1500e-cfc4-4dba-ab69-3524b04b696c.JPG)
