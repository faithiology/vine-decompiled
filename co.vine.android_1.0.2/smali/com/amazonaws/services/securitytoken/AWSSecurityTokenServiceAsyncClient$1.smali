.class Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->getSessionTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

.field final synthetic val$getSessionTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;->val$getSessionTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;->val$getSessionTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->getSessionToken(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;->call()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    return-object v0
.end method
