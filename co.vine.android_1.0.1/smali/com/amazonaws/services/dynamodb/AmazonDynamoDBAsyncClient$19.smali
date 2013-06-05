.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->deleteTableAsync(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$deleteTableRequest:Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;->val$deleteTableRequest:Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;->val$deleteTableRequest:Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->deleteTable(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;->call()Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

    move-result-object v0

    return-object v0
.end method
