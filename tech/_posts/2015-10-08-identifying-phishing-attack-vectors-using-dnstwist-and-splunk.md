---
layout: post
title: 'Identifying Phishing Attack Vectors Using dnstwist and Splunk' 
category: tech
---

### This article was originally posted on [nullsecure.org](http://nullsecure.org/maltego-introducing-gavel/) and has been republished with permission.

I’ve been pretty busy lately with updating Tango to version 2.0 and working on threatnote, but, another project I started on recently was something [`@__eth0`](http://twitter.com/__eth0) and I are calling Gavel. Gavel is a set of Maltego transforms that query traffic records in each state. This project started out really ambitiously and we wanted to cover all 50 states, however, we ran into several problems. Our goal was to provide a way to look up certain data that are available in the traffic records, to include:

* Address
* Height
* Weight
* Age
* License Plate Number
* Car Make/Model

This is some great Open-Source Intelligence (OSINT) information available, and we wanted to make it easy to be obtained by researchers by using Maltego. As mentioned above, we ran into several problems that are preventing us from releasing it as a full blown set of transforms.

# Roadblocks
The first problem we hit, was some states require you to pay for each query you make against the database. If we hosted this transform on a server, we wouldn’t be able to cover the cost of each of these queries, and even if we provided the code to the users, I’m not sure we could code out a good solution to facilitate the payment information for each query.

The next problem was some states are broken out by County. This would create so much extra work for us, and by the time we finished one county, another one might have changed their code, so it’s a ton of maintenance work to get them all working. Also, some states/counties used Captcha codes for each query, and I’ve had no experience getting around them.

So, with those problems at hand, we decided to open-source this tool to the community with the hopes that any people that would benefit from this OSINT tool can code out their own county and/or state. We’re aware we may never have all the states and counties covered, however, we’d like to get as many done as we can.

Currently, only Maryland is complete, so if you live there, you’re in luck! The code isn’t that difficult, it just took a little bit working with the requests and getting the exact responses we needed. The worst part is trying to parse the HTML, which I have no problem saying….I suck at.

# How It Works
To use Gavel, you’ll simply download the code we provide and import the transforms into Maltego. Once all the code is set up and in the right place, you would then just add a “Person” entity in your Maltego graph like so…

![](/static/img/in-line/introducing-gavel/1.png)

Next, you would right-click on the entity and run “Gavel — Get Names”. This transform searches through the states traffic records and gives you the names of individuals that match your search that it has records on. For example, if your name was John Smith, there would probably be a ton of case records for that name, that’s why we give you the names, since it’s easier to narrow to the specific person you are looking for. This step also adds properties to each entity of the case ID’s that it will need to query in the next step.

Next, you would right-click on the person of interest and select “Gavel — Get Addresses”. It will then iterate through those case ID’s in the entities properties and return location and vehicle entities based on the information it finds.

Here’s a screenshot of what the end result would be.

![](/static/img/in-line/introducing-gavel/2.png)

In the image above, you can see at the top is the original entity we added, “Brian Warehime”. Below that are the case records it found that match the name that will hold all the case ID’s in the properties. Below the name are all the addresses and vehicle information we could discover (This is made up data, since my last traffic stop was so many years ago, it aged out).

You’ll notice on the right-hand side in the “Property View” section, we added additional properties to the person entity. We added the height, weight and DOB for each target, which will help validate if this is your target.

With regards to the vehicle entities, we display the license plate number, however, you can select the entity and on the right-hand side in the properties area, you will find the year, make and possible body style for the vehicle. See below for a screenshot:

![](/static/img/in-line/introducing-gavel/3.png)

Looking at the screenshot above, we can see it’s a 2000 GMC with a possible body style/make of “05”. I’m not sure where we could look that number up to find what model it corresponds to, so if you know, please let me know!

# Installation
On the github page, you’ll find a few files to download, a few Python scripts, the Maltego library we use and an .mtz file.

First up, place the Python scripts in a location on your computer, like `/Users/<yourname>/Maltego/Transforms` or wherever. Next, place the Maltego library in the same directory as the two Python scripts you just moved.

Next, open up Maltego. Click on “Manage” in the titlebar, followed by clicking on the “Import Config” button. Locate the .mtz file you downloaded and click next. Make sure the “Local Transforms” and “Transform Sets” buttons are checked and click next. Once installed, click on “Finish”.

To make sure these transforms run correctly, we’ll need to set up your environment. Click on “Manage Transforms” in the menubar and it’ll open the “Transform Manager”. Next, scroll down until you find the Gavel transforms. Click on the first one and look at the bottom right of the window. You’ll see a few options like so:

![](/static/img/in-line/introducing-gavel/4.png)

First up, make sure the “Command Line” points to your correct Python interpreter, for instance, I put /usr/bin/python for mine. Next, change the “Working Directory” to the location you saved the transforms earlier.

Repeat the steps above for both Gavel transforms and you should be all set. One last thing before you go though, I believe you need to download an Entity expansion pack to use one of the entities I added (the car), which can be found here. It’ll still work without this, however, it’ll show up as a chess piece if the entity type is not found.

That should cover it, however, if those instructions don’t work, please feel free to email me or reach out to me on Twitter or something.

# Future Development
With Maryland being the only state, we definitely want to expand this as far as we can. We’ll try to do other states as time allows, but, that’s why we need your help!

[`@__eth0`](http://twitter.com/__eth0) has done a lot of work for Delaware, and just needs to do some minor tweaking, however, once that’s done, we’ll require users to add a property value of “State” when they create the person identity to know which state to query.

A minor thing that I’ll most likely complete this week is adding the date to each entity when it was for. So, each address and vehicle will have a month/year attribute so you can know how useful the data is. One thing we thought would be useful as well is to correlate this information against state property records for validation. Anyone can go into the state’s property records and look up an address to see the current owners, so this would be an excellent way to validate the data from the case records.

You can find all the code on my Github page for what we have currently, and if you have any comments or questions, please feel free to reach out to us on Twitter at [`@brian_warehime`](http://twitter.com/brian_warehime) or [`@__eth0`](http://twitter.com/__eth0).
