# Container image that runs your code
FROM securesystemslab/lind

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /home/lind/lind_project/entrypoint.sh
RUN ["chmod", "+x", "/home/lind/lind_project/entrypoint.sh"]
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["bash", "/home/lind/lind_project/entrypoint.sh"]
