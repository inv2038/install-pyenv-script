# 1. Install all required prerequisite dependencies:
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# 2. Download and execute installation script:
curl https://pyenv.run | bash

# 3. Make .bashrc backup
cp ~/.bashrc ~/.bashrc.bkp

# 4. Add the following entries into your ~/.bashrc file:
echo "export PATH=\"$HOME/.pyenv/bin:$PATH\"" >> ~/.bashrc ; 
export PATH="$HOME/.pyenv/bin:$PATH"
echo "eval \"\$(pyenv init --path)\"" >> ~/.bashrc ; 
echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.bashrc ; 

# 5. Restart your shell for commit changes:
exec $SHELL

# 6. Validate installation:
pyenv --version

