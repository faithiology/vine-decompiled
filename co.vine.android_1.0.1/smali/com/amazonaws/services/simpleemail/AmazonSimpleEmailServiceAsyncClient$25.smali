.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getSendQuotaAsync(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$getSendQuotaRequest:Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;->val$getSendQuotaRequest:Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;->val$getSendQuotaRequest:Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getSendQuota(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;->call()Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

    move-result-object v0

    return-object v0
.end method
