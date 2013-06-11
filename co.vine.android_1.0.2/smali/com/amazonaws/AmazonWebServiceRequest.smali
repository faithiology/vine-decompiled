.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;


# instance fields
.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private delegationToken:Ljava/lang/String;

.field private final requestClientOptions:Lcom/amazonaws/RequestClientOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-void
.end method


# virtual methods
.method public copyPrivateRequestParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->delegationToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "SecurityToken"

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceRequest;->delegationToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getDelegationToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->delegationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-object v0
.end method

.method public getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public setDelegationToken(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->delegationToken:Ljava/lang/String;

    return-void
.end method

.method public setRequestCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method
