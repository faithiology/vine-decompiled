.class public Lco/vine/android/util/image/PhotoImagesCache;
.super Lco/vine/android/util/UrlResourceCache;
.source "PhotoImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResourceCache",
        "<",
        "Lco/vine/android/util/image/ImageKey;",
        "Lco/vine/android/util/image/UrlImage;",
        "Lco/vine/android/util/image/ImageUtils$BitmapInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_NAME:Ljava/lang/String; = "photos"

.field private static final INDEX_IMAGE_BYTES:I = 0x0

.field private static final LOCK:[I = null

.field private static final MAX_EXTERNAL_DISK_CACHE_SIZE:I = 0x6400000

.field private static final MAX_INTERNAL_DISK_CACHE_SIZE:I = 0xa00000

.field private static final VALUE_COUNT:I = 0x1

.field private static final VERSION:I = 0x2

.field private static sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

.field private static sIsCacheInitialized:Z


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/util/image/PhotoImagesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxImageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    .line 51
    sput-boolean v1, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "maxImageSize"
    .parameter "cacheSize"

    .prologue
    .line 62
    invoke-direct {p0, p1, p3}, Lco/vine/android/util/UrlResourceCache;-><init>(Landroid/content/Context;I)V

    .line 63
    iput p2, p0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method static getCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 92
    sget-object v1, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
    .locals 8
    .parameter "context"

    .prologue
    .line 68
    sget-object v3, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v3

    .line 69
    :try_start_0
    sget-boolean v2, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :try_start_1
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 74
    new-instance v2, Ljava/io/File;

    const-string v4, "photos"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/32 v6, 0x6400000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 84
    .end local v0           #cacheDir:Ljava/io/File;
    :goto_0
    :try_start_2
    sput-object v1, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    .line 85
    const/4 v2, 0x1

    sput-boolean v2, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z

    .line 87
    .end local v1           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_0
    sget-object v2, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 78
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v1       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "photos"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_0

    .line 88
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 82
    .restart local v1       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lco/vine/android/util/image/PhotoImagesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public get(JLco/vine/android/util/image/ImageKey;)Lco/vine/android/util/image/UrlImage;
    .locals 6
    .parameter "ownerId"
    .parameter "key"

    .prologue
    .line 149
    iget-object v4, p3, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-super/range {v0 .. v5}, Lco/vine/android/util/UrlResourceCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    return-object v0
.end method

.method public getBitmap(JLco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "ownerId"
    .parameter "key"

    .prologue
    .line 130
    iget-object v4, p3, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/image/PhotoImagesCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v6

    check-cast v6, Lco/vine/android/util/image/UrlImage;

    .line 131
    .local v6, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v6, :cond_0

    .line 132
    iget-object v0, v6, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    .line 134
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
    .line 40
    check-cast p1, Lco/vine/android/util/image/ImageKey;

    .end local p1
    check-cast p3, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;
    .locals 1
    .parameter "key"
    .parameter "url"
    .parameter "b"

    .prologue
    .line 167
    new-instance v0, Lco/vine/android/util/image/UrlImage;

    invoke-direct {v0, p2, p3}, Lco/vine/android/util/image/UrlImage;-><init>(Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)V

    return-object v0
.end method

.method protected bridge synthetic loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    check-cast p3, Lco/vine/android/util/image/ImageKey;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/util/image/PhotoImagesCache;->loadResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected loadResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;)Lco/vine/android/util/image/UrlImage;
    .locals 9
    .parameter "ownerId"
    .parameter "key"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-static {p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, diskCacheKey:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 202
    :goto_0
    return-object v6

    .line 177
    :cond_0
    const/4 v5, 0x0

    .line 178
    .local v5, snapshot:Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    const/4 v4, 0x0

    .line 179
    .local v4, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 180
    .local v0, bis:Ljava/io/BufferedInputStream;
    sget-object v7, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v7

    .line 181
    :try_start_0
    iget-object v8, p0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lco/vine/android/util/image/PhotoImagesCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v2

    .line 182
    .local v2, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    .line 184
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 185
    if-nez v5, :cond_1

    .line 196
    :try_start_2
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7

    goto :goto_0

    .line 201
    .end local v2           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :catchall_0
    move-exception v6

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 188
    .restart local v2       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v8}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 189
    if-nez v4, :cond_2

    .line 196
    :try_start_4
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 192
    :cond_2
    :try_start_5
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_6
    invoke-virtual {p0, p3, p4, v1}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v6

    .line 196
    :try_start_7
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 201
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 194
    :catch_0
    move-exception v8

    .line 196
    :goto_2
    :try_start_8
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 201
    :cond_3
    monitor-exit v7

    goto :goto_0

    .line 196
    :catchall_2
    move-exception v6

    :goto_3
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 194
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method protected bridge synthetic obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    check-cast p1, Lco/vine/android/util/image/ImageKey;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    .locals 3
    .parameter "key"
    .parameter "url"
    .parameter "is"

    .prologue
    .line 262
    iget-boolean v2, p1, Lco/vine/android/util/image/ImageKey;->requestResize:Z

    if-eqz v2, :cond_0

    .line 263
    iget v1, p1, Lco/vine/android/util/image/ImageKey;->width:I

    .line 264
    .local v1, width:I
    iget v0, p1, Lco/vine/android/util/image/ImageKey;->height:I

    .line 269
    .local v0, height:I
    :goto_0
    iget-object v2, p0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v1, v0}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;

    move-result-object v2

    return-object v2

    .line 266
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    .line 267
    .restart local v1       #width:I
    iget v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    .restart local v0       #height:I
    goto :goto_0
