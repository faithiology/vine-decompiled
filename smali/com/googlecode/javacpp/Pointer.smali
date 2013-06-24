.class public Lcom/googlecode/javacpp/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Pointer$DeallocatorReference;,
        Lcom/googlecode/javacpp/Pointer$NativeDeallocator;,
        Lcom/googlecode/javacpp/Pointer$CustomDeallocator;,
        Lcom/googlecode/javacpp/Pointer$Deallocator;
    }
.end annotation


# static fields
.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected address:J

.field protected capacity:I

.field private deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

.field protected limit:I

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 279
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 281
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 283
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 279
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 281
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 283
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-wide v0, p1, Lcom/googlecode/javacpp/Pointer;->address:J

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 82
    iget v0, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 83
    iget v0, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 84
    iget v0, p1, Lcom/googlecode/javacpp/Pointer;->capacity:I

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 85
    iget-object v0, p1, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/googlecode/javacpp/Pointer$1;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$1;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 89
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 279
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 281
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 283
    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;->allocate(Ljava/nio/Buffer;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 103
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 105
    new-instance v0, Lcom/googlecode/javacpp/Pointer$2;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$2;-><init>(Lcom/googlecode/javacpp/Pointer;Ljava/nio/Buffer;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 107
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private native allocate(Ljava/nio/Buffer;)V
.end method

.method private native asDirectBuffer()Ljava/nio/ByteBuffer;
.end method

.method public static deallocateReferences()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, r:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    :goto_0
    sget-object v1, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0           #r:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    check-cast v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .restart local v0       #r:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->clear()V

    .line 272
    invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->remove()V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public static native memchr(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native memcmp(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)I
.end method

.method public static native memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native memmove(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native memset(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method protected static withDeallocator(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(TP;)TP;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, p:Lcom/googlecode/javacpp/Pointer;,"TP;"
    new-instance v0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;

    invoke-direct {v0, p0}, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 425
    :goto_0
    return-object v2

    .line 414
    :cond_0
    iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    iget v5, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    if-ge v4, v5, :cond_1

    .line 415
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "limit < position: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I

    move-result v3

    .line 418
    .local v3, valueSize:I
    iget v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 419
    .local v1, arrayPosition:I
    iget v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 420
    .local v0, arrayLimit:I
    mul-int v4, v3, v1

    iput v4, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 421
    if-gtz v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    :goto_1
    mul-int/2addr v4, v3

    iput v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 422
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;->asDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 423
    .local v2, b:Ljava/nio/ByteBuffer;
    iput v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 424
    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    goto :goto_0

    .end local v2           #b:Ljava/nio/ByteBuffer;
    :cond_2
    move v4, v0

    .line 421
    goto :goto_1
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    return v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 0
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(I)TP;"
        }
    .end annotation

    .prologue
    .line 340
    iput p1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 341
    iput p1, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 342
    return-object p0
.end method

.method public deallocate()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    invoke-interface {v0}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V

    .line 376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 377
    return-void
.end method

.method protected deallocator()Lcom/googlecode/javacpp/Pointer$Deallocator;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    return-object v0
.end method

.method protected deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
    .locals 3
    .parameter "deallocator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(",
            "Lcom/googlecode/javacpp/Pointer$Deallocator;",
            ")TP;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    invoke-interface {v1}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V

    .line 360
    iput-object v2, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 362
    :cond_0
    invoke-static {}, Lcom/googlecode/javacpp/Pointer;->deallocateReferences()V

    .line 363
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    iput-object p1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 365
    instance-of v1, p1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .end local p1
    move-object v0, p1

    .line 368
    .local v0, r:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    :goto_0
    invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->add()V

    .line 370
    .end local v0           #r:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    :cond_1
    return-object p0

    .line 365
    .restart local p1
    :cond_2
    new-instance v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 503
    if-nez p1, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z

    move-result v1

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 508
    check-cast v0, Lcom/googlecode/javacpp/Pointer;

    .line 509
    .local v0, other:Lcom/googlecode/javacpp/Pointer;
    iget-wide v2, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    iget-wide v4, v0, Lcom/googlecode/javacpp/Pointer;->address:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    iget v3, v0, Lcom/googlecode/javacpp/Pointer;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fill(I)Lcom/googlecode/javacpp/Pointer;
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(I)TP;"
        }
    .end annotation

    .prologue
    .line 481
    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    if-ge v2, v3, :cond_0

    .line 482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limit < position: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I

    move-result v1

    .line 485
    .local v1, size:I
    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    mul-int v0, v1, v2

    .line 486
    .local v0, length:I
    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 487
    int-to-long v2, v0

    invoke-static {p0, p1, v2, v3}, Lcom/googlecode/javacpp/Pointer;->memset(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;

    .line 488
    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    div-int/2addr v2, v1

    iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 489
    return-object p0

    .line 485
    .end local v0           #length:I
    :cond_1
    iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    long-to-int v0, v0

    return v0
.end method

.method init(JIJ)V
    .locals 1
    .parameter "allocatedAddress"
    .parameter "allocatedCapacity"
    .parameter "deallocatorAddress"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 121
    iput p3, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 122
    iput p3, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    .line 123
    new-instance v0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;

    invoke-direct {v0, p0, p4, p5}, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;-><init>(Lcom/googlecode/javacpp/Pointer;J)V

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 124
    return-void
.end method

.method public isNull()Z
    .locals 4

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    return v0
.end method

.method public limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 0
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(I)TP;"
        }
    .end annotation

    .prologue
    .line 324
    iput p1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    .line 325
    return-object p0
.end method

.method public offsetof(Ljava/lang/String;)I
    .locals 3
    .parameter "member"

    .prologue
    .line 381
    const/4 v1, -0x1

    .line 383
    .local v1, offset:I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 384
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    const-class v2, Lcom/googlecode/javacpp/Pointer;

    if-eq v0, v2, :cond_0

    .line 385
    invoke-static {v0, p1}, Lcom/googlecode/javacpp/Loader;->offsetof(Ljava/lang/Class;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 388
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    :cond_0
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    return v0
.end method

.method public position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 0
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(I)TP;"
        }
    .end annotation

    .prologue
    .line 308
    iput p1, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 309
    return-object p0
.end method

.method public put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
    .locals 6
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">(",
            "Lcom/googlecode/javacpp/Pointer;",
            ")TP;"
        }
    .end annotation

    .prologue
    .line 458
    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    if-lez v3, :cond_0

    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    iget v4, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    if-ge v3, v4, :cond_0

    .line 459
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limit < position: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I

    move-result v2

    .line 462
    .local v2, size:I
    invoke-virtual {p1}, Lcom/googlecode/javacpp/Pointer;->sizeof()I

    move-result v1

    .line 463
    .local v1, psize:I
    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    mul-int v0, v1, v3

    .line 464
    .local v0, length:I
    iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 465
    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    mul-int/2addr v3, v1

    iput v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 466
    int-to-long v3, v0

    invoke-static {p0, p1, v3, v4}, Lcom/googlecode/javacpp/Pointer;->memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;

    .line 467
    iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    div-int/2addr v3, v2

    iput v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 468
    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    div-int/2addr v3, v1

    iput v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    .line 469
    return-object p0

    .line 463
    .end local v0           #length:I
    :cond_1
    iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I

    iget v4, p1, Lcom/googlecode/javacpp/Pointer;->position:I

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method public setNull()V
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    .line 294
    return-void
.end method

.method public sizeof()I
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, c:Ljava/lang/Class;
    const-class v1, Lcom/googlecode/javacpp/Pointer;

    if-eq v0, v1, :cond_0

    const-class v1, Lcom/googlecode/javacpp/BytePointer;

    if-ne v0, v1, :cond_1

    .line 396
    :cond_0
    const/4 v1, 0x1

    .line 398
    :goto_0
    return v1

    :cond_1
    const-string v1, "sizeof"

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/Pointer;->offsetof(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[address=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/javacpp/Pointer;->address:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deallocator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zero()Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/googlecode/javacpp/Pointer;",
            ">()TP;"
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->fill(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method
