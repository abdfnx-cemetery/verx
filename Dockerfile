FROM gitpod/workspace-full

# install cgit
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dev-x-Team/corgit/main/setup)"

# verx (by abdfnx)
RUN brew install verx
