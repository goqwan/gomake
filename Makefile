# This how we want to name the binary output
BINARY=gomake

# These are the values we want to pass for VERSION and BUILD
VERSION=$(ver)
BUILD=`git rev-parse HEAD`
GIT_TAG=`git describe --tags`
BUILD_TIME=`date +%FT%T%z`

# Setup the -ldflags option for go build here, interpolate the variable values
LDFLAGS=-ldflags "-X main.Version=${VERSION} -X main.BuildTime=${BUILD_TIME} -X main.GitTag=${GIT_TAG} -X main.Build=${BUILD}"

# Builds the project
build:
	go build ${LDFLAGS} -o ${BINARY}

# Installs our project: copies binaries
install:
	go install ${LDFLAGS}

# Cleans our project: deletes binaries
clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi

.PHONY: clean install