# -*- coding: utf-8 -*-
"""
Created on Sun Mar  1 13:38:31 2020

@author: Lingala Rohit
"""

import cv2
from darkflow.net.build import TFNet
import matplotlib.pyplot as plt
import numpy as np
import time
import argparse

parse = argparse.ArgumentParser()
parse.add_argument("-s")
args = parse.parse_args()
# print argument of -s
print('argument: ',args.s)
options = {'model': 'cfg/yolo.cfg','load': args.s,'threshold': 0.3}
tfnet = TFNet(options)
cap = cv2.VideoCapture('what.mp4')
colors=[tuple(255 * np.random.rand(3)) for i in range(5)]
while(cap.isOpened()):
    
    stime= time.time()
    ret, frame = cap.read()
    results = tfnet.return_predict(frame)
    if ret:
        for color, result in zip(colors, results):
            tl = (result['topleft']['x'], result['topleft']['y'])
            br = (result['bottomright']['x'], result['bottomright']['y'])
            label = result['label']
            frame= cv2.rectangle(frame, tl, br, color, 7)
            frame= cv2.putText(frame, label, tl, cv2.FONT_HERSHEY_TRIPLEX, 1, (0,0,0), 2)
        cv2.imshow('frame', frame)
        print('FPS {:1f}'.format(1/(time.time() -stime)))
        if cv2.waitKey(1)  & 0xFF == ord('q'):
            break
    else:
        break
cap.release()
cv2.destroyAllWindows()
