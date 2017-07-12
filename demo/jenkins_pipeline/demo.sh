open -a 'Google Chrome' http://localhost:8088/
open -a 'Google Chrome' http://localhost:8088/job/docker-workflow/pipeline-syntax/globals
open -a 'Google Chrome' https://github.com/jenkinsci/docker-workflow-plugin/blob/master/demo/repo/flow.groovy
export DOCKER_GROUP=$(stat -f %g /var/run/docker.sock)
docker-compose up
