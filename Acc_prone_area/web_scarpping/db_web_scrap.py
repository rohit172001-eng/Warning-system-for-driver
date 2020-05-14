# -*- coding: utf-8 -*-
"""
Created on Fri Feb 21 20:38:49 2020

@author: Lingala Rohit
"""
import requests
import urllib.request
import pymysql
db=pymysql.connect('localhost','username','password','database_name',port=3307)
curobj=db.cursor()
#curobj.execute('select * from table_name')
from bs4 import BeautifulSoup
data=[]
sno=1
url = 'https://www.htp.gov.in/accidentproneareas.html'
response = requests.get(url)
print(response)
soup = BeautifulSoup(response.text, "html.parser")
job_elems = soup.find_all('p', class_='MsoNormal')
for i in range(0,len(job_elems)-2,3):
    route=' '.join(job_elems[i].text.split())
    areas=' '.join(job_elems[i+1].text.split())
    station=' '.join(job_elems[i+2].text.split())
    curobj.execute("insert into table_name values('%d','%s','%s','%s')"%(sno,route,areas,station))
    db.commit()
    sno=sno+1

db.close()
