# capstone-vag-dev
The repository to create a vagrant development environment for our project.

## Installation

1. Install Vagrant and Virtual Box
    1. Go to [here](https://www.vagrantup.com/docs/installation/) and follow instructions to install vagrant. 
	OSX/Linux probably has a terminal command.
	2. Go [here](https://www.virtualbox.org/) and install virtual box. OSX/Linux probably has a terminal command.

2. Use GIT to copy this directory to somewhere on your computer
    Note that I've used the gitignore file to ignore the 'app' folder. So when working, make a new git repository in here and link to 
    [https://github.com/Elstabbo/IFB398](https://github.com/Elstabbo/IFB398)
3. Navigate to the folder in terminal/command line
4. Run Vagrant Up

![Alt text](docs/img1.JPG?raw=true "Vagrant Up")

    This will take a long time (5-10 min), as it has to download the ubuntu image file and configure it.

3. Inside the vagrant file, you can see/change if neccessary the ip that you connect to access the application. Its also
possible that you may have to change the port if it conflicts with another program on your computer.

![Alt text](docs/img2.JPG?raw=true "Vagrant File")

4. To see if this working, simply use your browser and connect to the IP set in the vagrant file, which will be 192.168.33.50 unless
otherwise set. You should see the php info file.

![Alt text](docs/img3.JPG?raw=true "Test")

## Development

Use the app folder, see index.php as an example. If we like, I can also add a local database, but I thought initially we
would just connect to the heroku one.