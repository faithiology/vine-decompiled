.class public Lco/vine/android/client/Amazon;
.super Ljava/lang/Object;
.source "Amazon.java"


# static fields
.field public static final ACCESS_KEY:Ljava/lang/String; = null

.field public static final ACCESS_SECRET:Ljava/lang/String; = null

.field public static final PICTURE_BUCKET:Ljava/lang/String; = "avatars"

.field public static final RAW_ACCESS_KEY:[B

.field public static final RAW_ACCESS_SECRET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 13
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lco/vine/android/client/Amazon;->RAW_ACCESS_KEY:[B

    .line 17
    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lco/vine/android/client/Amazon;->RAW_ACCESS_SECRET:[B

    .line 24
    sget-object v0, Lco/vine/android/client/Amazon;->RAW_ACCESS_KEY:[B

    invoke-static {v1, v0}, Lco/vine/android/client/TwitterVineApp;->transform(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/client/Amazon;->ACCESS_KEY:Ljava/lang/String;

    .line 26
    sget-object v0, Lco/vine/android/client/Amazon;->RAW_ACCESS_SECRET:[B

    invoke-static {v1, v0}, Lco/vine/android/client/TwitterVineApp;->transform(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/client/Amazon;->ACCESS_SECRET:Ljava/lang/String;

    return-void

    .line 13
    nop

    :array_0
    .array-data 0x1
        0xd4t
        0xcat
        0xcct
        0xd4t
        0xcbt
        0xc9t
        0xe3t
        0xc2t
        0xc2t
        0xc6t
        0xc3t
        0xc1t
        0xbbt
        0xe0t
        0xd4t
        0xcat
        0xdft
        0xd1t
        0xe1t
        0xd4t
    .end array-data

    .line 17
    :array_1
    .array-data 0x1
        0xcct
        0xc7t
        0xe5t
        0xa8t
        0xc7t
        0xaat
        0xe3t
        0x9et
        0xb0t
        0xe1t
        0xc4t
        0xa4t
        0xa7t
        0xcft
        0xb4t
        0xd1t
        0xc0t
        0xc0t
        0xb0t
        0xd2t
        0xdet
        0xd1t
        0xbct
        0x9bt
        0xd3t
        0xd1t
        0xdct
        0xd3t
        0xc3t
        0xd2t
        0x9et
        0xc3t
        0xbct
        0xa7t
        0xc1t
        0xa0t
        0xa1t
        0xa6t
        0x9dt
        0xabt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucket(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
