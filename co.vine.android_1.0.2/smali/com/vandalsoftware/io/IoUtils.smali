.class public final Lcom/vandalsoftware/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .parameter "socket"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 12
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 94
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not a directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v2, dirs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, emptyDirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 100
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 101
    .local v1, d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 102
    .local v5, fs:[Ljava/io/File;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v4, v0, v7

    .line 103
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v4}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V

    goto :goto_2

    .line 109
    .end local v4           #f:Ljava/io/File;
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #d:Ljava/io/File;
    .end local v5           #fs:[Ljava/io/File;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, i:I
    :goto_3
    if-ltz v6, :cond_4

    .line 112
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 113
    .restart local v1       #d:Ljava/io/File;
    invoke-static {v1}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V

    .line 111
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 115
    .end local v1           #d:Ljava/io/File;
    :cond_4
    return-void
.end method

.method public static deleteFileOrThrow(Ljava/io/File;)V
    .locals 3
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method public static readFileAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/vandalsoftware/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vandalsoftware/io/UnsafeByteSequence;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;
    .locals 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v3, 0x0

    .line 74
    .local v3, f:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .end local v3           #f:Ljava/io/RandomAccessFile;
    .local v4, f:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Lcom/vandalsoftware/io/UnsafeByteSequence;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v2, v5}, Lcom/vandalsoftware/io/UnsafeByteSequence;-><init>(I)V

    .line 76
    .local v2, bytes:Lcom/vandalsoftware/io/UnsafeByteSequence;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 78
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 79
    .local v1, byteCount:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 85
    invoke-static {v4}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 82
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v5, v1}, Lcom/vandalsoftware/io/UnsafeByteSequence;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #buffer:[B
    .end local v1           #byteCount:I
    .end local v2           #bytes:Lcom/vandalsoftware/io/UnsafeByteSequence;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4           #f:Ljava/io/RandomAccessFile;
    .restart local v3       #f:Ljava/io/RandomAccessFile;
    :goto_1
    invoke-static {v3}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/vandalsoftware/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/UnsafeByteSequence;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not renamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method
