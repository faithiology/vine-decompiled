.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$removePermissionRequest:Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;->val$removePermissionRequest:Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;->val$removePermissionRequest:Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->removePermission(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V

    const/4 v0, 0x0

    return-object v0
.end method
