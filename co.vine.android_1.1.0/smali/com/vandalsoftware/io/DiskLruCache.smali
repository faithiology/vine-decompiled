.class public final Lcom/vandalsoftware/io/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vandalsoftware/io/DiskLruCache$Entry;,
        Lcom/vandalsoftware/io/DiskLruCache$Editor;,
        Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final CLEAN:I = 0x1

.field private static final DIRTY:I = 0x2

.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field private static final MAGIC:J = -0x7eb5b3baf2f5e5f6L

.field private static final READ:I = 0x4

.field private static final REDUNDANT_OP_COMPACT_THRESHOLD:I = 0x7d0

.field private static final REMOVE:I = 0x3

.field private static final VERSION:I = 0x2


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalStream:Ljava/io/DataOutputStream;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vandalsoftware/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 137
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 139
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/vandalsoftware/io/DiskLruCache$1;-><init>(Lcom/vandalsoftware/io/DiskLruCache;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    .line 159
    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    .line 160
    iput p2, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    .line 161
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    .line 162
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 163
    iput p3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    .line 164
    iput-wide p4, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/DataOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vandalsoftware/io/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache;->completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vandalsoftware/io/DiskLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vandalsoftware/io/DiskLruCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vandalsoftware/io/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    .locals 12
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1100(Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Entry;

    move-result-object v2

    .line 452
    .local v2, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 453
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v2           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 457
    .restart local v2       #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 458
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 459
    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 460
    invoke-virtual {p1}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V

    .line 461
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 458
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 467
    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 468
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_4

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 470
    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 471
    .local v0, clean:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/vandalsoftware/io/IoUtils;->renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 472
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 473
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 474
    .local v4, newLength:J
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 475
    iget-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    .line 466
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 478
    :cond_4
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    goto :goto_2

    .line 482
    .end local v1           #dirty:Ljava/io/File;
    :cond_5
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    .line 483
    const/4 v8, 0x0

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    .line 484
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_8

    .line 485
    const/4 v8, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$502(Lcom/vandalsoftware/io/DiskLruCache$Entry;Z)Z

    .line 486
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, v8, v2}, Lcom/vandalsoftware/io/DiskLruCache;->writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V

    .line 492
    :goto_3
    iget-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 493
    :cond_6
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_7
    monitor-exit p0

    return-void

    .line 488
    :cond_8
    :try_start_2
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v9, 0x3

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static deleteIfExists(Ljava/io/File;)Z
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    .locals 9
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    if-gtz p2, :cond_1

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vandalsoftware/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 187
    .local v0, cache:Lcom/vandalsoftware/io/DiskLruCache;
    iget-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    :try_start_0
    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->readJournal()I

    move-result v7

    .line 190
    .local v7, journalEntries:I
    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->processJournal()V

    .line 191
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    .line 193
    iget-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int v1, v7, v1

    iput v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 206
    .end local v0           #cache:Lcom/vandalsoftware/io/DiskLruCache;
    .end local v7           #journalEntries:I
    .local v6, cache:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 195
    .end local v6           #cache:Ljava/lang/Object;
    .restart local v0       #cache:Lcom/vandalsoftware/io/DiskLruCache;
    :catch_0
    move-exception v8

    .line 196
    .local v8, journalIsCorrupt:Ljava/io/IOException;
    const-string v1, "DiskLruCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->delete()V

    .line 203
    .end local v8           #journalIsCorrupt:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :cond_3
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache;

    .end local v0           #cache:Lcom/vandalsoftware/io/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vandalsoftware/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 205
    .restart local v0       #cache:Lcom/vandalsoftware/io/DiskLruCache;
    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 206
    .restart local v6       #cache:Ljava/lang/Object;
    goto :goto_0

    .line 208
    .end local v6           #cache:Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directory not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    .line 295
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/vandalsoftware/io/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 297
    .local v0, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 298
    const/4 v2, 0x0

    .local v2, t:I
    :goto_1
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 299
    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v2           #t:I
    :cond_1
    const/4 v3, 0x0

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    .line 303
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_2
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 304
    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    .line 305
    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 310
    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .end local v2           #t:I
    :cond_3
    return-void
.end method

.method private readJournal()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 227
    .local v4, fileMagic:J
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    .line 228
    .local v7, fileVersion:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 229
    .local v3, fileAppVersion:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 230
    .local v6, fileValueCount:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 231
    .local v0, blank:B
    const-wide v9, -0x7eb5b3baf2f5e5f6L

    cmp-long v9, v9, v4

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne v9, v7, :cond_0

    iget v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    if-ne v9, v3, :cond_0

    iget v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ne v9, v6, :cond_0

    const/16 v9, 0xa

    if-eq v0, v9, :cond_1

    .line 236
    :cond_0
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected journal header: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v0           #blank:B
    .end local v3           #fileAppVersion:I
    .end local v4           #fileMagic:J
    .end local v6           #fileValueCount:I
    .end local v7           #fileVersion:I
    :catchall_0
    move-exception v9

    invoke-static {v8}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 240
    .restart local v0       #blank:B
    .restart local v3       #fileAppVersion:I
    .restart local v4       #fileMagic:J
    .restart local v6       #fileValueCount:I
    .restart local v7       #fileVersion:I
    :cond_1
    const/4 v2, 0x0

    .line 243
    .local v2, entries:I
    :goto_0
    :try_start_1
    invoke-direct {p0, v8}, Lcom/vandalsoftware/io/DiskLruCache;->readJournalLine(Ljava/io/DataInput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 251
    .local v1, endOfJournal:Ljava/io/EOFException;
    invoke-static {v8}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2
.end method

.method private readJournalLine(Ljava/io/DataInput;)V
    .locals 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 256
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 257
    .local v3, op:I
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-ne v5, v7, :cond_1

    .line 259
    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 264
    .local v0, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    if-nez v0, :cond_2

    .line 265
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    .line 266
    .restart local v0       #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_2
    if-ne v3, v10, :cond_5

    .line 270
    iget v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v4, v5, [J

    .line 271
    .local v4, temp:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v1, v5, :cond_3

    .line 272
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-eq v5, v7, :cond_4

    .line 275
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_4
    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v10}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$502(Lcom/vandalsoftware/io/DiskLruCache$Entry;Z)Z

    .line 278
    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    .line 279
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    iget v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    invoke-static {v4, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 280
    .end local v1           #i:I
    .end local v4           #temp:[J
    :cond_5
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-ne v5, v7, :cond_6

    .line 281
    new-instance v5, Lcom/vandalsoftware/io/DiskLruCache$Editor;

    invoke-direct {v5, p0, v0, v8}, Lcom/vandalsoftware/io/DiskLruCache$Editor;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v5}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    goto :goto_0

    .line 282
    :cond_6
    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-eq v5, v7, :cond_0

    .line 285
    :cond_7
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 321
    :cond_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    .local v2, out:Ljava/io/DataOutputStream;
    const-wide v3, -0x7eb5b3baf2f5e5f6L

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 325
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 326
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 327
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 328
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 330
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 331
    .local v0, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 332
    const/4 v3, 0x2

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    .end local v2           #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 334
    .restart local v0       #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_1
    :try_start_3
    invoke-direct {p0, v2, v0}, Lcom/vandalsoftware/io/DiskLruCache;->writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 340
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/vandalsoftware/io/IoUtils;->renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 341
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    .line 343
    const/4 v3, 0x0

    iput v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    :goto_0
    iget-wide v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 580
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 582
    .end local v0           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 594
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    return-void
.end method

.method private writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V
    .locals 6
    .parameter "out"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 354
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 355
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {p2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 356
    .local v2, len:J
    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v2           #len:J
    :cond_0
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 359
    return-void
.end method

.method private writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    .locals 1
    .parameter "out"
    .parameter "s"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 348
    invoke-interface {p1, p3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 349
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 350
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 575
    :goto_0
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 568
    .local v0, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 569
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 564
    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 572
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    .line 573
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 574
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/vandalsoftware/io/DiskLruCache;->close()V

    .line 590
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/vandalsoftware/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 591
    return-void
.end method

.method public declared-synchronized edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    .line 410
    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 412
    .local v1, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    if-nez v1, :cond_1

    .line 413
    new-instance v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .end local v1           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    .line 414
    .restart local v1       #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    .line 420
    .local v0, editor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    .line 423
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v0           #editor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 415
    :cond_1
    :try_start_1
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 409
    .end local v1           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    .line 556
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    .line 557
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 366
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    .line 367
    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 368
    iget-object v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .local v1, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 373
    :cond_1
    :try_start_1
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v4, v7, [Ljava/io/InputStream;

    .line 383
    .local v4, ins:[Ljava/io/InputStream;
    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v5, v7, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .local v5, paths:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_2
    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v7, :cond_2

    .line 387
    invoke-virtual {v1, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 388
    .local v2, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v7, v4, v3

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 391
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 396
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_3
    iget v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    .line 397
    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 402
    :cond_3
    new-instance v6, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;[Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 366
    .end local v1           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .end local v3           #i:I
    .end local v4           #ins:[Ljava/io/InputStream;
    .end local v5           #paths:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    .line 514
    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    .line 516
    .local v0, entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 517
    :cond_0
    const/4 v3, 0x0

    .line 535
    :goto_0
    monitor-exit p0

    return v3

    .line 520
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 521
    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 522
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V

    .line 523
    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    .line 524
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 527
    .end local v1           #file:Ljava/io/File;
    :cond_2
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    .line 528
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 513
    .end local v0           #entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
