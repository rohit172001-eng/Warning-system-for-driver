# -*- coding: utf-8 -*-
"""
Created on Fri Feb 21 16:08:11 2020

@author: Lingala Rohit
"""

import requests
import urllib.request
import time
from bs4 import BeautifulSoup
data=[]
url = 'https://www.htp.gov.in/accidentproneareas.html'
response = requests.get(url)
print(response)
soup = BeautifulSoup(response.text, "html.parser")
#for a in soup.findAll('a',href=True, attrs={'class':'MsoNormal'}):
#    name=a.find('div', attrs={'class':'MsoNormal'})
#    data.append(name.txt)
#print(data)  
job_elems = soup.find_all('p', class_='MsoNormal')
print(' '.join(job_elems[3].text.split()))
print(job_elems[1].text)
for i in range(0,len(job_elems)-2,3):
    b=[]
    b.append(' '.join(job_elems[i].text.split()))
    b.append(' '.join(job_elems[i+1].text.split()))
    b.append(' '.join(job_elems[i+2].text.split()))
    data.append(b)


#for job_elem in job_elems:
 #   print(job_elem, end='\n'*2)
print(data)
#for one_a_tag in soup.findAll('a'):
    #print(one_a_tag)