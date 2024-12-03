docker build -t priprema:v1 \
	--build-arg USER_ID=$(id -u) \
	--build-arg USER_NAME=$USER \
	--build-arg GROUP_ID=$(id -g) \
	--build-arg GROUP_NAME=$USER .
