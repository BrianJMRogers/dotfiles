git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:BrianJMRogers/dotfiles.git
git push -u origin master

git rm inialize.sh
gc -m "removing initialization script"
git push
