.class public Lco/vine/android/util/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/UploadManager$PostInfo;
    }
.end annotation


# static fields
.field private static final EXPIRE_TIME:J = 0x5265c00L

.field private static final SHARED_LOCK:[I = null

.field public static final STATUS_INVALID:I = -0x1

.field public static final STATUS_NEED_POST:I = 0x1

.field public static final STATUS_NEED_UPLOAD:I = 0x0

.field private static final SUB_PREF_HASH:Ljava/lang/String; = "_hash.sub"

.field private static final SUB_PREF_POST:Ljava/lang/String; = "_post.sub"

.field private static final SUB_PREF_THUMBNAIL:Ljava/lang/String; = "_thumbnail_url.sub"

.field private static final SUB_PREF_VIDEO:Ljava/lang/String; = "_video_url.sub"

.field private static final SUB_UPLOAD_TIME:Ljava/lang/String; = "_upload_time.sub"


# instance fields
.field private final mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

.field private final mUploadPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lco/vine/android/util/AmazonS3Utility;

    invoke-direct {v0}, Lco/vine/android/util/AmazonS3Utility;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    .line 79
    const-string v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    .line 80
    return-void
.end method

.method public static addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "file"
    .parameter "thumbnail"
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v2, v3}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, videoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p2, v2}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, p2}, Lco/vine/android/service/VineUploadService;->getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-object v0
.end method

.method public static removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 83
    invoke-static {p0, p1}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method


