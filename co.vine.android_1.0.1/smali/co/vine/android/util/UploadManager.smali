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
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lco/vine/android/util/AmazonS3Utility;

    invoke-direct {v0}, Lco/vine/android/util/AmazonS3Utility;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    .line 78
    const-string v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    .line 79
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
    .line 86
    invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v2, v3}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 88
    .local v1, videoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p2, v2}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, p2}, Lco/vine/android/service/VineUploadService;->getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    return-object v0
.end method

.method public static removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method


# virtual methods
.method public addToPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"
    .parameter "hash"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 98
    const-string v0, "Added to preference: {}. "

    invoke-static {v0, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
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

    .line 103
    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 346
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
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
    .line 235
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 294
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 295
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

    .line 296
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
    .line 239
    sget-object v6, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v6

    .line 241
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v3, pendingPaths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 243
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

    .line 244
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const-string v5, "Key: {}"

    invoke-static {v5, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v4

    .line 247
    .local v4, status:I
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 252
    :goto_1
    :pswitch_0
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
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

    .line 250
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

    .line 255
    :cond_1
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :pswitch_3
    const-string v5, "File does not exist any more (uploaded)."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 258
    const-string v5, "bPost"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #status:I
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 255
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

    .line 320
    sget-object v2, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v2

    .line 321
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

    .line 322
    .local v0, info:Ljava/lang/String;
    const-string v3, "Post info: {}."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    if-nez v0, :cond_0

    .line 324
    monitor-exit v2

    .line 326
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lco/vine/android/util/UploadManager$PostInfo;->fromJsonString(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 328
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
    .line 306
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 308
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
    .line 339
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 340
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

    .line 342
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

    .line 272
    sget-object v4, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v4

    .line 273
    :try_start_0
    iget-object v5, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 274
    .local v0, all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    :cond_0
    monitor-exit v4

    .line 282
    :goto_0
    return v3

    .line 277
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

    .line 278
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 284
    .end local v0           #all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 282
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
    .line 231
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
    .line 126
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
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v4

    .line 132
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

    .line 134
    .local v3, url:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lco/vine/android/util/UploadManager;->getUris(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 137
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

    .line 139
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

    .line 140
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

    .line 141
    if-eqz p4, :cond_0

    .line 142
    move-object/from16 v0, p4

    iget-object v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    iget-object v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 143
    const-string v9, "Added description: {}."

    move-object/from16 v0, p4

    iget-object v10, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "description"

    move-object/from16 v0, p4

    iget-object v11, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-static {v11}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_0
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "postToTwitter"

    move-object/from16 v0, p4

    iget-boolean v9, v0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    if-eqz v9, :cond_3

    const-string v9, "1"

    :goto_1
    invoke-direct {v10, v11, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    const/16 v9, 0xc

    invoke-static {v9}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v6

    .line 154
    .local v6, vp:Lco/vine/android/api/VineParserReader;
    const-string v9, "Prefix {}"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v9, "Adding URI Params: {}, {}."

    const/4 v10, 0x0

    aget-object v10, v23, v10

    const/4 v11, 0x1

    aget-object v11, v23, v11

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    invoke-static/range {p1 .. p1}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v2

    .line 157
    .local v2, client:Lco/vine/android/network/ThreadedHttpOperationClient;
    invoke-virtual/range {p3 .. p3}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, key:Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v9

    invoke-virtual {v9}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v20

    .line 160
    .local v20, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 161
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lco/vine/android/api/VinePostResponse;

    .line 162
    .local v24, vpr:Lco/vine/android/api/VinePostResponse;
    if-eqz v24, :cond_1

    .line 163
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

    .line 165
    .local v19, getPostUrl:Ljava/lang/StringBuilder;
    const/16 v9, 0x8

    invoke-static {v9}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v6

    .line 166
    move-object/from16 v0, v19

    invoke-static {v2, v0, v4, v6, v7}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v9

    invoke-virtual {v9}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v20

    .line 168
    invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 169
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lco/vine/android/api/VinePagedData;

    .line 170
    .local v21, posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v9, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 171
    invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 173
    .local v8, db:Lco/vine/android/provider/VineDatabaseHelper;
    :try_start_1
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

    .line 175
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    .end local v8           #db:Lco/vine/android/provider/VineDatabaseHelper;
    .end local v19           #getPostUrl:Ljava/lang/StringBuilder;
    .end local v21           #posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :cond_1
    :goto_2
    const/4 v9, 0x1

    .line 195
    .end local v24           #vpr:Lco/vine/android/api/VinePostResponse;
    :goto_3
    monitor-exit p0

    return v9

    .line 146
    .end local v2           #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    .end local v6           #vp:Lco/vine/android/api/VineParserReader;
    .end local v7           #key:Ljava/lang/String;
    .end local v20           #op:Lco/vine/android/network/HttpOperation;
    :cond_2
    :try_start_2
    const-string v9, "empty description."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 131
    .end local v3           #url:Ljava/lang/StringBuilder;
    .end local v4           #api:Lco/vine/android/client/VineAPI;
    .end local v5           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v22           #prefix:Ljava/lang/String;
    .end local v23           #uris:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 148
    .restart local v3       #url:Ljava/lang/StringBuilder;
    .restart local v4       #api:Lco/vine/android/client/VineAPI;
    .restart local v5       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v22       #prefix:Ljava/lang/String;
    .restart local v23       #uris:[Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v9, "0"

    goto/16 :goto_1

    .line 177
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

    .line 178
    .local v17, e:Ljava/io/IOException;
    const-string v9, "Error writing uploaded post to db"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 182
    .end local v8           #db:Lco/vine/android/provider/VineDatabaseHelper;
    .end local v17           #e:Ljava/io/IOException;
    .end local v21           #posts:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :cond_4
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineError;

    .line 183
    .local v18, error:Lco/vine/android/api/VineError;
    const-string v9, "Error retrieving uploaded post from server: {} {}"

    move-object/from16 v0, v20

    iget v10, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 189
    .end local v18           #error:Lco/vine/android/api/VineError;
    .end local v19           #getPostUrl:Ljava/lang/StringBuilder;
    .end local v24           #vpr:Lco/vine/android/api/VinePostResponse;
    :cond_5
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineError;

    .line 190
    .restart local v18       #error:Lco/vine/android/api/VineError;
    if-eqz v20, :cond_6

    if-eqz v18, :cond_6

    .line 191
    const-string v9, "ERROR POSTING: {} {}"

    move-object/from16 v0, v20

    iget v10, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 193
    :cond_6
    const-string v9, "UNKNOWN ERROR WHILE POSTING."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public removeFromPreference(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 107
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 108
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

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
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
    .line 288
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 289
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

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
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
    .line 312
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 313
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

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
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
    .line 300
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
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
    .line 120
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 121
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

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
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
    .line 332
    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    .line 333
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

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
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
    .line 201
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 203
    const-string v8, "Files does not exist."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/4 v8, 0x0

    .line 226
    :goto_0
    monitor-exit p0

    return-object v8

    .line 207
    :cond_0
    :try_start_1
    invoke-static {p2}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, hash:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lco/vine/android/util/UploadManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 209
    const-string v8, "Invalid hash: actual {}, expected {}."

    invoke-static {v8, v5, p2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    const/4 v8, 0x0

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, context:Landroid/content/Context;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd/"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 215
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

    .line 218
    .local v3, fileName:Ljava/lang/String;
    iget-object v8, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    invoke-virtual {v8, p1, v2, v0, v3}, Lco/vine/android/util/AmazonS3Utility;->getVideoUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, videoUri:Ljava/lang/String;
    iget-object v8, p0, Lco/vine/android/util/UploadManager;->mAmazonUtility:Lco/vine/android/util/AmazonS3Utility;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, p1, v3, v9, v10}, Lco/vine/android/util/AmazonS3Utility;->getThumbnailUri(Lcom/amazonaws/services/s3/model/ProgressListener;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 223
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

    .line 224
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #hash:Ljava/lang/String;
    .end local v6           #thumbnailUrl:Ljava/lang/String;
    .end local v7           #videoUri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "Upload failed: {}"

    invoke-static {v8, p2, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 201
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
