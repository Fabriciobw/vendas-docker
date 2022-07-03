From openjdk:8
copy ./target/vendas-0.0.1-SNAPSHOT.jar vendas-1.0-SNAPSHOT.jar
CMD ["java","-jar","vendas-1.0-SNAPSHOT.jar"]