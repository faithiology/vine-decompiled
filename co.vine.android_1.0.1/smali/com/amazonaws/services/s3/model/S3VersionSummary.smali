.class public Lcom/amazonaws/services/s3/model/S3VersionSummary;
.super Ljava/lang/Object;


# instance fields
.field protected bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private isDeleteMarker:Z

.field private isLatest:Z

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private size:J

.field private storageClass:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteMarker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isDeleteMarker:Z

    return v0
.end method

.method public isLatest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isLatest:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleteMarker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isDeleteMarker:Z

    return-void
.end method

.method public setIsLatest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isLatest:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->size:J

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->versionId:Ljava/lang/String;

    return-void
.end method
