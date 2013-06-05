.class final Lcom/flurry/android/co;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0
    .parameter

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs ar()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2225
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->c(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 2231
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v1}, Lcom/flurry/android/FlurryAds;->c(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2232
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2233
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->c(Ljava/io/DataInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 2241
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2246
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->d(Lcom/flurry/android/FlurryAds;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->c(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 2249
    if-nez v0, :cond_0

    .line 2280
    :cond_0
    :goto_1
    return-object v2

    .line 2235
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2237
    :goto_2
    :try_start_5
    sget-object v3, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v4, "Error when loading persistent freqCap file"

    invoke-static {v3, v4, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2241
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 2277
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2241
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 2260
    :cond_1
    :try_start_8
    iget-object v0, p0, Lcom/flurry/android/co;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapManager;->ap()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 2263
    :catch_2
    move-exception v0

    .line 2265
    :try_start_9
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 2241
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2235
    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2218
    invoke-direct {p0}, Lcom/flurry/android/co;->ar()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
