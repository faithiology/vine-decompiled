.class public Lco/vine/android/util/AmazonS3Utility;
.super Ljava/lang/Object;
.source "AmazonS3Utility.java"


# instance fields
.field private mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "avatarFileUri"
    .parameter "pictureBucket"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatars/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-static {p3, p1}, Lco/vine/android/util/image/ImageUtils;->getRealPathFromImageUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, realFileUrl:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v3, p2}, Lco/vine/android/util/AmazonS3Utility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #realFileUrl:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #filename:Ljava/lang/String;
    .restart local v1       #realFileUrl:Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .line 93
    goto :goto_0

    .end local v1           #realFileUrl:Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 96
    goto :goto_0
.end method

.method public getThumbnailUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "listener"
    .parameter "filename"
    .parameter "thumbnail"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p4}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, videoBucket:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2, p3, v0}, Lco/vine/android/util/AmazonS3Utility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getVideoUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "listener"
    .parameter "file"
    .parameter "context"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p3}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, videoBucket:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-virtual {p0, p1, p4, p2, v0}, Lco/vine/android/util/AmazonS3Utility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    .end local p4
    :goto_0
    return-object p4

    .restart local p4
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .parameter "listener"
    .parameter "key"
    .parameter "fileToUpload"
    .parameter "bucket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v3, p0, Lco/vine/android/util/AmazonS3Utility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Lcom/amazonaws/services/s3/AmazonS3Client;

    new-instance v4, Lcom/amazonaws/auth/BasicAWSCredentials;

    sget-object v5, Lco/vine/android/client/Amazon;->ACCESS_KEY:Ljava/lang/String;

    sget-object v6, Lco/vine/android/client/Amazon;->ACCESS_SECRET:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v3, p0, Lco/vine/android/util/AmazonS3Utility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 33
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v2, p4, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 36
    .local v2, por:Lcom/amazonaws/services/s3/model/PutObjectRequest;
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 38
    .local v1, metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;
    const-string v3, "jpg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 42
    :cond_1
    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    const-string v3, "video/mp4"

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 46
    :cond_2
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 48
    const-string v3, "Upload {} to bucket {}."

    invoke-static {v3, p2, p4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 53
    :try_start_0
    iget-object v3, p0, Lco/vine/android/util/AmazonS3Utility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 54
    const-string v3, "Upload {} successful."

    invoke-static {v3, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v3, 0x1

    return v3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method
