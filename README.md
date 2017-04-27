# capstone-vag-dev
The repository to create a vagrant development environment for our project.

## Installation

### I will put better instructions up later.

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

![Alt text](docs/img1.JPG?raw=true "Vagrant File")