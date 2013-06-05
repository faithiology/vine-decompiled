.class public Lcom/amazonaws/services/s3/model/ListObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method
