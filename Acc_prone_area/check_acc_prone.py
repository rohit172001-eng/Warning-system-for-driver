# -*- coding: utf-8 -*-
"""
Created on Sun Mar  1 20:24:39 2020

@author: Lingala Rohit
"""
#here we will be entering latitude and longitude manually but in real time we will fetch it from gps
import pymysql
import geopy
from geopy.geocoders import Nominatim
from geopy.extra.rate_limiter import RateLimiter
import pyttsx3
engine = pyttsx3.init()

locator = Nominatim(user_agent='myGeocoder')
x=input('Enter latitude  : ')
y=input('Enter longitude : ')
st=x+','+y
coordinates = st
#sample datasets
#17.3789 78.4681     goshamahal
#17.4777 78.5107 trimulgherry
location = locator.reverse(coordinates)
print(location.address)
x=x[:6]
y=y[:6]
print(x)
print(y)
db=pymysql.connect('localhost','username','password','db_name',port=3307)
curobj=db.cursor()
curobj.execute("select latitude,longitude from table_name")
db.commit()
latlongtpl=curobj.fetchall()
lat=[]
long=[]
for latlong in latlongtpl:
    lat.append(str(latlong[0])[:6])
    long.append(str(latlong[1])[:6])

if x in lat:
    if y in long:
        print('Accident prone area ahead...')
        engine.say("Accident prone area ahead. Maintain a speed of 50 kmph")
        engine.runAndWait()
db.close()
