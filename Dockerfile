
FROM centos as builder 
COPY . .
COPY test.txt /home

FROM centos as updatetest
COPY --from=builder /home/test.txt /home