sh fetch-versions.sh activiti-dependencies 7.1.117
sh fetch-versions.sh activiti-cloud-dependencies 7.1.215
sh fetch-versions.sh activiti-cloud-modeling-dependencies 7.1.270

export MAVEN_ARGS="clean install -DskipTests"
export DOCKER_PUSH=
export MAVEN_PUSH=
export DOCKER_USER=ermedeiros
export RELEASE_VERSION=7.1.0.M5.MOCK2
export CHECK_VERSIONS=true
export GIT_PUSH=

PROJECTS=activiti,activiti-cloud,activiti-cloud-acceptance-tests,activiti-cloud-modeling,activiti-examples,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom,activiti-cloud-ttc-examples ./remove-all.sh
PROJECTS=activiti,activiti-cloud,activiti-cloud-acceptance-tests,activiti-cloud-modeling,activiti-examples,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom,activiti-cloud-ttc-examples ./clone-all.sh
PROJECTS=activiti,activiti-cloud,activiti-cloud-acceptance-tests,activiti-cloud-modeling,activiti-examples,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom,activiti-cloud-ttc-examples ./build-all.sh
PROJECTS=activiti,activiti-cloud,activiti-cloud-acceptance-tests,activiti-cloud-modeling,activiti-examples,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom,activiti-cloud-ttc-examples ./release-all.sh

#Cloud only
PROJECTS=activiti-cloud,activiti-cloud-modeling,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom ./remove-all.sh
PROJECTS=activiti-cloud,activiti-cloud-modeling,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom ./clone-all.sh
PROJECTS=activiti-cloud,activiti-cloud-modeling,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom ./build-all.sh
PROJECTS=activiti-cloud,activiti-cloud-modeling,activiti-cloud-modeling-examples,activiti-cloud-examples,activiti-cloud-bom ./release-all.sh


PROJECTS=activiti,activiti-cloud,activiti-cloud-modeling,activiti-examples,activiti-cloud-examples,activiti-cloud-modeling-examples ./remove-all.sh
PROJECTS=activiti,activiti-cloud,activiti-cloud-modeling,activiti-examples,activiti-cloud-examples,activiti-cloud-modeling-examples ./clone-all.sh


PROJECTS=activiti,activiti-cloud,activiti-cloud-modeling,activiti-examples,activiti-cloud-examples,activiti-cloud-modeling-examples ./build-all.sh
PROJECTS=activiti,activiti-cloud,activiti-cloud-modeling,activiti-examples,activiti-cloud-examples,activiti-cloud-modeling-examples ./release-all.sh
PROJECTS=activiti-cloud-examples,activiti-cloud-modeling-examples ./dockerpush-all.sh
