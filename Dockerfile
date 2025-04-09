from ubuntu:latest

run apt-get update && apt-get install -y\
    vim curl git sudo gcc g++ \
    python3 python3-pip python3-venv python3-dev \
    build-essential libffi-dev libc-dev

run useradd -m developer && echo "developer ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/developer

user developer
workdir /home/developer

run git clone https://$GITHUB_TOKEN@github.com/alex-galati/timeweb

copy .profile /home/developer/.profile
run echo "\n. ~/.profile\n" >> /home/developer/.bashrc
run echo ". ~/env/bin/activate" >> ~/.bashrc

run python3 -m venv /home/developer/env
run /home/developer/env/bin/pip install -r /home/developer/timeweb/requirements.txt


cmd ["/bin/bash"]
