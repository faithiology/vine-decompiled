.class public Lco/vine/android/util/video/VideoCache;
.super Lco/vine/android/util/UrlResourceCache;
.source "VideoCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResourceCache",
        "<",
        "Lco/vine/android/util/video/VideoKey;",
        "Lco/vine/android/util/video/UrlVideo;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final AVG_LOCK:[I = null

.field private static final DISK_CACHE_NAME:Ljava/lang/String; = "videos"

.field private static final INDEX_VIDEO_BYTES:I = 0x0

.field private static final LOCK:[I = null

.field private static final MAX_AVERAGE:I = 0x5

.field private static final MAX_EXTERNAL_DISK_CACHE_SIZE:I = 0x1f400000

.field private static final MAX_INTERNAL_DISK_CACHE_SIZE:I = 0x3200000

.field private static final VALUE_COUNT:I = 0x1

.field private static final VERSION:I = 0x1

.field private static averagePosition:I

.field private static final averages:[I

.field private static hasAveragePositionCycled:Z

.field private static sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

.field private static sIsCacheInitialized:Z


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/util/video/VideoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/util/video/VideoCache;->LOCK:[I

    .line 32
    sput-boolean v1, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/video/VideoCache;->averages:[I

    .line 38
    sput v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    .line 39
    sput-boolean v1, Lco/vine/android/util/video/VideoCache;->hasAveragePositionCycled:Z

    .line 40
    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "maxCacheSize"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lco/vine/android/util/UrlResourceCache;-><init>(Landroid/content/Context;I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method protected static getCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 150
    sget-object v1, Lco/vine/android/util/video/VideoCache;->LOCK:[I

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v0, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentAverageSpeed()I
    .locals 8

    .prologue
    .line 62
    sget-object v7, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I

    monitor-enter v7

    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, total:I
    :try_start_0
    sget-boolean v6, Lco/vine/android/util/video/VideoCache;->hasAveragePositionCycled:Z

    if-eqz v6, :cond_0

    .line 65
    sget-object v0, Lco/vine/android/util/video/VideoCache;->averages:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 66
    .local v4, speed:I
    add-int/2addr v5, v4

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #speed:I
    :cond_0
    sget v6, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    if-nez v6, :cond_1

    .line 70
    const v6, 0x7fffffff

    monitor-exit v7

    .line 76
    :goto_1
    return v6

    .line 72
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v6, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    if-ge v1, v6, :cond_2

    .line 73
    sget-object v6, Lco/vine/android/util/video/VideoCache;->averages:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v1           #i:I
    :cond_2
    div-int/lit8 v6, v5, 0x5

    monitor-exit v7

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
    .locals 8
    .parameter "context"

    .prologue
    .line 126
    sget-object v3, Lco/vine/android/util/video/VideoCache;->LOCK:[I

    monitor-enter v3

    .line 127
    :try_start_0
    sget-boolean v2, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :try_start_1
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 132
    new-instance v2, Ljava/io/File;

    const-string v4, "videos"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0x1f400000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 142
    .end local v0           #cacheDir:Ljava/io/File;
    :goto_0
    :try_start_2
    sput-object v1, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    .line 143
    const/4 v2, 0x1

    sput-boolean v2, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z

    .line 145
    .end local v1           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_0
    sget-object v2, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 136
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v1       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "videos"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0x3200000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 140
    .restart local v1       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static reportAverageSpeed(I)V
    .locals 4
    .parameter "speed"

    .prologue
    .line 50
    sget-object v2, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I

    monitor-enter v2

    .line 51
    :try_start_0
    const-string v1, "Latest download speed: {}"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    sget v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    rem-int/lit8 v0, v1, 0x5

    .line 53
    .local v0, nextPos:I
    sget-object v1, Lco/vine/android/util/video/VideoCache;->averages:[I

    aput p0, v1, v0

    .line 54
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x5

    sput v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    .line 55
    sget v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x1

    sput-boolean v1, Lco/vine/android/util/video/VideoCache;->hasAveragePositionCycled:Z

    .line 58
    :cond_0
    monitor-exit v2

    .line 59
    return-void

    .line 58
    .end local v0           #nextPos:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resetAverageSpeed()V
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I

    monitor-enter v1

    .line 44
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lco/vine/android/util/video/VideoCache;->averagePosition:I

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/util/video/VideoCache;->hasAveragePositionCycled:Z

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lco/vine/android/util/video/VideoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public get(JLco/vine/android/util/video/VideoKey;)Lco/vine/android/util/video/UrlVideo;
    .locals 6
    .parameter "ownerId"
    .parameter "key"

    .prologue
    .line 122
    iget-object v4, p3, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-super/range {v0 .. v5}, Lco/vine/android/util/UrlResourceCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/video/UrlVideo;

    return-object v0
.end method

.method public getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;
    .locals 7
    .parameter "ownerId"
    .parameter "key"
    .parameter "peekOnly"

    .prologue
    .line 103
    iget-object v4, p3, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/video/VideoCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v6

    check-cast v6, Lco/vine/android/util/video/UrlVideo;

    .line 104
    .local v6, video:Lco/vine/android/util/video/UrlVideo;
    if-eqz v6, :cond_0

    .line 105
    iget-object v0, v6, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    check-cast p1, Lco/vine/android/util/video/VideoKey;

    .end local p1
    check-cast p3, Ljava/io/File;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/video/VideoCache;->instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
    .locals 1
    .parameter "key"
    .parameter "url"
    .parameter "file"

    .prologue
    .line 256
    new-instance v0, Lco/vine/android/util/video/UrlVideo;

    invoke-direct {v0, p2, p3}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method protected bridge synthetic loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    check-cast p3, Lco/vine/android/util/video/VideoKey;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/util/video/VideoCache;->loadResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v0

    return-object v0
.end method

.method protected loadResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;)Lco/vine/android/util/video/UrlVideo;
    .locals 7
    .parameter "ownerId"
    .parameter "key"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-static {p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, diskCacheKey:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-object v3

    .line 183
    :cond_0
    const/4 v2, 0x0

    .line 184
    .local v2, snapshot:Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    sget-object v4, Lco/vine/android/util/video/VideoCache;->LOCK:[I

    monitor-enter v4

    .line 185
    :try_start_0
    iget-object v5, p0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lco/vine/android/util/video/VideoCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v0

    .line 186
    .local v0, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 188
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 189
    if-nez v2, :cond_1

    .line 195
    :try_start_2
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v4

    goto :goto_0

    .line 198
    .end local v0           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 192
    .restart local v0       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4, v5}, Lco/vine/android/util/video/VideoCache;->instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 195
    :try_start_4
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v4

    goto :goto_0

    .line 193
    :catch_0
    move-exception v5

    .line 195
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 195
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected bridge synthetic obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    check-cast p1, Lco/vine/android/util/video/VideoKey;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v0

    return-object v0
.end method

.method protected obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
    .locals 16
    .parameter "key"
    .parameter "url"
    .parameter "is"

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lco/vine/android/util/Util;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 278
    .local v2, cacheDir:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 279
    invoke-static/range {p2 .. p2}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, md5:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 281
    const/16 v12, 0xa

    invoke-static {v12}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v4, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 289
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 290
    .local v8, startTime:J
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x1000

    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v0, v7, v12}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 292
    .local v1, bytesLen:I
    if-nez v1, :cond_2

    .line 293
    const/4 v12, 0x0

    .line 306
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 308
    .end local v1           #bytesLen:I
    .end local v4           #f:Ljava/io/File;
    .end local v5           #md5:Ljava/lang/String;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v8           #startTime:J
    :goto_0
    return-object v12

    .line 285
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 295
    .restart local v1       #bytesLen:I
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #md5:Ljava/lang/String;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #startTime:J
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    const-wide/16 v14, 0x3e8

    div-long v10, v12, v14

    .line 296
    .local v10, time:J
    if-lez v1, :cond_3

    .line 297
    const-string v12, "Download time: {}."

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    div-int/lit16 v12, v1, 0x400

    int-to-double v12, v12

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Lco/vine/android/util/video/VideoCache;->reportAverageSpeed(I)V

    .line 302
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 306
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 308
    new-instance v12, Lco/vine/android/util/video/UrlVideo;

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v4}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 300
    :cond_3
    :try_start_3
    const-string v12, "Invalid bytesLen or time: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 303
    .end local v1           #bytesLen:I
    .end local v10           #time:J
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 304
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v8           #startTime:J
    .local v3, e:Ljava/io/IOException;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :goto_2
    const/4 v12, 0x0

    .line 306
    invoke-static {v6}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    invoke-static {v6}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v12

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #startTime:J
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 303
    .end local v8           #startTime:J
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method protected onResourceError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 2
    .parameter "key"
    .parameter "result"

    .prologue
    .line 269
    iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 270
    iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/video/VideoListener;

    invoke-interface {v1, p0, p1, p2}, Lco/vine/android/util/video/VideoListener;->onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method protected bridge synthetic onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p1, Lco/vine/android/util/video/VideoKey;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lco/vine/android/util/video/VideoCache;->onResourceError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V

    return-void
.end method

.method protected onResourceLoaded(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, resources:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 263
    iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/video/VideoListener;

    invoke-interface {v1, p0, p1}, Lco/vine/android/util/video/VideoListener;->onVideoPathObtained(Lco/vine/android/util/video/VideoCache;Ljava/util/HashMap;)V

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public peekPath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lco/vine/android/util/UrlResourceCache;->peek(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/video/UrlVideo;

    .line 320
    .local v0, video:Lco/vine/android/util/video/UrlVideo;
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, v0, Lco/vine/android/util/video/UrlVideo;->url:Ljava/lang/String;

    .line 323
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Lco/vine/android/util/video/VideoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 174
    iget-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method protected bridge synthetic saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    move-object v3, p3

    check-cast v3, Lco/vine/android/util/video/VideoKey;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/video/VideoCache;->saveResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v0

    return-object v0
.end method

.method protected saveResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
    .locals 14
    .parameter "ownerId"
    .parameter "key"
    .parameter "url"
    .parameter "is"

    .prologue
    .line 204
    invoke-static/range {p4 .. p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, diskCacheKey:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 206
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v9

    .line 251
    :goto_0
    return-object v9

    .line 208
    :cond_0
    const/4 v6, 0x0

    .line 209
    .local v6, editor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    const/4 v7, 0x0

    .line 210
    .local v7, os:Ljava/io/BufferedOutputStream;
    sget-object v12, Lco/vine/android/util/video/VideoCache;->LOCK:[I

    monitor-enter v12

    .line 211
    :try_start_0
    iget-object v11, p0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lco/vine/android/util/video/VideoCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v3

    .line 212
    .local v3, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_7

    .line 213
    const/4 v10, 0x0

    .line 215
    .local v10, success:Z
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v6

    .line 216
    if-eqz v6, :cond_3

    .line 217
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v11

    const/16 v13, 0x1000

    invoke-direct {v8, v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 219
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .local v8, os:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v11, Lco/vine/android/util/PipingInputStream;

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v8}, Lco/vine/android/util/PipingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1, v11}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v9

    .line 221
    .local v9, result:Lco/vine/android/util/video/UrlVideo;
    invoke-virtual {v9}, Lco/vine/android/util/video/UrlVideo;->isValid()Z

    move-result v10

    .line 222
    if-eqz v10, :cond_b

    .line 223
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 224
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 225
    const/4 v7, 0x0

    .line 234
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v6, :cond_1

    .line 238
    if-eqz v10, :cond_2

    .line 239
    :try_start_3
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 240
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    :cond_1
    :goto_2
    :try_start_4
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12

    goto :goto_0

    .line 250
    .end local v3           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    .end local v9           #result:Lco/vine/android/util/video/UrlVideo;
    .end local v10           #success:Z
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 242
    .restart local v3       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    .restart local v9       #result:Lco/vine/android/util/video/UrlVideo;
    .restart local v10       #success:Z
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 244
    :catch_0
    move-exception v11

    goto :goto_2

    .line 229
    .end local v9           #result:Lco/vine/android/util/video/UrlVideo;
    :cond_3
    :try_start_6
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v9

    .line 234
    if-eqz v6, :cond_4

    .line 238
    if-eqz v10, :cond_5

    .line 239
    :try_start_7
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 240
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 247
    :cond_4
    :goto_3
    :try_start_8
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 242
    :cond_5
    :try_start_9
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 244
    :catch_1
    move-exception v11

    goto :goto_3

    .line 231
    :catch_2
    move-exception v5

    .line 232
    .local v5, e:Ljava/io/IOException;
    :goto_4
    const/4 v10, 0x0

    .line 234
    if-eqz v6, :cond_6

    .line 238
    if-eqz v10, :cond_8

    .line 239
    :try_start_a
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 240
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 247
    :cond_6
    :goto_5
    :try_start_b
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 250
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #success:Z
    :cond_7
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 251
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;

    move-result-object v9

    goto/16 :goto_0

    .line 242
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v10       #success:Z
    :cond_8
    :try_start_c
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    .line 244
    :catch_3
    move-exception v11

    goto :goto_5

    .line 234
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    :goto_6
    if-eqz v6, :cond_9

    .line 238
    if-eqz v10, :cond_a

    .line 239
    :try_start_d
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 240
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 247
    :cond_9
    :goto_7
    :try_start_e
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 242
    :cond_a
    :try_start_f
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_7

    .line 244
    :catch_4
    move-exception v13

    goto :goto_7

    .line 234
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 231
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v5

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    .restart local v9       #result:Lco/vine/android/util/video/UrlVideo;
    :cond_b
    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method
