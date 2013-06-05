.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setPartETags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withPartETags(Ljava/util/Collection;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/UploadPartResult;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v3, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withPartETags(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->setPartETags(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withPartETags([Lcom/amazonaws/services/s3/model/UploadPartResult;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 6

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v4, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
