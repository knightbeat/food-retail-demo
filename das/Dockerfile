FROM nuwanbando/javabase:v2

RUN mkdir wso2 

COPY packs/wso2am-analytics-2.1.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2am-analytics-2.1.0.zip

COPY das/analytics-datasources.xml /wso2/wso2am-analytics-2.1.0/repository/conf/datasources/

COPY das/stats-datasources.xml /wso2/wso2am-analytics-2.1.0/repository/conf/datasources/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2am-analytics-2.1.0/repository/components/lib


CMD ["sh", "/wso2/wso2am-analytics-2.1.0/bin/wso2server.sh"]

EXPOSE 9764
EXPOSE 9444
EXPOSE 7712
EXPOSE 7612