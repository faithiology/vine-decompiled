.class public Lco/vine/android/client/TwitterVineApp;
.super Ljava/lang/Object;
.source "TwitterVineApp.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = null

.field public static final API_MAGIC:B = 0x15t

.field public static final API_SECRET:Ljava/lang/String;

.field private static final RAW_API_KEY:[B

.field private static final RAW_API_SECRET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 11
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lco/vine/android/client/TwitterVineApp;->RAW_API_KEY:[B

    .line 16
    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lco/vine/android/client/TwitterVineApp;->RAW_API_SECRET:[B

    .line 24
    sget-object v0, Lco/vine/android/client/TwitterVineApp;->RAW_API_KEY:[B

    invoke-static {v1, v0}, Lco/vine/android/client/TwitterVineApp;->transform(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    .line 25
    sget-object v0, Lco/vine/android/client/TwitterVineApp;->RAW_API_SECRET:[B

    invoke-static {v1, v0}, Lco/vine/android/client/TwitterVineApp;->transform(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    return-void

    .line 11
    nop

    :array_0
    .array-data 0x1
        0xb1t
        0xbet
        0xbet
        0xdft
        0xbft
        0xddt
        0xact
        0xa2t
        0x9ft
        0xc2t
        0xcet
        0xc3t
        0xc9t
        0xe1t
        0xa4t
        0xb3t
        0xd0t
        0xa9t
        0xa3t
        0xcet
        0x9et
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 0x1
        0xe0t
        0xcat
        0xbft
        0xdet
        0xe3t
        0xe1t
        0xe5t
        0xdft
        0xd0t
        0xcet
        0xc1t
        0xc2t
        0xb0t
        0xc8t
        0xa2t
        0xcct
        0xa7t
        0xa5t
        0xcbt
        0xe3t
        0xaet
        0xcdt
        0xd1t
        0xd4t
        0xc9t
        0xe2t
        0xcet
        0xact
        0xcdt
        0xact
        0xcct
        0xc4t
        0xe1t
        0xa7t
        0xb0t
        0xb3t
        0xd3t
        0xabt
        0x9ft
        0xb4t
        0x9bt
        0xa2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transform(B[B)Ljava/lang/String;
    .locals 6
    .parameter "magic"
    .parameter "m"

    .prologue
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 30
    .local v1, b:B
    sub-int v5, p0, v1

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
