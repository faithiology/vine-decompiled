.class public interface abstract Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsync;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;


# virtual methods
.method public abstract assumeRoleAsync(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract assumeRoleAsync(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getFederationTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getFederationTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSessionTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSessionTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
