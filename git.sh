git init
ssh -T git@github.com
git remote add origin git@github.com:Yuhi-Sato/isucon12-f-2.git
cat << EOF >> .gitignore
php
java
node
nodejs
python
ruby
perl
rust
/sql/setup/2_init.sql
/sql/4_alldata_exclude_user_pres
/tool-config/alp/notify-slack.toml
/tool-config/slow-query/notify-slack.toml
EOF
git add .
git commit -m 'first commit'
git branch -M main
git push origin main
