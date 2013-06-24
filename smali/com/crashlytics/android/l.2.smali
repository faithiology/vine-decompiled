.class final Lcom/crashlytics/android/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/crashlytics/android/l;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 30
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    rem-long/2addr v1, v5

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    long-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    aget-byte v4, v3, v7

    aput-byte v4, v0, v7

    aget-byte v4, v3, v8

    aput-byte v4, v0, v8

    aget-byte v4, v3, v9

    aput-byte v4, v0, v9

    aget-byte v3, v3, v10

    aput-byte v3, v0, v10

    invoke-static {v1, v2}, Lcom/crashlytics/android/l;->a(J)[B

    move-result-object v1

    aget-byte v2, v1, v7

    aput-byte v2, v0, v11

    const/4 v2, 0x5

    aget-byte v1, v1, v8

    aput-byte v1, v0, v2

    .line 31
    sget-object v1, Lcom/crashlytics/android/l;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/crashlytics/android/l;->a(J)[B

    move-result-object v1

    const/4 v2, 0x6

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    aget-byte v1, v1, v8

    aput-byte v1, v0, v2

    .line 32
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/crashlytics/android/l;->a(J)[B

    move-result-object v1

    const/16 v2, 0x8

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    const/16 v2, 0x9

    aget-byte v1, v1, v8

    aput-byte v1, v0, v2

    .line 36
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->b()Lcom/crashlytics/android/IdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/IdManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0}, Lcom/crashlytics/android/av;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v2, "%s-%s-%s-%s"

    new-array v3, v11, [Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x10

    const/16 v5, 0x14

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v9

    const/16 v0, 0xc

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/l;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private static a(J)[B
    .locals 2
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    long-to-int v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 84
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/crashlytics/android/l;->b:Ljava/lang/String;

    return-object v0
.end method
