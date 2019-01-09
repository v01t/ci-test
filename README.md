# ci-test

## Phase A: Start Jenkins
1. ```git clone https://github.com/v01t/ci-test```
2. ```cd ci-test && docker-compose up -d --build```
3. Retrieve admin password that generated during initial container start:
```docker logs -f ci-test_jenkins_1```
or
```docker exec ci-test_jenkins_1 cat /var/jenkins_home/secrets/initialAdminPassword```
4. Using admin password start initial configuration process (open in the browser http://localhost:8000) and follow recommended selections ("Install suggested plugins" > specify first admin user credentials > "Continue as Admin" > "Save and Finish" > "Start using Jenkins"

## Phase B: Configure Jenkins and import Job
1. Add "testMaven" and "testDocker" installations names under "Manage Jenkins" > "Global Tool Configuration" (just by adding specified names) > Save
2. Disable authorization and CSRF: "Manage Jenkins" > "Configure Global Security" > Set to false (uncheck): "Enable security" and "CSRF Protection" > Save (just to simplify import process, alternatively properly configure user access rights and/or access tokens and use them during the next step)
3. ```curl --user <username>:<password> -X POST 'http://localhost:8000/createItem?name=helloworld' --header "Content-Type: application/xml" -d @helloworld.xml```
4. Enable security

## Run helloworld Jenkins job
