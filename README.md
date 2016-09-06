Repo Info
=========
Build [Docker] image for [GitLab-CE]..

Consuming
---------
```
docker-compose up -d --build
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
