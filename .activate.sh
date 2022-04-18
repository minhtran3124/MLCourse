export LOCAL_VENV="ml_course_env"


function init_env() {
    echo "===> Creating env ..."
    python -m venv --name $LOCAL_VENV
}

function activate_env() {
    echo "===> Active env..."
    source $LOCAL_VENV/bin/activate
}

function install_required_tools() {
    echo "===> Installing required tools ..."
    pip install pip-tools
}

function complie_requirements() {
    echo "===> Compling requirements ..."
    pip-compile requirements.in
}

function install_packages() {
    echo "===> Installing requirements ..."
    pip install -r requirements.txt
}

function run_setup() {
    echo "===> Running setup ..."

    init_env
    activate_env
    install_required_tools
    complie_requirements
    install_packages
}

function start_notebook() {
    jupyter notebook
}

activate_env
