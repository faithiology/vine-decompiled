.class public Lcom/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileOffset:J

.field private inputStream:Ljava/io/InputStream;

.field private isLastPart:Z

.field private key:Ljava/lang/String;

.field private md5Digest:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J

.field private progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setFileOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastPart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    return-object p0
.end method

.method public withFileOffset(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    return-object p0
.end method

.method public withMD5Digest(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return-object p0
.end method

.method public withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
