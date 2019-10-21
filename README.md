## AtCoder

```
# setup
source ./setup.sh
# start contest
source ./start.sh
npx acc new -c all {contest_id}
# cd contest dir
cd {contest_id}
# solve task
nvim {task_id}/main.rb
# test (with vim-quickrun)
cd {task_id}; oj t -d tests -c 'ruby main.rb'; cd -
# submit
source ../submit.sh {task_id}
```
