Testing software is good. These scripts allow you easily throw together 
a docker container to do testing of the Ansible repo.

**build.sh** will build a new image from the included **Dockerfile**.

To run the image, **run.sh** is used. Note that the path to the repo
on the host system is static, so if you're using my stuff you should
change that to match your system. Also, the local directory needs
to be of a specific SELinux context (svirt_sandbox_file_t), otherwise
Docker will be unable to read it. You can set this with:

```
sudo chcon -Rt svirt_sandbox_file_t ~/Projects/priv/workstation
```

Not everything will work in a container! But it should let you test
some simple things in an isolated environment.
