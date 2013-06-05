.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->scanAsync(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$scanRequest:Lcom/amazonaws/services/dynamodb/model/ScanRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/ScanRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;->val$scanRequest:Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/ScanResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;->val$scanRequest:Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->scan(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/services/dynamodb/model/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;->call()Lcom/amazonaws/services/dynamodb/model/ScanResult;

    move-result-object v0

    return-object v0
.end method
