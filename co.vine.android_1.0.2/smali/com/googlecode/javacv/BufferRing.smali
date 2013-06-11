.class public Lcom/googlecode/javacv/BufferRing;
.super Ljava/lang/Object;
.source "BufferRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;,
        Lcom/googlecode/javacv/BufferRing$BufferFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private buffers:[Ljava/lang/Object;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/googlecode/javacv/BufferRing$BufferFactory;I)V
    .locals 3
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/javacv/BufferRing$BufferFactory",
            "<TB;>;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    .local p1, factory:Lcom/googlecode/javacv/BufferRing$BufferFactory;,"Lcom/googlecode/javacv/BufferRing$BufferFactory<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 31
    iget-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    invoke-interface {p1}, Lcom/googlecode/javacv/BufferRing$BufferFactory;->create()Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/javacv/BufferRing;->position:I

    .line 34
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public get()Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    iget v1, p0, Lcom/googlecode/javacv/BufferRing;->position:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;

    return-object v0
.end method

.method public get(I)Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;
    .locals 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    iget v1, p0, Lcom/googlecode/javacv/BufferRing;->position:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;

    return-object v0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    iget v0, p0, Lcom/googlecode/javacv/BufferRing;->position:I

    return v0
.end method

.method public position(I)Lcom/googlecode/javacv/BufferRing;
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/googlecode/javacv/BufferRing;->position:I

    .line 56
    return-object p0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 71
    .local p0, this:Lcom/googlecode/javacv/BufferRing;,"Lcom/googlecode/javacv/BufferRing<TB;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;

    invoke-interface {v1}, Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;->release()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/BufferRing;->buffers:[Ljava/lang/Object;

    .line 75
    return-void
.end method
