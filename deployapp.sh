<< task is to deploy Django app using docker, nginx 
task

code_clone() {
    echo "Cloning the Django APP from Git"
    git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirement() {
    echo "Installing dependencies"
    sudo apt-get install docker.io nginx -y

}

required_restart(){
    sudo chown $user /var/run/docker.sock 
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo systemctl restart docker
}

deploy(){
    echo "Building Docker image"
    docker build -t notes-app:v1 .

    echo "Running Docker container"
    docker run -d -p 8000:8000 notes-app:v1
}

echo "**********Deployment of notes-app has been started************"
if ! code_clone; then
    echo "The code diretcory is already exists"
    cd django-notes-app
fi
if ! install_requirement; then
    echo "Issue occured in installation stage"
    exit 1
fi
if ! required_restart; then
    echo "Issue in system"
    exit 1
fi
deploy
echo "**********Deployment of notes-app has been Completed************"
