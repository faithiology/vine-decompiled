.class Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->selectAsync(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpledb/model/SelectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

.field final synthetic val$selectRequest:Lcom/amazonaws/services/simpledb/model/SelectRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/SelectRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;->val$selectRequest:Lcom/amazonaws/services/simpledb/model/SelectRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpledb/model/SelectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;->val$selectRequest:Lcom/amazonaws/services/simpledb/model/SelectRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->select(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Lcom/amazonaws/services/simpledb/model/SelectResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;->call()Lcom/amazonaws/services/simpledb/model/SelectResult;

    move-result-object v0

    return-object v0
.end method
