FROM airhacks/glassfish
COPY ./target/Hello.war ${DEPLOYMENT_DIR}
