.class final Lcom/flurry/android/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dO:I

.field private dP:Ljava/lang/String;

.field private dQ:Ljava/util/Map;
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

.field private dR:J

.field private dS:Z

.field private dT:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/flurry/android/bs;->dO:I

    .line 21
    iput-object p2, p0, Lcom/flurry/android/bs;->dP:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    .line 23
    iput-wide p4, p0, Lcom/flurry/android/bs;->dR:J

    .line 24
    iput-boolean p6, p0, Lcom/flurry/android/bs;->dS:Z

    .line 25
    return-void
.end method


# virtual methods
.method public final c(J)V
    .locals 4
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/flurry/android/bs;->dR:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/flurry/android/bs;->dT:J

    .line 40
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ended event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/bs;->dP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/bs;->dR:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/bs;->dT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final d(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    .line 65
    :cond_1
    return-void

    .line 52
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    iget-object v2, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public final getBytes()[B
    .locals 5

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    iget v0, p0, Lcom/flurry/android/bs;->dO:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    iget-object v0, p0, Lcom/flurry/android/bs;->dP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/flurry/android/bs;->dR:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lcom/flurry/android/bs;->dT:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 110
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 112
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 121
    invoke-static {v2}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    .line 124
    :goto_0
    return-object v0

    .line 100
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 101
    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/bd;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/bd;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const/4 v0, 0x0

    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 117
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/bs;->dQ:Ljava/util/Map;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/flurry/android/bs;->dS:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/android/bs;->dT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bs;->dP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
