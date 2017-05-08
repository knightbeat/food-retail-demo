FROM nuwanbando/javabase:v2

RUN mkdir wso2 

COPY packs/wso2ei-6.1.1.zip wso2/

RUN cd wso2/ && \
        unzip wso2ei-6.1.1.zip

COPY integrator/master-datasources.xml /wso2/wso2ei-6.1.1/conf/datasources/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2ei-6.1.1/lib


CMD ["sh", "/wso2/wso2ei-6.1.1/bin/integrator.sh"]

EXPOSE 9765
EXPOSE 9445
EXPOSE 8281
EXPOSE 8244