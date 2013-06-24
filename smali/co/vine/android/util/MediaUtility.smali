.class public Lco/vine/android/util/MediaUtility;
.super Ljava/lang/Object;
.source "MediaUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/MediaUtility$FileInfo;
    }
.end annotation


# static fields
.field public static final MEDIA:I = 0x2

.field public static final S3:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMode:I

.field private mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lco/vine/android/util/MediaUtility;->mMode:I

    .line 43
    iput-object p1, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static getUploadType(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "avatarFileUri"
    .parameter "pictureBucket"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avatars/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p3, p1}, Lco/vine/android/util/image/ImageUtils;->getRealPathFromImageUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, realFileUrl:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "avatars"

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/MediaUtility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/util/MediaUtility$FileInfo;

    move-result-object v6

    .line 166
    .local v6, info:Lco/vine/android/util/MediaUtility$FileInfo;
    if-eqz v6, :cond_0

    .line 167
    iget-object v1, v6, Lco/vine/android/util/MediaUtility$FileInfo;->uploadKey:Ljava/lang/String;

    .line 172
    .end local v6           #info:Lco/vine/android/util/MediaUtility$FileInfo;
    .end local v7           #realFileUrl:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getThumbnailUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
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
    .line 133
    invoke-static {p4}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, videoBucket:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumbs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    const-string v5, "thumbs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/MediaUtility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/util/MediaUtility$FileInfo;

    move-result-object v6

    .line 136
    .local v6, info:Lco/vine/android/util/MediaUtility$FileInfo;
    if-eqz v6, :cond_0

    .line 137
    iget-object v0, v6, Lco/vine/android/util/MediaUtility$FileInfo;->uploadKey:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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
    .line 146
    invoke-static {p3}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, videoBucket:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 148
    const-string v5, "videos"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/MediaUtility;->upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/util/MediaUtility$FileInfo;

    move-result-object v6

    .line 149
    .local v6, info:Lco/vine/android/util/MediaUtility$FileInfo;
    if-eqz v6, :cond_0

    .line 150
    iget-object v0, v6, Lco/vine/android/util/MediaUtility$FileInfo;->uploadKey:Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public upload(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/util/MediaUtility$FileInfo;
    .locals 15
    .parameter "listener"
    .parameter "key"
    .parameter "fileToUpload"
    .parameter "bucket"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v10, "Upload started for {}."

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget v10, p0, Lco/vine/android/util/MediaUtility;->mMode:I

    packed-switch v10, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return-object v10

    .line 62
    :pswitch_0
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    if-nez v10, :cond_1

    .line 63
    new-instance v10, Lcom/amazonaws/services/s3/AmazonS3Client;

    new-instance v11, Lcom/amazonaws/auth/BasicAWSCredentials;

    sget-object v12, Lco/vine/android/client/Amazon;->ACCESS_KEY:Ljava/lang/String;

    sget-object v13, Lco/vine/android/client/Amazon;->ACCESS_SECRET:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v10, p0, Lco/vine/android/util/MediaUtility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 67
    :cond_1
    new-instance v7, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 69
    .local v7, por:Lcom/amazonaws/services/s3/model/PutObjectRequest;
    new-instance v5, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 71
    .local v5, metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;
    const-string v10, "jpg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    const-string v10, "image/jpeg"

    invoke-virtual {v5, v10}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 75
    :cond_2
    const-string v10, ".mp4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 76
    const-string v10, "video/mp4"

    invoke-virtual {v5, v10}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 78
    :cond_3
    invoke-virtual {v7, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 80
    const-string v10, "Upload {} to bucket {}."

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v10, v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 84
    :try_start_0
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mS3Client:Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v10, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 85
    const-string v10, "Upload {} successful."

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance v10, Lco/vine/android/util/MediaUtility$FileInfo;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v10, v11, v0, v1}, Lco/vine/android/util/MediaUtility$FileInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, e:Ljava/lang/Exception;
    throw v3

    .line 92
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v7           #por:Lcom/amazonaws/services/s3/model/PutObjectRequest;
    :pswitch_1
    const-string v10, ".mp4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 93
    const-string v10, "Upload video through media."

    invoke-static {v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 94
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lco/vine/android/util/EnvUtil;->get(Landroid/content/Context;)Lco/vine/android/util/EnvUtil;

    move-result-object v10

    invoke-virtual {v10}, Lco/vine/android/util/EnvUtil;->getMediaUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "upload"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "videos"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mp4"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 96
    .local v9, url:Ljava/lang/StringBuilder;
    new-instance v4, Lco/vine/android/util/MeasureOutputStream;

    const-string v10, "video/mp4"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v10, v1}, Lco/vine/android/util/MeasureOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 97
    .local v4, entity:Lco/vine/android/util/MeasureOutputStream;
    const/16 v10, 0x10

    invoke-static {v10}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v8

    .line 99
    .local v8, reader:Lco/vine/android/api/VineParserReader;
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v10

    iget-object v11, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v11

    invoke-static {v10, v9, v8, v4, v11}, Lco/vine/android/network/HttpOperation;->createMediaPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lorg/apache/http/HttpEntity;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v10

    invoke-virtual {v10}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v6

    .line 102
    .local v6, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    const-string v10, "Upload {} successful."

    iget-object v11, v6, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    new-instance v10, Lco/vine/android/util/MediaUtility$FileInfo;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0, v12}, Lco/vine/android/util/MediaUtility$FileInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_4
    const-string v10, "{} {} {}"

    iget v11, v6, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v6, Lco/vine/android/network/HttpOperation;->statusPhrase:Ljava/lang/String;

    invoke-static {v10, v9, v11, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    .end local v4           #entity:Lco/vine/android/util/MeasureOutputStream;
    .end local v6           #op:Lco/vine/android/network/HttpOperation;
    .end local v8           #reader:Lco/vine/android/api/VineParserReader;
    .end local v9           #url:Ljava/lang/StringBuilder;
    :cond_5
    const-string v10, "jpg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 109
    const-string v10, "Upload image through media."

    invoke-static {v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 110
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lco/vine/android/util/EnvUtil;->get(Landroid/content/Context;)Lco/vine/android/util/EnvUtil;

    move-result-object v10

    invoke-virtual {v10}, Lco/vine/android/util/EnvUtil;->getMediaUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "upload"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p5, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 112
    .restart local v9       #url:Ljava/lang/StringBuilder;
    new-instance v4, Lco/vine/android/util/MeasureOutputStream;

    const-string v10, "image/jpeg"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v10, v1}, Lco/vine/android/util/MeasureOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 113
    .restart local v4       #entity:Lco/vine/android/util/MeasureOutputStream;
    const/16 v10, 0x10

    invoke-static {v10}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v8

    .line 115
    .restart local v8       #reader:Lco/vine/android/api/VineParserReader;
    iget-object v10, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v10

    iget-object v11, p0, Lco/vine/android/util/MediaUtility;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v11

    invoke-static {v10, v9, v8, v4, v11}, Lco/vine/android/network/HttpOperation;->createMediaPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lorg/apache/http/HttpEntity;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v10

    invoke-virtual {v10}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v6

    .line 118
    .restart local v6       #op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 119
    const-string v10, "Upload {} successful."

    iget-object v11, v6, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    new-instance v10, Lco/vine/android/util/MediaUtility$FileInfo;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0, v12}, Lco/vine/android/util/MediaUtility$FileInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_6
    const-string v10, "{} {} {}"

    iget v11, v6, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v6, Lco/vine/android/network/HttpOperation;->statusPhrase:Ljava/lang/String;

    invoke-static {v10, v9, v11, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
