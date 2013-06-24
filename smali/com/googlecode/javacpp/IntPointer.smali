.class public Lcom/googlecode/javacpp/IntPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "IntPointer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->allocateArray(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
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
    .line 82
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/IntPointer;-><init>(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/IntPointer;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    .line 63
    .local v0, array:[I
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/googlecode/javacpp/IntPointer;->allocateArray(I)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/IntPointer;->put([I)Lcom/googlecode/javacpp/IntPointer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/IntPointer;->position(I)Lcom/googlecode/javacpp/IntPointer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/IntPointer;->limit(I)Lcom/googlecode/javacpp/IntPointer;

    .line 68
    .end local v0           #array:[I
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 49
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/IntPointer;-><init>(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->put([I)Lcom/googlecode/javacpp/IntPointer;

    .line 51
    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/googlecode/javacpp/IntPointer;->asBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/googlecode/javacpp/IntPointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/IntPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/IntPointer;

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->capacity(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/IntPointer;->get(I)I

    move-result v0

    return v0
.end method

.method public native get(I)I
.end method

.method public get([I)Lcom/googlecode/javacpp/IntPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 152
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/IntPointer;->get([III)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public native get([III)Lcom/googlecode/javacpp/IntPointer;
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/googlecode/javacpp/IntPointer;->getStringCodePoints()[I

    move-result-object v0

    .line 118
    .local v0, codePoints:[I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([III)V

    return-object v1
.end method

.method public getStringCodePoints()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    const/16 v4, 0x10

    new-array v0, v4, [I

    .line 102
    .local v0, buffer:[I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/googlecode/javacpp/IntPointer;->position()I

    move-result v2

    .line 103
    .local v2, j:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/IntPointer;->position(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacpp/IntPointer;->get()I

    move-result v4

    aput v4, v0, v1

    if-eqz v4, :cond_1

    .line 104
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 105
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 106
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [I

    .line 107
    .local v3, newbuffer:[I
    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v0, v3

    .line 109
    goto :goto_0

    .line 111
    .end local v3           #newbuffer:[I
    :cond_1
    new-array v3, v1, [I

    .line 112
    .restart local v3       #newbuffer:[I
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-object v3
.end method

.method public limit(I)Lcom/googlecode/javacpp/IntPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/IntPointer;

    return-object v0
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->limit(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/IntPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/IntPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/IntPointer;->position(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public put(I)Lcom/googlecode/javacpp/IntPointer;
    .locals 1
    .parameter "j"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/IntPointer;->put(II)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(II)Lcom/googlecode/javacpp/IntPointer;
.end method

.method public put([I)Lcom/googlecode/javacpp/IntPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 154
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/IntPointer;->put([III)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put([III)Lcom/googlecode/javacpp/IntPointer;
.end method

.method public putString(Ljava/lang/String;)Lcom/googlecode/javacpp/IntPointer;
    .locals 5
    .parameter "s"

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [I

    .line 130
    .local v0, codePoints:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/IntPointer;->put([I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacpp/IntPointer;->put(II)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v2

    return-object v2
.end method
