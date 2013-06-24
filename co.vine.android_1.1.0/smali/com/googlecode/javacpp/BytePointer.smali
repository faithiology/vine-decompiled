.class public Lcom/googlecode/javacpp/BytePointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "BytePointer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->allocateArray(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No native JavaCPP library in memory. (Has Loader.load() been called?)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/javacpp/BytePointer;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 79
    .local v0, array:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->allocateArray(I)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->limit(I)Lcom/googlecode/javacpp/BytePointer;

    .line 84
    .end local v0           #array:[B
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([B)V
    .locals 1
    .parameter "array"

    .prologue
    .line 65
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;

    .line 67
    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/BytePointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BytePointer;

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public get()B
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->get(I)B

    move-result v0

    return v0
.end method

.method public native get(I)B
.end method

.method public get([B)Lcom/googlecode/javacpp/BytePointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 197
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/BytePointer;->get([BII)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public native get([BII)Lcom/googlecode/javacpp/BytePointer;
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->getStringBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->getStringBytes()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getStringBytes()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 118
    .local v0, buffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v2

    .line 119
    .local v2, j:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacpp/BytePointer;->get()B

    move-result v4

    aput-byte v4, v0, v1

    if-eqz v4, :cond_1

    .line 120
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 121
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 122
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 123
    .local v3, newbuffer:[B
    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    move-object v0, v3

    .line 125
    goto :goto_0

    .line 127
    .end local v3           #newbuffer:[B
    :cond_1
    new-array v3, v1, [B

    .line 128
    .restart local v3       #newbuffer:[B
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v3
.end method

.method public limit(I)Lcom/googlecode/javacpp/BytePointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BytePointer;

    return-object v0
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->limit(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/BytePointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BytePointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public put(B)Lcom/googlecode/javacpp/BytePointer;
    .locals 1
    .parameter "b"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(IB)Lcom/googlecode/javacpp/BytePointer;
.end method

.method public put([B)Lcom/googlecode/javacpp/BytePointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 199
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/BytePointer;->put([BII)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public native put([BII)Lcom/googlecode/javacpp/BytePointer;
.end method

.method public putString(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
    .locals 4
    .parameter "s"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 178
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    return-object v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
    .locals 4
    .parameter "s"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;

    .line 165
    return-object p0
.end method