.end method

.method protected onResourceError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 163
    return-void
.end method

.method protected bridge synthetic onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Lco/vine/android/util/image/ImageKey;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lco/vine/android/util/image/PhotoImagesCache;->onResourceError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

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
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 156
    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/PhotoImagesListener;

    invoke-interface {v1, p0, p1}, Lco/vine/android/util/image/PhotoImagesListener;->onPhotoImageLoaded(Lco/vine/android/util/image/PhotoImagesCache;Ljava/util/HashMap;)V

    .line 155
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public peekBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lco/vine/android/util/UrlResourceCache;->peek(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    .line 280
    .local v0, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    .line 283
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Lco/vine/android/util/image/PhotoImagesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 116
    iget-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method protected bridge synthetic saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    move-object v3, p3

    check-cast v3, Lco/vine/android/util/image/ImageKey;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/image/PhotoImagesCache;->saveResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected saveResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    .locals 14
    .parameter "ownerId"
    .parameter "key"
    .parameter "url"
    .parameter "is"

    .prologue
    .line 207
    invoke-static/range {p4 .. p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, diskCacheKey:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 209
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    .line 255
    :goto_0
    return-object v9

    .line 212
    :cond_0
    const/4 v6, 0x0

    .line 213
    .local v6, editor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    const/4 v7, 0x0

    .line 214
    .local v7, os:Ljava/io/BufferedOutputStream;
    sget-object v12, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v12

    .line 215
    :try_start_0
    iget-object v11, p0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lco/vine/android/util/image/PhotoImagesCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v3

    .line 216
    .local v3, diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_7

    .line 217
    const/4 v10, 0x0

    .line 219
    .local v10, success:Z
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v6

    .line 220
    if-eqz v6, :cond_3

    .line 221
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v11

    const/16 v13, 0x1000

    invoke-direct {v8, v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 223
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .local v8, os:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v11, Lco/vine/android/util/PipingInputStream;

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v8}, Lco/vine/android/util/PipingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1, v11}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    .line 225
    .local v9, result:Lco/vine/android/util/image/UrlImage;
    invoke-virtual {v9}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v10

    .line 226
    if-eqz v10, :cond_b

    .line 227
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 228
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 229
    const/4 v7, 0x0

    .line 238
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v6, :cond_1

    .line 242
    if-eqz v10, :cond_2

    .line 243
    :try_start_3
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 244
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 251
    :cond_1
    :goto_2
    :try_start_4
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12

    goto :goto_0

    .line 254
    .end local v3           #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    .end local v9           #result:Lco/vine/android/util/image/UrlImage;
    .end local v10           #success:Z
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 246
    .restart local v3       #diskCache:Lcom/vandalsoftware/io/DiskLruCache;
    .restart local v9       #result:Lco/vine/android/util/image/UrlImage;
    .restart local v10       #success:Z
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 248
    :catch_0
    move-exception v11

    goto :goto_2

    .line 233
    .end local v9           #result:Lco/vine/android/util/image/UrlImage;
    :cond_3
    :try_start_6
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v9

    .line 238
    if-eqz v6, :cond_4

    .line 242
    if-eqz v10, :cond_5

    .line 243
    :try_start_7
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 244
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 251
    :cond_4
    :goto_3
    :try_start_8
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 246
    :cond_5
    :try_start_9
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 248
    :catch_1
    move-exception v11

    goto :goto_3

    .line 235
    :catch_2
    move-exception v5

    .line 236
    .local v5, e:Ljava/io/IOException;
    :goto_4
    const/4 v10, 0x0

    .line 238
    if-eqz v6, :cond_6

    .line 242
    if-eqz v10, :cond_8

    .line 243
    :try_start_a
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 244
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 251
    :cond_6
    :goto_5
    :try_start_b
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 254
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #success:Z
    :cond_7
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 255
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    goto/16 :goto_0

    .line 246
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v10       #success:Z
    :cond_8
    :try_start_c
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    .line 248
    :catch_3
    move-exception v11

    goto :goto_5

    .line 238
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    :goto_6
    if-eqz v6, :cond_9

    .line 242
    if-eqz v10, :cond_a

    .line 243
    :try_start_d
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    .line 244
    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 251
    :cond_9
    :goto_7
    :try_start_e
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 246
    :cond_a
    :try_start_f
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_7

    .line 248
    :catch_4
    move-exception v13

    goto :goto_7

    .line 238
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 235
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
    .restart local v9       #result:Lco/vine/android/util/image/UrlImage;
    :cond_b
    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method
