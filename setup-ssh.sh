
# generate ssh key
ssh-keygen -t ed25519 -C "arjan.gahatrajsunar@gmail.com"

# start agent
eval "$(ssh-agent -s)"

# add to agent
ssh-add ~/.ssh/id_ed25519

# copy generated key
cat ~/.ssh/id_ed25519.pub | xclip -sel clip
