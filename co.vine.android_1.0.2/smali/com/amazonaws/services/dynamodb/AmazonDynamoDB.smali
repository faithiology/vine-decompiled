.class public interface abstract Lcom/amazonaws/services/dynamodb/AmazonDynamoDB;
.super Ljava/lang/Object;


# virtual methods
.method public abstract batchGetItem(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract batchWriteItem(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createTable(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/services/dynamodb/model/CreateTableResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteItem(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteTable(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTable(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
.end method

.method public abstract getItem(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/services/dynamodb/model/GetItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listTables()Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listTables(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract putItem(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/services/dynamodb/model/PutItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract query(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/services/dynamodb/model/QueryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract scan(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/services/dynamodb/model/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/amazonaws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract updateItem(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract updateTable(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
