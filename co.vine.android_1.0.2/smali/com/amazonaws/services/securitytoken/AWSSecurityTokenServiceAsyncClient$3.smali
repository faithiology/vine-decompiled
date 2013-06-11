.class Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->getFederationTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

.field final synthetic val$getFederationTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;->val$getFederationTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;->val$getFederationTokenRequest:Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->getFederationToken(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;->call()Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    move-result-object v0

    return-object v0
.end method
