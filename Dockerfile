FROM gitpod/workspace-full

# install cgit
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dev-x-Team/corgit/main/setup)"

# verx
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/abdfnx/verx/HEAD/install.sh)"
