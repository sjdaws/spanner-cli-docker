FROM golang:1.14

ENV SPANNER_DATABASE    database
ENV SPANNER_INSTANCE_ID instance
ENV SPANNER_PROJECT_ID  project

# Download spanner cli
RUN GOPATH=/go go get -u -v github.com/cloudspannerecosystem/spanner-cli

CMD ["sh", "-c", "/go/bin/spanner-cli -p ${SPANNER_PROJECT_ID} -i ${SPANNER_INSTANCE_ID} -d ${SPANNER_DATABASE}"]
