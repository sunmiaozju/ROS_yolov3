import os
import sys
import cv2
import numpy as np
import random

images = os.listdir('./JPEGImages/')
f2 = open('train.txt', 'w')
f3 = open('val.txt', 'w')
cd = os.getcwd()

random.shuffle(images)
count = 0
for im in images:
    count += 1
    if count < 3000:
        f2.write(cd + '/JPEGImages/' + im + '\n')
    else:
        f3.write(cd + '/JPEGImages/' + im + '\n')

f2.close()
f3.close()