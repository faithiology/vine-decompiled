.class public Lcom/googlecode/javacpp/CharPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "CharPointer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->allocateArray(I)V
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
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/CharPointer;-><init>(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/CharPointer;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/nio/CharBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 63
    .local v0, array:[C
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->allocateArray(I)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->limit(I)Lcom/googlecode/javacpp/CharPointer;

    .line 68
    .end local v0           #array:[C
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([C)V
    .locals 1
    .parameter "array"

    .prologue
    .line 49
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/CharPointer;-><init>(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;

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
    invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->asBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/CharPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/CharPointer;

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->capacity(I)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public get()C
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->get(I)C

    move-result v0

    return v0
.end method

.method public native get(I)C
.end method

.method public get([C)Lcom/googlecode/javacpp/CharPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/CharPointer;->get([CII)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public native get([CII)Lcom/googlecode/javacpp/CharPointer;
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->getStringChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getStringChars()[C
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    const/16 v4, 0x10

    new-array v0, v4, [C

    .line 102
    .local v0, buffer:[C
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->position()I

    move-result v2

    .line 103
    .local v2, j:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacpp/CharPointer;->get()C

    move-result v4

    aput-char v4, v0, v1

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

    new-array v3, v4, [C

    .line 107
    .local v3, newbuffer:[C
    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v0, v3

    .line 109
    goto :goto_0

    .line 111
    .end local v3           #newbuffer:[C
    :cond_1
    new-array v3, v1, [C

    .line 112
    .restart local v3       #newbuffer:[C
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-object v3
.end method

.method public limit(I)Lcom/googlecode/javacpp/CharPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/CharPointer;

    return-object v0
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->limit(I)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/CharPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/CharPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public put(C)Lcom/googlecode/javacpp/CharPointer;
    .locals 1
    .parameter "c"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/CharPointer;->put(IC)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(IC)Lcom/googlecode/javacpp/CharPointer;
.end method

.method public put([C)Lcom/googlecode/javacpp/CharPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 150
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/CharPointer;->put([CII)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put([CII)Lcom/googlecode/javacpp/CharPointer;
.end method

.method public putString(Ljava/lang/String;)Lcom/googlecode/javacpp/CharPointer;
    .locals 4
    .parameter "s"

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 129
    .local v0, chars:[C
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/CharPointer;->put(IC)Lcom/googlecode/javacpp/CharPointer;

    move-result-object v1

    return-object v1
.end method
