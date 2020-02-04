# Sign-Language-Recognition
A Project on Bi channel sign language recognition based on augumented reality

Vision based analysis, is based on the way human beings perceive information about their
surroundings, yet it is probably the most difficult to implement in a satisfactory way. Several
different approaches have been tested so far.
• One is to build a three-dimensional model of the human hand. The model is matched to
images of the hand by one or more cameras, and parameters corresponding to palm
orientation and joint angles are estimated. These parameters are then used to perform
gesture classification.
• Second one to capture the image using a camera then extract some feature and those
features are used as input in a classification algorithm for classification.
In this project we have used second method for modeling the system. In hand gesture recognition
system we have taken database from standard hand gesture database, prima database.
This project is to implement the SIFT algorithm for feature detection and a Euclidean distance
calculation algorithm for matching. However, both the above methods have their own substeps
which need to be taken into account while writing the program. Thus starting from the SIFT
algorithm the factor that garnered maximum emphasis is that SIFT image features provide a set
of features of an object that are not affected by many of the complications experienced in other
methods, such as object scaling and rotation.
While allowing for an object to be recognized in a larger image SIFT image features also allow
for objects in multiple images of the same location, taken from different positions within the
environment, to be recognized. SIFT features are also very resilient to the effects of "noise" in
the image. All these play a vital role during real time implementation and testing of the
application.
The features taken through the SIFT algorithm constitute the white points in the image i.e. the
most distinctive points which will stand out or stay invariant in the image even after a heavy
amount of blurring and difference calculation for distance is carried. These white points may be
edges or distinct regions within the same image etc. The SIFT approach, for image feature
generation, takes an image and transforms it into a "large collection of local feature vectors"
(From "Object Recognition from Local Scale-Invariant Features", David G. Lowe). Each of these
feature vectors is invariant to any scaling, rotation or translation of the image. This approach
shares many features with neuron responses in primate vision.