# virtual methods
.method public addToPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"
    .parameter "hash"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 99
    const-string v0, "Added to preference: {}. "

    invoke-static {v0, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash.sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 356
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllPaths()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 304
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPendingPaths()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    sget-object v6, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v6

    .line 251
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v3, pendingPaths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 253
    .local v0, all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    const-string v5, "Key: {}"

    invoke-static {v5, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v4

    .line 257
    .local v4, status:I
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 262
    :goto_1
    :pswitch_0
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    .end local v0           #all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #pendingPaths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #status:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 260
    .restart local v0       #all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #pendingPaths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #status:I
    :pswitch_1
    :try_start_1
    const-string v5, "aUpload"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_1
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 271
    :pswitch_2
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :pswitch_3
    const-string v5, "File does not exist any more (uploaded)."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 268
    const-string v5, "bPost"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #status:I
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 265
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-object v2, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v3, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_post.sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, info:Ljava/lang/String;
    const-string v3, "Post info: {}."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    if-nez v0, :cond_0

    .line 334
    monitor-exit v2

    .line 336
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lco/vine/android/util/UploadManager$PostInfo;->fromJsonString(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 338
    .end local v0           #info:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 316
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUris(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 349
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 350
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_video_url.sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_thumbnail_url.sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    monitor-exit v1

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 282
    sget-object v4, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v4

    .line 283
    :try_start_0
    iget-object v5, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 284
    .local v0, all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    :cond_0
    monitor-exit v4

    .line 292
    :goto_0
    return v3

    .line 287
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 294
    .end local v0           #all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 292
    .restart local v0       #all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 241
    const-string v0, ".sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadExpired(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_upload_time.sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized post(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/client/Session;Lco/vine/android/util/UploadManager$PostInfo;)Z
    .locals 25
    .parameter "context"
    .parameter "path"
    .parameter "activeSession"
    .parameter "info"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v4

    .line 133
    .local v4, api:Lco/vine/android/client/VineAPI;
    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "posts"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    .local v3, url:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lco/vine/android/util/UploadManager;->getUris(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 138
    .local v23, uris:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 140
    .local v22, prefix:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "videoUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v23, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "thumbnailUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v23, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "model"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "device"

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "version"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_0
    if-eqz p4, :cond_0

    .line 152
    :try_start_2
    move-object/from16 v0, p4

    iget-object v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    iget-object v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 153
    const-string v9, "Added description: {}."

    move-object/from16 v0, p4

    iget-object v10, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "description"

    move-object/from16 v0, p4

    iget-object v11, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-static {v11}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_1
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "postToTwitter"

    move-object/from16 v0, p4

    iget-boolean v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    if-eqz v9, :cond_3

    const-string v9, "1"

    :goto_2
    invoke-direct {v10, v11, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    const/16 v9, 0xc

    invoke-static {v9}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v6

    .line 164
    .local v6, vp:Lco/vine/android/api/VineParserReader;
    const-string v9, "Prefix {}"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v9, "Adding URI Params: {}, {}."

    const/4 v10, 0x0

    aget-object v10, v23, v10

    const/4 v11, 0x1

    aget-object v11, v23, v11

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-static/range {p1 .. p1}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v2

    .line 167
    .local v2, client:Lco/vine/android/network/ThreadedHttpOperationClient;
    invoke-virtual/range {p3 .. p3}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, key:Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v9

    invoke-virtual {v9}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v20

    .line 170
    .local v20, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 171
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lco/vine/android/api/VinePostResponse;

    .line 172
    .local v24, vpr:Lco/vine/android/api/VinePostResponse;
    if-eqz v24, :cond_1

    .line 173
    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "timelines"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "posts"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, v24

    iget-wide v12, v0, Lco/vine/android/api/VinePostResponse;->postId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 175
    .local v19, getPostUrl:Ljava/lang/StringBuilder;
    const/16 v9, 0x8

    invoke-static {v9}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v6

    .line 176
    move-object/from16 v0, v19

    invoke-static {v2, v0, v4, v6, v7}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v9

    invoke-virtual {v9}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v20

    .line 178
    invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 179
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lco/vine/android/api/VinePagedData;

    .line 180
    .local v21, posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v9, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 181
    invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 183
    .local v8, db:Lco/vine/android/provider/VineDatabaseHelper;
    :try_start_3
    move-object/from16 v0, v21

    iget-object v9, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual/range {p3 .. p3}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIJZ)Lco/vine/android/provider/DbResponse;

    .line 185
    move-object/from16 v0, v21

    iget-object v9, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual/range {p3 .. p3}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIJZ)Lco/vine/android/provider/DbResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    .end local v8           #db:Lco/vine/android/provider/VineDatabaseHelper;
    .end local v19           #getPostUrl:Ljava/lang/StringBuilder;
    .end local v21           #posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :cond_1
    :goto_3
    const/4 v9, 0x1

    .line 205
    .end local v24           #vpr:Lco/vine/android/api/VinePostResponse;
    :goto_4
    monitor-exit p0

    return v9

    .line 156
    .end local v2           #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    .end local v6           #vp:Lco/vine/android/api/VineParserReader;
    .end local v7           #key:Ljava/lang/String;
    .end local v20           #op:Lco/vine/android/network/HttpOperation;
    :cond_2
    :try_start_4
    const-string v9, "empty description."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 132
    .end local v3           #url:Ljava/lang/StringBuilder;
    .end local v4           #api:Lco/vine/android/client/VineAPI;
    .end local v5           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v22           #prefix:Ljava/lang/String;
    .end local v23           #uris:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 158
    .restart local v3       #url:Ljava/lang/StringBuilder;
    .restart local v4       #api:Lco/vine/android/client/VineAPI;
    .restart local v5       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v22       #prefix:Ljava/lang/String;
    .restart local v23       #uris:[Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v9, "0"

    goto/16 :goto_2

    .line 187
    .restart local v2       #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    .restart local v6       #vp:Lco/vine/android/api/VineParserReader;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v8       #db:Lco/vine/android/provider/VineDatabaseHelper;
    .restart local v19       #getPostUrl:Ljava/lang/StringBuilder;
    .restart local v20       #op:Lco/vine/android/network/HttpOperation;
    .restart local v21       #posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .restart local v24       #vpr:Lco/vine/android/api/VinePostResponse;
    :catch_0
    move-exception v17

    .line 188
    .local v17, e:Ljava/io/IOException;
    const-string v9, "Error writing uploaded post to db"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 192
    .end local v8           #db:Lco/vine/android/provider/VineDatabaseHelper;
    .end local v17           #e:Ljava/io/IOException;
    .end local v21           #posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :cond_4
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineError;

    .line 193
    .local v18, error:Lco/vine/android/api/VineError;
    const-string v9, "Error retrieving uploaded post from server: {} {}"

    move-object/from16 v0, v20

    iget v10, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 199
    .end local v18           #error:Lco/vine/android/api/VineError;
    .end local v19           #getPostUrl:Ljava/lang/StringBuilder;
    .end local v24           #vpr:Lco/vine/android/api/VinePostResponse;
    :cond_5
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineError;

    .line 200
    .restart local v18       #error:Lco/vine/android/api/VineError;
    if-eqz v20, :cond_6

    if-eqz v18, :cond_6

    .line 201
    const-string v9, "ERROR POSTING: {} {}"

    move-object/from16 v0, v20

    iget v10, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :goto_5
    const/4 v9, 0x0

    goto :goto_4

    .line 203
    :cond_6
    const-string v9, "UNKNOWN ERROR WHILE POSTING."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 147
    .end local v2           #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    .end local v6           #vp:Lco/vine/android/api/VineParserReader;
    .end local v7           #key:Ljava/lang/String;
    .end local v18           #error:Lco/vine/android/api/VineError;
    .end local v20           #op:Lco/vine/android/network/HttpOperation;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public removeFromPreference(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 108
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_video_url.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_thumbnail_url.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_upload_time.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "hash"

    .prologue
    .line 298
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPostInfo(Ljava/lang/String;Lco/vine/android/util/UploadManager$PostInfo;)V
    .locals 4
    .parameter "path"
    .parameter "info"

    .prologue
    .line 322
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lco/vine/android/util/UploadManager$PostInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "path"
    .parameter "status"

    .prologue
    .line 310
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUploadTime(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 121
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_upload_time.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUris(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 342
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_video_url.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_thumbnail_url.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized upload(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "serviceAsyncTask"
    .parameter "path"
    .parameter "thumbnail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    const-string v8, "Files does not exist."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const/4 v8, 0x0

    .line 236
    :goto_0
    monitor-exit p0

    return-object v8

    .line 217
    :cond_0
    :try_start_1
    invoke-static {p2}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, hash:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lco/vine/android/util/UploadManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 219
    const-string v8, "Invalid hash: actual {}, expected {}."

    invoke-static {v8, v5, p2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    const/4 v8, 0x0

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, context:Landroid/content/Context;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd/"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, fileName:Ljava/lang/String;
    iget-object v8, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    invoke-virtual {v8, p1, v2, v0, v3}, Lco/vine/android/util/AmazonS3Utility;->getVideoUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, videoUri:Ljava/lang/String;
    iget-object v8, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, p1, v3, v9, v10}, Lco/vine/android/util/AmazonS3Utility;->getThumbnailUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, thumbnailUrl:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #hash:Ljava/lang/String;
    .end local v6           #thumbnailUrl:Ljava/lang/String;
    .end local v7           #videoUri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "Upload failed: {}"

    invoke-static {v8, p2, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 211
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
