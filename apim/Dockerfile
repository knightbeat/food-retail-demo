FROM nuwanbando/javabase:v2

RUN mkdir wso2 

COPY packs/wso2am-2.1.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2am-2.1.0.zip

COPY apim/api-manager.xml /wso2/wso2am-2.1.0/repository/conf/api-manager.xml

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2am-2.1.0/repository/components/lib

COPY apim/master-datasources.xml /wso2/wso2am-2.1.0/repository/conf/datasources/

CMD ["sh", "/wso2/wso2am-2.1.0/bin/wso2server.sh"]

EXPOSE 9763
EXPOSE 9443
EXPOSE 8280
EXPOSE 8243