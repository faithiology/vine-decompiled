.class final Lcom/crashlytics/android/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/crashlytics/android/k;


# instance fields
.field private final a:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/crashlytics/android/k;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/k;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/k;->b:Lcom/crashlytics/android/k;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/k;->c:I

    .line 52
    iput-object p1, p0, Lcom/crashlytics/android/k;->a:[B

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crashlytics/android/k;
    .locals 3
    .parameter

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/k;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/k;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/k;
    .locals 2
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/crashlytics/android/k;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/k;-><init>([B)V

    return-object v1
.end method

.method public static a(Ljava/util/List;)Lcom/crashlytics/android/k;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/k;",
            ">;)",
            "Lcom/crashlytics/android/k;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/crashlytics/android/k;->b:Lcom/crashlytics/android/k;

    .line 167
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 154
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/k;

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/k;

    .line 159
    iget-object v0, v0, Lcom/crashlytics/android/k;->a:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 161
    :cond_2
    new-array v3, v1, [B

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/k;

    .line 164
    iget-object v5, v0, Lcom/crashlytics/android/k;->a:[B

    iget-object v6, v0, Lcom/crashlytics/android/k;->a:[B

    array-length v6, v6

    invoke-static {v5, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, v0, Lcom/crashlytics/android/k;->a:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    .line 167
    :cond_3
    new-instance v0, Lcom/crashlytics/android/k;

    invoke-direct {v0, v3}, Lcom/crashlytics/android/k;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final a([BIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    return-void
.end method

.method public final b()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/crashlytics/android/k;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    if-ne p1, p0, :cond_1

    .line 275
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 257
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/crashlytics/android/k;

    if-nez v2, :cond_2

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :cond_2
    check-cast p1, Lcom/crashlytics/android/k;

    .line 262
    .end local p1
    iget-object v2, p0, Lcom/crashlytics/android/k;->a:[B

    array-length v3, v2

    .line 263
    iget-object v2, p1, Lcom/crashlytics/android/k;->a:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    .line 264
    goto :goto_0

    .line 267
    :cond_3
    iget-object v4, p0, Lcom/crashlytics/android/k;->a:[B

    .line 268
    iget-object v5, p1, Lcom/crashlytics/android/k;->a:[B

    move v2, v1

    .line 269
    :goto_1
    if-ge v2, v3, :cond_0

    .line 270
    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    .line 271
    goto :goto_0

    .line 269
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 282
    iget v0, p0, Lcom/crashlytics/android/k;->c:I

    .line 284
    if-nez v0, :cond_2

    .line 285
    iget-object v4, p0, Lcom/crashlytics/android/k;->a:[B

    .line 286
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:[B

    array-length v2, v0

    .line 289
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 292
    :cond_0
    if-nez v0, :cond_1

    .line 293
    const/4 v0, 0x1

    .line 296
    :cond_1
    iput v0, p0, Lcom/crashlytics/android/k;->c:I

    .line 299
    :cond_2
    return v0
.end method
