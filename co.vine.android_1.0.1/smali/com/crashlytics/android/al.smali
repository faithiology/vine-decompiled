.class final Lcom/crashlytics/android/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/io/FilenameFilter;

.field private static final c:[S


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/crashlytics/android/Y;

.field private f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/crashlytics/android/am;

    invoke-direct {v0}, Lcom/crashlytics/android/am;-><init>()V

    sput-object v0, Lcom/crashlytics/android/al;->b:Ljava/io/FilenameFilter;

    .line 29
    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/al;->a:Ljava/util/Map;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crashlytics/android/al;->c:[S

    return-void

    :array_0
    .array-data 0x2
        0xat 0x0t
        0x14t 0x0t
        0x1et 0x0t
        0x3ct 0x0t
        0x78t 0x0t
        0x2ct 0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/crashlytics/android/Y;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/al;->d:Ljava/lang/Object;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/crashlytics/android/al;->e:Lcom/crashlytics/android/Y;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/al;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/al;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b()[S
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/crashlytics/android/al;->c:[S

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/ak;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string v1, "Checking for crash reports..."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .line 110
    iget-object v3, p0, Lcom/crashlytics/android/al;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/crashlytics/android/al;->b:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->m()Lcom/crashlytics/android/E;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/E;->b()Ljava/io/File;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    sget-object v1, Lcom/crashlytics/android/n;->a:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    .line 117
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 120
    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found crash report "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 122
    new-instance v7, Lcom/crashlytics/android/ak;

    invoke-direct {v7, v6}, Lcom/crashlytics/android/ak;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 124
    :cond_0
    if-eqz v2, :cond_1

    .line 125
    array-length v1, v2

    :goto_2
    if-ge v0, v1, :cond_1

    aget-object v4, v2, v0

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found invalid crash file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 127
    new-instance v5, Lcom/crashlytics/android/ak;

    sget-object v6, Lcom/crashlytics/android/al;->a:Ljava/util/Map;

    invoke-direct {v5, v4, v6}, Lcom/crashlytics/android/ak;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 132
    const-string v0, "No reports found."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 135
    :cond_2
    return-object v3

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/al;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/an;

    invoke-direct {v1, p0, p1, p2}, Lcom/crashlytics/android/an;-><init>(Lcom/crashlytics/android/al;Landroid/content/Context;F)V

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/al;->f:Ljava/lang/Thread;

    .line 53
    iget-object v0, p0, Lcom/crashlytics/android/al;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/crashlytics/android/ak;)Z
    .locals 6
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    iget-object v2, p0, Lcom/crashlytics/android/al;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/av;->d()Z

    .line 86
    new-instance v1, Lcom/crashlytics/android/X;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/crashlytics/android/X;-><init>(Ljava/lang/String;Lcom/crashlytics/android/ak;)V

    .line 87
    iget-object v3, p0, Lcom/crashlytics/android/al;->e:Lcom/crashlytics/android/Y;

    invoke-interface {v3, v1}, Lcom/crashlytics/android/Y;->a(Lcom/crashlytics/android/X;)Z

    move-result v3

    .line 90
    const-string v4, "Crashlytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics report upload "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string v1, "complete: "

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/crashlytics/android/ak;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/crashlytics/android/ak;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v0, 0x1

    .line 101
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return v0

    .line 90
    :cond_1
    :try_start_2
    const-string v1, "FAILED: "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 99
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred sending report "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
