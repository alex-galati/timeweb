Hello! Here is how to acquire and activate the Docker dev environment for my timeweb app!
1. Open Git Bash.
2. Log onto the HPC4 server, since it is readily available and has access to docker innately. If you have another environment with docker commands available, then that is fine as well. 
3. In the command line, use this command to pull my Docker image of timeweb: <br/>
    docker pull alexgalati/timeweb_dev_environment
4. Open another GitHub Browser tab, and login if necessary. Although you are reading this on GitHub, so this might be a little redundant, but oh well. 
5. In your new GitHub Browser tab, click on your profile photo at the top right of your screen and navigate to Settings > Developer Settings > Personal Access Tokens > Tokens (classic)
6. Create a new token. It can be temporary or not, all that matters is you have it.
7. Take note of your GitHub username and email address used to create the account. You will need it to run the Docker image. 
8. With your new key created and credentials remembered, you are now ready to run the Docker image!
9. Enter this command in the command line, replacing the lines after GITHUB_USER, GITHUB_EMAIL, and GITHUB_TOKEN with your GitHub username, email, and newly-created token respectively: <br/> 
    docker run -it --rm -e GITHUB_USER=___ -e GITHUB_EMAIL=___ -e GITHUB_TOKEN=___ alexgalati/timeweb_dev_environment

Congrats! You can now start developing in my timeweb repository via the developer environment! Enjoy!
