# yoctobuilder

A docker container to build yocto images. Get it from dockerhub as `bernedom/yoctobuilder`

For convenience copy [run_container.sh](run_container.sh) to your workspace and run it. This scripts mounts the current working directory (pwd) and your .ssh folder into the container. 

```bash
./run_container.sh 
```

The `~/.ssh` folder is mounted for convenience so repositories which require access over an ssh-key can be conventiently used. 


To manually run mount the directory mount your yocto build path to `/home/builder/image-builder` in the container. 

To build locally use `build_container.sh`

# Forking and building on gituhb

The project is setup so that each push builds the container and pushes it to dockerhub. 

* Pushes to feature branches will be tagged as `:hack`
* Pushes to main without a tag/release will be tagged as `:develop`
* Releases and tags on main are tagged with `:latest` and the tag name