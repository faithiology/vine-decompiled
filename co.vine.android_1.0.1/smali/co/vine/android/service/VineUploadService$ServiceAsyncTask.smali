.class public Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
.super Landroid/os/AsyncTask;
.source "VineUploadService.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/amazonaws/services/s3/model/ProgressListener;"
    }
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final bundle:Landroid/os/Bundle;

.field private mCurrentSize:J

.field private mLastProgress:I

.field private mSize:J

.field onUploadSuccessRunnable:Ljava/lang/Runnable;

.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lco/vine/android/service/VineUploadService;

.field private final thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 451
    iput-object p1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mLastProgress:I

    .line 452
    iput-object p2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    .line 453
    invoke-static {p2}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    .line 454
    iput-object p3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    .line 455
    iput-object p4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->bundle:Landroid/os/Bundle;

    .line 456
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 439
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 439
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    return-object v0
.end method

.method private notifyFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 494
    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 495
    .local v0, status:I
    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;
    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->access$1000(Lco/vine/android/service/VineUploadService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {v2}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-ne v0, v3, :cond_1

    .line 496
    :cond_0
    if-ne v0, v3, :cond_1

    .line 497
    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lco/vine/android/service/VineUploadService;->access$200(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 500
    :cond_1
    return-void
.end method

.method private onComplete()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mLock:[I
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$500(Lco/vine/android/service/VineUploadService;)[I

    move-result-object v1

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    invoke-static {v0, v2}, Lco/vine/android/service/VineUploadService;->access$602(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    .line 480
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {v2}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    #calls: Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lco/vine/android/service/VineUploadService;->access$700(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/service/VineUploadService;->mCurrentThumbnail:Ljava/lang/String;
    invoke-static {v0, v2}, Lco/vine/android/service/VineUploadService;->access$802(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 505
    :try_start_0
    const-string v4, "bPost"

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lco/vine/android/service/VineUploadService;->updatePostProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v4, "Posting...."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/vine/android/util/UploadManager;->getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v1

    .line 509
    .local v1, info:Lco/vine/android/util/UploadManager$PostInfo;
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v7, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v7}, Lco/vine/android/service/VineUploadService;->access$1100(Lco/vine/android/service/VineUploadService;)Lco/vine/android/client/AppController;

    move-result-object v7

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v1}, Lco/vine/android/util/UploadManager;->post(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/client/Session;Lco/vine/android/util/UploadManager$PostInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    const-string v4, "Post successful."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 512
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v5, 0x0

    #calls: Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lco/vine/android/service/VineUploadService;->access$700(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 513
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 548
    .end local v1           #info:Lco/vine/android/util/UploadManager$PostInfo;
    :goto_0
    return-object v4

    .line 515
    .restart local v1       #info:Lco/vine/android/util/UploadManager$PostInfo;
    :cond_0
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v5, 0x0

    #calls: Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lco/vine/android/service/VineUploadService;->access$700(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lco/vine/android/service/VineUploadService;->access$200(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 517
    const-string v4, "Current status: {}"

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v5}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v5

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string v4, "Post failed, it was expired? {}"

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v5}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v5

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 521
    .end local v1           #info:Lco/vine/android/util/UploadManager$PostInfo;
    :cond_1
    const-string v4, "aUpload"

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 522
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, toUpload:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mSize:J

    .line 524
    const-string v4, "File to Upload {}, Size {}."

    iget-wide v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-virtual {v4, p0, v5, v6}, Lco/vine/android/util/UploadManager;->upload(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, uris:[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 527
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mLock:[I
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$500(Lco/vine/android/service/VineUploadService;)[I

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lco/vine/android/util/UploadManager;->setUploadTime(Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lco/vine/android/util/UploadManager;->setUris(Ljava/lang/String;[Ljava/lang/String;)V

    .line 530
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :try_start_2
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$1000(Lco/vine/android/service/VineUploadService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 532
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 533
    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lco/vine/android/service/VineUploadService;->updatePostProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 530
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 543
    .end local v2           #toUpload:Ljava/io/File;
    .end local v3           #uris:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Failed to upload."

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->notifyFailed()V

    .line 546
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #toUpload:Ljava/io/File;
    .restart local v3       #uris:[Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->notifyFailed()V

    .line 539
    const-string v4, "Current status: {}"

    iget-object v5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v5}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v5

    iget-object v6, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 548
    .end local v2           #toUpload:Ljava/io/File;
    .end local v3           #uris:[Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 439
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 487
    const-string v0, "Task cancelled. {}, {}."

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onComplete()V

    .line 490
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->executeNext()V
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$400(Lco/vine/android/service/VineUploadService;)V

    .line 491
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "success"

    .prologue
    .line 460
    const-string v0, "Task completed. {}, {}, {}."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "aUpload"

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onUploadSuccessRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onUploadSuccessRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 467
    :cond_0
    const-string v0, "bPost"

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 473
    :cond_1
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onComplete()V

    .line 474
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->executeNext()V
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$400(Lco/vine/android/service/VineUploadService;)V

    .line 475
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 439
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 6
    .parameter "progressEvent"

    .prologue
    .line 557
    iget-wide v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mCurrentSize:J

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransfered()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mCurrentSize:J

    .line 558
    iget-wide v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mCurrentSize:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 559
    .local v0, p:I
    const-string v2, "Progress Changed: {}, {}, {}."

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getEventCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransfered()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 560
    iget v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mLastProgress:I

    if-eq v2, v0, :cond_1

    .line 561
    iput v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mLastProgress:I

    .line 562
    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lco/vine/android/service/VineUploadService;->access$1200(Lco/vine/android/service/VineUploadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mLastProgress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v2}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v1

    .line 564
    .local v1, status:I
    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;
    invoke-static {v2}, Lco/vine/android/service/VineUploadService;->access$1000(Lco/vine/android/service/VineUploadService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {v3}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 566
    :cond_0
    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->updateUploadProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lco/vine/android/service/VineUploadService;->access$1300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v1           #status:I
    :cond_1
    return-void
.end method
