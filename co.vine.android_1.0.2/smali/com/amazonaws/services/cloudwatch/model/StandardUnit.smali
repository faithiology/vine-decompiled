.class public final enum Lcom/amazonaws/services/cloudwatch/model/StandardUnit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/StandardUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Bits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum BitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Bytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum BytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Count:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum CountSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Gigabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum GigabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Gigabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum GigabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Kilobits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum KilobitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Kilobytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum KilobytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Megabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum MegabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Megabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum MegabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Microseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Milliseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum None:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Percent:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Seconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Terabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum TerabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum Terabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

.field public static final enum TerabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Seconds"

    const-string v2, "Seconds"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Seconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Microseconds"

    const-string v2, "Microseconds"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Microseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Milliseconds"

    const-string v2, "Milliseconds"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Milliseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Bytes"

    const-string v2, "Bytes"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Kilobytes"

    const-string v2, "Kilobytes"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Megabytes"

    const/4 v2, 0x5

    const-string v3, "Megabytes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Gigabytes"

    const/4 v2, 0x6

    const-string v3, "Gigabytes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Terabytes"

    const/4 v2, 0x7

    const-string v3, "Terabytes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Bits"

    const/16 v2, 0x8

    const-string v3, "Bits"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Kilobits"

    const/16 v2, 0x9

    const-string v3, "Kilobits"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Megabits"

    const/16 v2, 0xa

    const-string v3, "Megabits"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Gigabits"

    const/16 v2, 0xb

    const-string v3, "Gigabits"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Terabits"

    const/16 v2, 0xc

    const-string v3, "Terabits"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Percent"

    const/16 v2, 0xd

    const-string v3, "Percent"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Percent:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "Count"

    const/16 v2, 0xe

    const-string v3, "Count"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Count:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "BytesSecond"

    const/16 v2, 0xf

    const-string v3, "Bytes/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "KilobytesSecond"

    const/16 v2, 0x10

    const-string v3, "Kilobytes/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "MegabytesSecond"

    const/16 v2, 0x11

    const-string v3, "Megabytes/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "GigabytesSecond"

    const/16 v2, 0x12

    const-string v3, "Gigabytes/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "TerabytesSecond"

    const/16 v2, 0x13

    const-string v3, "Terabytes/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "BitsSecond"

    const/16 v2, 0x14

    const-string v3, "Bits/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "KilobitsSecond"

    const/16 v2, 0x15

    const-string v3, "Kilobits/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "MegabitsSecond"

    const/16 v2, 0x16

    const-string v3, "Megabits/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "GigabitsSecond"

    const/16 v2, 0x17

    const-string v3, "Gigabits/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "TerabitsSecond"

    const/16 v2, 0x18

    const-string v3, "Terabits/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "CountSecond"

    const/16 v2, 0x19

    const-string v3, "Count/Second"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->CountSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const-string v1, "None"

    const/16 v2, 0x1a

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->None:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Seconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Microseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Milliseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Percent:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Count:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->CountSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->None:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/StandardUnit;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Seconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Seconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "Microseconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Microseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_3
    const-string v0, "Milliseconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Milliseconds:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_4
    const-string v0, "Bytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_5
    const-string v0, "Kilobytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_6
    const-string v0, "Megabytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_7
    const-string v0, "Gigabytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_8
    const-string v0, "Terabytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabytes:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_9
    const-string v0, "Bits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Bits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_a
    const-string v0, "Kilobits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Kilobits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_b
    const-string v0, "Megabits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Megabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_c
    const-string v0, "Gigabits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Gigabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto :goto_0

    :cond_d
    const-string v0, "Terabits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Terabits:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_e
    const-string v0, "Percent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Percent:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_f
    const-string v0, "Count"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->Count:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_10
    const-string v0, "Bytes/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_11
    const-string v0, "Kilobytes/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_12
    const-string v0, "Megabytes/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_13
    const-string v0, "Gigabytes/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_14
    const-string v0, "Terabytes/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabytesSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_15
    const-string v0, "Bits/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->BitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_16
    const-string v0, "Kilobits/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->KilobitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_17
    const-string v0, "Megabits/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->MegabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_18
    const-string v0, "Gigabits/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->GigabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_19
    const-string v0, "Terabits/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->TerabitsSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Count/Second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->CountSecond:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_1b
    const-string v0, "None"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->None:Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    goto/16 :goto_0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/StandardUnit;
    .locals 1

    const-class v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/cloudwatch/model/StandardUnit;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->value:Ljava/lang/String;

    return-object v0
.end method
