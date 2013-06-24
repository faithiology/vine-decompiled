.class public Lcom/amazonaws/services/s3/transfer/TransferManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;,
        Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;,
        Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = "/"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 1

    invoke-static {}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    return-void
.end method

.method static synthetic access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method private download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    new-array v0, v10, [Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    aput-object v5, v0, v9

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v5

    aput-object v5, v0, v8

    invoke-direct {v3, v0}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v6

    new-instance v7, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    invoke-direct {v7, v4}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    new-instance v0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    array-length v1, v1

    if-ne v1, v10, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    aget-wide v3, v1, v9

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    aget-wide v5, v1, v8

    sub-long v3, v5, v3

    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/transfer/TransferManager$1;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Ljava/io/File;Lcom/amazonaws/services/s3/model/GetObjectRequest;)V

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;

    invoke-direct {v2, v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    monitor-enter v7

    const/4 v1, 0x1

    :try_start_0
    #setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z
    invoke-static {v7, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->access$102(Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Z)Z

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private listFiles(Ljava/io/File;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, v3, p2, p3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    sget-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-static {p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/internal/Mimetypes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    invoke-static {p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazonaws/services/s3/model/ProgressListener;

    const/4 v3, 0x0

    new-instance v4, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v4, v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p1, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    invoke-direct {v3, v0, v1, v5, p2}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    new-instance v0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V

    new-instance v6, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;

    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v7, p0

    move-object v8, v3

    move-object v10, v0

    move-object v11, p1

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v3, v6}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    return-object v3
.end method


# virtual methods
.method public abortMultipartUploads(Ljava/lang/String;Ljava/util/Date;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getMultipartUploads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/MultipartUpload;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getInitiated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v5, v0}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-interface {v3, v0}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withUploadIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    sget-object v2, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->addClientMarker(Ljava/lang/String;)V

    return-object p1
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v0

    return-object v0
.end method

.method public downloadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/MultipleFileDownload;
    .locals 12

    if-nez p2, :cond_8

    const-string v4, ""

    :goto_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    move-wide v1, v0

    :goto_1
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    move-wide v5, v1

    move-object v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v1, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/AmazonS3;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v1

    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getSize()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/amazonaws/services/s3/transfer/TransferManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping download for object "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " since it is also a virtual directory"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    invoke-virtual {v2, v5, v6}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    new-instance v8, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v8, v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;

    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/amazonaws/services/s3/model/ProgressListener;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-direct {v3, v5}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v1, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-direct {v1, v0, v6}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    new-instance v2, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    new-instance v3, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;

    invoke-direct {v3, v2, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create parent directories for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v7, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v9, v1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v1

    invoke-direct {p0, v1, v5, v3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    :goto_5
    return-object v0

    :cond_6
    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    #setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v2, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$402(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Z)Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move-wide v1, v5

    goto/16 :goto_1

    :cond_8
    move-object v4, p2

    goto/16 :goto_0
.end method

.method public getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    return-object v0
.end method

.method public setConfiguration(Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    return-void
.end method

.method public shutdownNow()V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v0, v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    check-cast v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->shutdown()V

    :cond_0
    return-void
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a directory to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p3, v0, p4}, Lcom/amazonaws/services/s3/transfer/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide a common base directory for uploaded files"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    const-string v5, ""

    :goto_0
    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    new-instance v10, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v10, v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;

    const-string v2, "Uploading etc"

    const/4 v4, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-direct {v2, v1, v7}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    new-instance v4, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    new-instance v6, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;

    invoke-direct {v6, v4, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V

    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-object v2, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    :cond_4
    const-wide/16 v8, 0x0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\\\"

    const-string v14, "/"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v12, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v13, v10}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v1, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3, v8, v9}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    monitor-enter v4

    const/4 v2, 0x1

    :try_start_0
    #setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v4, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$402(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Z)Z

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    move-object/from16 v5, p2

    goto/16 :goto_0
.end method
