# RasPiTimelapse
RasPiTimelapse - Let your RasPi take nice timelapses for you, fast and easy

## Installation

### needed software

First of all you will need to install Apache2, PHP, fswebcam and mencoder 
```
$ sudo apt-get install apache2 php libapache2-mod-php fswebcam mencoder -y

$ sudo systemctl restart apache2
```

### install script

gain root rights with "sudo su", download the installer and run it
```
$ sudo su

$ wget https://raw.githubusercontent.com/szalewicz/RasPiTimelapse/master/install.sh

$ chmod +x install.sh

$ ./install.sh
```


## Usage

### manually

to take a picture just run

```
$ /opt/RasPiTimelapse/take_photo.sh
```

You will find the picture in the /home/pi/RasPiTimelapse folder.


### as a cronjob

to automate everything let us set up new cronjobs.

```
$ sudo crontab -e
```

and add the following two lines at the end of the file

> */1 7-20 * * 1-5 /opt/RasPiTimelapse/take_photo.sh
> 
> 10 20 * * 1-5 /opt/RasPiTimelapse/create_timelapse.sh

Short explanation:

> */1 7-20 * * 1-5 -> At every minute between 7 A.M. and 8 P.M. on every day-of-week from Monday till Friday
> 
> 10 20 * * 1-5 -> At 20:10 on every day-of-week from Monday till Friday


Now your Pi will be taking a picture every Minute between 7 A.M. and 8 P.M. and storing it to your /home/pi/RasPiTimelapse folder

At 8:10 P.M. he will convert your pictures to a nice timelapse and move it to your www folder, so that you can view it from every device in your network.
You can even download it and send to someone it that's what you desire.




Drop me a line if I can help you with anything else.
