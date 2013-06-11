.class public Lcom/googlecode/javacpp/PointerPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "PointerPointer.java"


# instance fields
.field private pointerArray:[Lcom/googlecode/javacpp/Pointer;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->allocateArray(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
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
    .line 102
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/javacpp/Pointer;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[B)V
    .locals 1
    .parameter "array"

    .prologue
    .line 46
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[B)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[C)V
    .locals 1
    .parameter "array"

    .prologue
    .line 88
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[C)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[D)V
    .locals 1
    .parameter "array"

    .prologue
    .line 81
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[D)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[F)V
    .locals 1
    .parameter "array"

    .prologue
    .line 74
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[F)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 60
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[I)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[J)V
    .locals 1
    .parameter "array"

    .prologue
    .line 67
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[J)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[S)V
    .locals 1
    .parameter "array"

    .prologue
    .line 53
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[S)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->capacity(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/PointerPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public get()Lcom/googlecode/javacpp/Pointer;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;->get(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public native get(I)Lcom/googlecode/javacpp/Pointer;
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->limit(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/googlecode/javacpp/PointerPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->position(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/PointerPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public bridge synthetic put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
.end method

.method public put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
    .locals 1
    .parameter "p"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public varargs put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 129
    aget-object v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-object p0
.end method

.method public varargs put([[B)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 141
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/BytePointer;-><init>([B)V

    aput-object v2, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[C)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 225
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/CharPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/CharPointer;-><init>([C)V

    aput-object v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[D)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 211
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/DoublePointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/DoublePointer;-><init>([D)V

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[F)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 197
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/FloatPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/FloatPointer;-><init>([F)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[I)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 169
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/IntPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/IntPointer;-><init>([I)V

    aput-object v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[J)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 183
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/LongPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/LongPointer;-><init>([J)V

    aput-object v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[S)Lcom/googlecode/javacpp/PointerPointer;
    .locals 4
    .parameter "array"

    .prologue
    .line 155
    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/ShortPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/ShortPointer;-><init>([S)V

    aput-object v2, v1, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method
