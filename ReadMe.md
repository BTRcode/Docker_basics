#### Docker commands ###

* docker build <dir_of_Dockerfile (where the Docker file exists)> -t <name_of_dir_that_you_wanna_run(your_wish)>

The above command exceutes the command that are there in the Dockerfile.

* for listing the docker images
* Take the imageID 
* run : docker run <<imageID>>
* run : docker ps to check the running containers

If we want to expose the docker-enabled app
we must 
* run: docker run -p [exposedhostname_(same_as_in_Dockerfile)]:[containerport] <<imageID>>

we can can access the app with the container port where as docker access that with port mentioned in the app.js a.k.a exposedhostname.