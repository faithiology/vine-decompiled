.class public Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# static fields
.field public static LARGE_SIZE_LIMIT:I

.field public static MEDIUM_SIZE_LIMIT:I

.field public static SMALL_SIZE_LIMIT:I


# instance fields
.field largeByteBuffer:[B

.field largeCharBuffer:[C

.field mediumByteBuffer:[B

.field mediumCharBuffer:[C

.field smallByteBuffer:[B

.field smallCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x80

    sput v0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    .line 52
    const/16 v0, 0x800

    sput v0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    .line 53
    const/16 v0, 0x2000

    sput v0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public getByteBuffer(I)[B
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 101
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt p1, v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    .line 103
    .local v0, buffer:[B
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    .line 116
    .end local v0           #buffer:[B
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt p1, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    .line 108
    .restart local v0       #buffer:[B
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    goto :goto_0

    .line 111
    .end local v0           #buffer:[B
    :cond_1
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt p1, v2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    .line 113
    .restart local v0       #buffer:[B
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    goto :goto_0

    .end local v0           #buffer:[B
    :cond_2
    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method public getCharBuffer(I)[C
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 67
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt p1, v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    .line 69
    .local v0, buffer:[C
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    .line 82
    .end local v0           #buffer:[C
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt p1, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    .line 74
    .restart local v0       #buffer:[C
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    goto :goto_0

    .line 77
    .end local v0           #buffer:[C
    :cond_1
    sget v2, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt p1, v2, :cond_2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    .line 79
    .restart local v0       #buffer:[C
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    goto :goto_0

    .end local v0           #buffer:[C
    :cond_2
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method public returnByteBuffer([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v0, v1, :cond_2

    .line 124
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    goto :goto_0

    .line 126
    :cond_2
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v0, v1, :cond_3

    .line 127
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    goto :goto_0

    .line 129
    :cond_3
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v0, v1, :cond_0

    .line 130
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    goto :goto_0
.end method

.method public returnCharBuffer([C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v0, v1, :cond_2

    .line 90
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    goto :goto_0

    .line 92
    :cond_2
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v0, v1, :cond_3

    .line 93
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    goto :goto_0

    .line 95
    :cond_3
    array-length v0, p1

    sget v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v0, v1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    goto :goto_0
.end method
