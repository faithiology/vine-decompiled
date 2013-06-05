.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->deleteTopicAsync(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$deleteTopicRequest:Lcom/amazonaws/services/sns/model/DeleteTopicRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$deleteTopicRequest:Lcom/amazonaws/services/sns/model/DeleteTopicRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$deleteTopicRequest:Lcom/amazonaws/services/sns/model/DeleteTopicRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->deleteTopic(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$deleteTopicRequest:Lcom/amazonaws/services/sns/model/DeleteTopicRequest;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    throw v0
.end method
