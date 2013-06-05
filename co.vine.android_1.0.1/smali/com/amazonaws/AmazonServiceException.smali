.class public Lcom/amazonaws/AmazonServiceException;
.super Lcom/amazonaws/AmazonClientException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/AmazonServiceException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorType:Lcom/amazonaws/AmazonServiceException$ErrorType;

.field private requestId:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v0, p0, Lcom/amazonaws/AmazonServiceException;->errorType:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v0, p0, Lcom/amazonaws/AmazonServiceException;->errorType:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Lcom/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->errorType:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->errorType:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWS Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWS Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWS Error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWS Error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
