# Please choose your required Underworld/UWGeo image version here.
# Available images may be found at
#   https://hub.docker.com/r/underworldcode/underworld2/tags
#   https://hub.docker.com/r/underworldcode/uwgeodynamics/tags
FROM underworldcode/underworld2:v2.9.0b

# THE FOLLOWING WILL USUALLY NOT REQUIRE MODIFICATION.

# This command will copy in all the files in your repo.
COPY --chown=jovyan:users . /community_model

# Set working directory to where we've put files. 
WORKDIR /community_model

# Create symbolic link to documentation. 
RUN ln -s /home/jovyan underworld_documentation
