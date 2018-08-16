import os
import sys
import numpy as np
import cv2
from PIL import Image, ImageFont, ImageDraw

label_source = './labels/'
im_source = './JPEGImages/'
label_source = '/home/sunmiao/projects/darknet-master/myDataset/tianjin_selected/labels_new/'
im_source = '/home/sunmiao/projects/darknet-master/myDataset/tianjin_selected/JPEGImages_1/'

names = os.listdir(label_source)

for ii in range(len(names)):
    name = names[ii][:-4]
    im = cv2.imread(im_source + name + '.jpg')
    sz = im.shape
    width = sz[1]
    height = sz[0]
    f = open(label_source + name + '.txt')
    lines = f.readlines()
    if len(lines) > 0:
        ff = 0
        f2 = open('./labels_new/%s.txt' % (name), 'w')
        for line in lines:
            items = line.strip().split(' ')
            [id, x, y, w, h] = [float(n) for n in items]
            xmin = (x-w/2) * width
            xmax = (x+w/2) * width
            ymin = (y-h/2) * height
            ymax = (y+h/2) * height
            font = cv2.FONT_HERSHEY_SIMPLEX
            im = cv2.putText(im, '%d'%int(id), (int(xmax), int(ymax)), font, 0.7, (0, 0, 255), 2)
            area = w * width * h * height
            im = cv2.putText(im, '%d' % area, (int(xmin), int(ymin)), font, 0.4, (0, 255, 0), 1)
            pts = np.array([[xmin, ymin], [xmax, ymin], [xmax, ymax], [xmin, ymax]], np.int32)
            cv2.polylines(im, [pts], True, (0, 0, 255), 1)
            #if area > 1000 and id != 4:
            #    f2.write(line)
            #    ff = 1

        f.close()
        #f2.close()

        #if ff == 1:
        #    cv2.imwrite('./JPEGImages_1/%s.jpg' % (name), im)
        #else:
        #    os.system('rm ./labels_new/%s.txt' % (name))



        cv2.imwrite('./mask_new/%s.png' % (name), im)

    print ii, len(names)


