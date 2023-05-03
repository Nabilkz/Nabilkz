import 'package:flutter/material.dart';
import 'package:chaquopy/chaquopy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _output = "";

  @override
  void initState() {
    super.initState();
    initChaquopy();
  }

  Future<void> initChaquopy() async {
    await Chaquopy.init();
    final pythonCode = """



import subprocess
import wolframalpha
import pyttsx3
import tkinter
import json
import random
import operator
import speech_recognition as sr
import datetime
import wikipedia
import webbrowser
import os
import winshell
import pyjokes
import feedparser
import smtplib
import ctypes
import time
import requests
import shutil
from twilio.rest import Client
from clint.textui import progress
from ecapture import ecapture as ec
from bs4 import BeautifulSoup
import win32com.client as wincl
from urllib.request import urlopen
import pyttsx3                    # offline Text to Speech
import datetime                   # to get date and time
import webbrowser                 # to open and perform web tasks
import serial                     # for serial communication
import pywhatkit                  # for more web automatio

import speech_recognition as sr
import os
import wave
import json
from vosk import Model, KaldiRecognize

# Load the Vosk model
model = Model("model"

# Set up the recognizer
rec = KaldiRecognizer(model, 16000

try:
port = serial.Serial("COM10", 9600)
print("Phycial body, connected.")
except:
print("Unable to connect to my physical body")
engine = pyttsx3.init('sapi5')
voices = engine.getProperty('voices')
engine.setProperty('voice', voices[1].id)
def speak(audio):
engine.say(audio)
engine.runAndWait(

def wishMe():
hour = int(datetime.datetime.now().hour)
if hour>= 0 and hour<12:
speak("Good Morning Sir !")
port.write(b'h')


elif hour>= 12 and hour<18:
speak("Good Afternoon Sir !")
port.write(b'h'

else:
speak("Good Evening Sir !")
port.write(b'h')

assname =("Nabil")
speak("I am your Assistant")
speak(assname)
port.write(b'h')


def username():
speak("What should i call you sir")
port.write(b'h')
uname = takeCommand()
speak("Welcome Mister")
port.write(b'h')
speak(uname)
columns = shutil.get_terminal_size().columns

print("#####################".center(columns))
print("Welcome Mr.", uname.center(columns))
print("#####################".center(columns))

speak("How can i Help you, Sir")
port.write(b'h'


def takeCommand():


r = sr.Recognizer()
rec.AcceptWaveform(audio.get_wav_data()

with sr.Microphone() as source:

print("Listening...")
r.pause_threshold = 1
audio = r.listen(source

try:
print("Recognizing...")
query = json.loads(rec.FinalResult())["text"] ='en-in')
print(f"User said: {query}\n")

except Exception as e:
print(e)
print("Unable to Recognize your voice.")
return "None"

return quer




def sendEmail(to, content):
server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()

# Enable low security in gmail
server.login('your email id', 'your email password')
server.sendmail('your email id', to, content)
server.close()
if __name__ == '__main__':
clear = lambda: os.system('cls')

# This Function will clean any
# command before execution of this python file
clear()
wishMe()
username()

while True:

query = takeCommand().lower()

# All the commands said by user will be
# stored here in 'query' and will be
# converted to lower case for easily
# recognition of command
if 'wikipedia' in query:
speak('Searching Wikipedia...')
port.write(b'u')
query = query.replace("wikipedia", "")
results = wikipedia.summary(query, sentences = 3)
speak("According to Wikipedia")
port.write(b'l')
print(results)
speak(results

elif 'open youtube' in query:
speak("Here you go to Youtube\n")
port.write(b'u')
webbrowser.open("youtube.com")
port.write(b'l'

elif 'open google' in query:
speak("Here you go to Google\n")
port.write(b'u')
webbrowser.open("google.com")
port.write(b'l'

elif 'open stackoverflow' in query:
speak("Here you go to Stack Over flow.Happy coding")
webbrowser.open("stackoverflow.com"

elif 'play music' in query or "play song" in query:
speak("Here you go with music")
# music_dir = "G:\\Song"
music_dir = "C:\\Users\\GAURAV\\Music"
songs = os.listdir(music_dir)
print(songs)
random = os.startfile(os.path.join(music_dir, songs[1])

elif 'the time' in query:
strTime = datetime.datetime.now().strftime("% H:% M")
speak(f"Sir, the time is {strTime}")
port.write(b'u'

elif 'open opera' in query:
codePath = r"C:\\Users\\GAURAV\\AppData\\Local\\Programs\\Opera\\launcher.exe"
os.startfile(codePath

elif 'email to gaurav' in query:
try:
speak("What should I say?")
content = takeCommand()
to = "Receiver email address"
sendEmail(to, content)
speak("Email has been sent !")
except Exception as e:
print(e)
speak("I am not able to send this email"

elif 'send a mail' in query:
try:
speak("What should I say?")
content = takeCommand()
speak("whome should i send")
to = input()
sendEmail(to, content)
speak("Email has been sent !")
except Exception as e:
print(e)
speak("I am not able to send this email"

elif 'how are you' in query:
speak("I am fine, Thank you")
port.write(b'u')
speak("How are you, Sir")
port.write(b'h'

elif 'fine' in query or "good" in query:
speak("It's good to know that your fine")
port.write(b'U'

elif "change my name to" in query:
query = query.replace("change my name to", "")
assname = query
port.write(b'U'

elif "change name" in query:
speak("What would you like to call me, Sir ")
port.write(b's')
assname = takeCommand()
speak("Thanks for naming me")
port.write(b'p'

elif "what's your name" in query or "What is your name" in query:
speak("My friends call me")
speak(assname)
port.write(b'h')
print("My friends call me", assname

elif 'exit' in query:
speak("Thanks for giving me your time")
port.write(b'h')
exit(

elif "who made you" in query or "who created you" in query:
speak("I have been created by Gaurav.")
port.write(b'U')

elif 'joke' in query:
speak(pyjokes.get_joke())
port.write(b'l')
speak("hehheeeeeeeeheeeeeeehhheehheeeehheeeeehhheeeeeeeehhhhhheheheheheheheheeeeee")
speak("ohh! , am sorry")

elif "calculate" in query:

app_id = "Wolframalpha api id"
client = wolframalpha.Client(app_id)
indx = query.lower().split().index('calculate')
query = query.split()[indx + 1:]
res = client.query(' '.join(query))
answer = next(res.results).text
print("The answer is " + answer)
speak("The answer is " + answer)
port.write(b'p'

elif 'search' in query or 'play' in query:

query = query.replace("search", "")
query = query.replace("play", "")
webbrowser.open(query

elif "who i am" in query:
speak("If you talk then definitely your human.")
port.write(b'h'

elif "why you came to world" in query:
speak("Thanks to Nabil. further It's a secret")
port.write(b'u'

elif "dance" in query:
speak("I am not relly good on this but I will try.")
port.write(b'h')
port.write(b'p')
port.write(b'u')
port.write(b'l')
port.write(b'U')
port.write(b's'

elif 'power point presentation' in query:
speak("opening Power Point presentation")
port.write(b'u')
power = r"C:\\Users\\GAURAV\\Desktop\\Minor Project\\Presentation\\Voice Assistant.pptx"
os.startfile(power

elif 'is love' in query:
speak("It is 7th sense that destroy all other senses")
port.write(b'u'

elif "who are you" in query:
speak("I am your virtual assistant created by Gaurav")
port.write(b'u'

elif 'reason for you' in query:
speak("I was created as a Minor project by Mister Gaurav ")
port.write(b'u'

elif 'change background' in query:
ctypes.windll.user32.SystemParametersInfoW(20,
0,
"Location of wallpaper",
0)
speak("Background changed successfully")
port.write(b'u'

elif 'open bluestack' in query:
appli = r"C:\\ProgramData\\BlueStacks\\Client\\Bluestacks.exe"
os.startfile(appli

elif 'news' in query:

try:
jsonObj = urlopen('''https://newsapi.org / v1 / articles?source = the-times-of-india&sortBy = top&apiKey =\\times of India Api key\\''')
data = json.load(jsonObj)
i = 1

speak('here are some top news from the times of india')
port.write(b'u')
print('''=============== TIMES OF INDIA ============'''+ '\n')

for item in data['articles']:

print(str(i) + '. ' + item['title'] + '\n')
print(item['description'] + '\n')
speak(str(i) + '. ' + item['title'] + '\n')
port.write(b'u')
i += 1
except Exception as e:

print(str(e)


elif 'lock window' in query:
speak("locking the device")
ctypes.windll.user32.LockWorkStation(

elif 'shut down system' in query:
speak("Hold On a Sec ! Your system is on its way to shut down")
subprocess.call('shutdown / p /f')

elif 'empty recycle bin' in query:
winshell.recycle_bin().empty(confirm = False, show_progress = False, sound = True)
speak("Recycle Bin Recycled"

elif "don't listen" in query or "stop listening" in query:
speak("for how much time you want to stop jarvis from listening commands")
a = int(takeCommand())
time.sleep(a)
print(a

elif "where is" in query:
query = query.replace("where is", "")
location = query
speak("User asked to Locate")
speak(location)
webbrowser.open("https://www.google.nl / maps / place/" + location + "")
port.write(b'u'

elif "camera" in query or "take a photo" in query:
ec.capture(0, "Jarvis Camera ", "img.jpg")
port.write(b'h'

elif "restart" in query:
subprocess.call(["shutdown", "/r"])

elif "hibernate" in query or "sleep" in query:
speak("Hibernating")
subprocess.call("shutdown / h"

elif "log off" in query or "sign out" in query:
speak("Make sure all the application are closed before sign-out")
time.sleep(5)
subprocess.call(["shutdown", "/l"]

elif "write a note" in query:
speak("What should i write, sir")
port.write(b'h')
note = takeCommand()
file = open('jarvis.txt', 'w')
speak("Sir, Should i include date and time")
port.write(b'h')
snfm = takeCommand()
if 'yes' in snfm or 'sure' in snfm:
strTime = datetime.datetime.now().strftime("% H:% M:% S")
file.write(strTime)
file.write(" :- ")
file.write(note)
else:
file.write(note)

elif "show note" in query:
speak("Showing Notes")
port.write(b'h')
file = open("jarvis.txt", "r")
print(file.read())
speak(file.read(6))
port.write(b'u'



# NPPR9-FWDCX-D2C8J-H872K-2YT43
elif "jarvis" in query:

wishMe()
speak("Jarvis 1 point o in your service Mister")
speak(assname)
port.write(b'h'

elif "weather" in query:

# Google Open weather website
# to get API of Open weather
api_key = "Api key"
base_url = "http://api.openweathermap.org / data / 2.5 / weather?"
speak(" City name ")
port.write(b'h')
print("City name : ")
city_name = takeCommand()
complete_url = base_url + "appid =" + api_key + "&q =" + city_name
response = requests.get(complete_url)
x = response.json()

if x["code"] != "404":
y = x["main"]
current_temperature = y["temp"]
current_pressure = y["pressure"]
current_humidiy = y["humidity"]
z = x["weather"]
weather_description = z[0]["description"]
print(" Temperature (in kelvin unit) = " +str(current_temperature)+"\n atmospheric pressure (in hPa unit) ="+str(current_pressure) +"\n humidity (in percentage) = " +str(current_humidiy) +"\n description = " +str(weather_description))

else:
speak(" City Not Found ")
port.write(b'U')

elif "send message " in query:
# You need to create an account on Twilio to use this service
account_sid = 'Account Sid key'
auth_token = 'Auth token'
client = Client(account_sid, auth_token

message = client.messages \
.create(
body = takeCommand(),
from_='Sender No',
to ='Receiver No'


print(message.sid

elif "wikipedia" in query:
webbrowser.open("wikipedia.com")
port.write(b'l'


elif "Good Morning" in query:
speak("A warm" +query)
speak("How are you Mister")
speak(assname)
port.write(b'h'

# most asked question from google Assistant
elif "will you be my gf" in query or "will you be my bf" in query:
speak("I'm not sure about, may be you should give me some time")
port.write(b'h'

elif "how are you" in query:
speak("I'm fine, glad you me that")
port.write(b'h'

elif "i love you" in query:
speak("It's hard to understand")
port.write(b'h'

elif "what is" in query or "who is" in query:

# Use the same API key
# that we have generated earlier
client = wolframalpha.Client("API_ID")
res = client.query(query)

try:
print (next(res.results).text)
speak (next(res.results).text)
port.write(b'h')
except StopIteration:
print ("No results"

# elif "" in query:
# Command go here
# For adding more command







""";
    final result = await Chaquopy.executeCode(pythonCode);
    setState(() {
      _output = result.stdout;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chaquopy Example'),
        ),
        body: Center(
          child: Text(_output),
        ),
      ),
    );
  }
}
