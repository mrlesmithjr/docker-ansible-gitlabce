Repo Info
=========
Build [Docker] image for [GitLab-CE] provisioned via [Ansible]

Building
--------
If you need to modify any configurations you will need to rebuild the image:
```
docker build -t gitlabce .
```
And then spin the image up:
```
docker run -d -p 2222:22 -p 80:80 -p 443:443 gitlabce
```

Consuming
---------
```
docker run -d -p 2222:22 -p 80:80 -p 443:443 mrlesmithjr/gitlabce
```
Spin up using `docker-compose`:
```
docker-compose up -d
```
`docker-compose.yml`
```
version: '2'
services:
  gitlabce:
    image: "mrlesmithjr/gitlabce"
    volumes:
      - "gitlab_etc:/etc/gitlab"
      - "gitlab_opt:/var/opt/gitlab"
      - "gitlab_log:/var/log/gitlab"
    ports:
      - "2222:22"
      - "80:80"
      - "443:443"
    privileged: true
    restart: always

volumes:
  gitlab_etc:
  gitlab_opt:
  gitlab_log:
```

Define Alternate SSH Port For GitLab
------------------------------------
The following will need to be configured in order to properly SSH to [GitLab-CE]
```
vi ~/.ssh/config
```
Replace localhost with respective hostname...
```
Host localhost
  Hostname localhost
  User git
  Port 2222
```

Log Into WebUI...  
http://IPorHostName

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[GitLab-CE]: <https://gitlab.com/gitlab-org/gitlab-ce>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
