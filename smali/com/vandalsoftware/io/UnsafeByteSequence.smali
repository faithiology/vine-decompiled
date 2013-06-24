.class public Lcom/vandalsoftware/io/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "UnsafeByteSequence.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    .line 35
    return-void
.end method


# virtual methods
.method public rewind()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    .line 47
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    new-array v0, v1, [B

    .line 73
    .local v0, result:[B
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "encoding"

    .prologue
    const/4 v5, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v3, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-direct {v1, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 61
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 62
    .local v0, newBytes:[B
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    .line 65
    .end local v0           #newBytes:[B
    :cond_0
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 66
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 50
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 51
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 52
    .local v0, newBytes:[B
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    .line 55
    .end local v0           #newBytes:[B
    :cond_0
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    .line 57
    return-void
.end method
