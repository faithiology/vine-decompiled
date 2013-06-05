.class public final enum Lcom/amazonaws/services/ec2/model/InstanceAttributeName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/InstanceAttributeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum BlockDeviceMapping:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum DisableApiTermination:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum EbsOptimized:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum GroupSet:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum InstanceInitiatedShutdownBehavior:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum InstanceType:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum Kernel:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum ProductCodes:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum Ramdisk:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum RootDeviceName:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum SourceDestCheck:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

.field public static final enum UserData:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;


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

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "InstanceType"

    const-string v2, "instanceType"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceType:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "Kernel"

    const-string v2, "kernel"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Kernel:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "Ramdisk"

    const-string v2, "ramdisk"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Ramdisk:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "UserData"

    const-string v2, "userData"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->UserData:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "DisableApiTermination"

    const-string v2, "disableApiTermination"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->DisableApiTermination:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "InstanceInitiatedShutdownBehavior"

    const/4 v2, 0x5

    const-string v3, "instanceInitiatedShutdownBehavior"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceInitiatedShutdownBehavior:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "RootDeviceName"

    const/4 v2, 0x6

    const-string v3, "rootDeviceName"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->RootDeviceName:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "BlockDeviceMapping"

    const/4 v2, 0x7

    const-string v3, "blockDeviceMapping"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->BlockDeviceMapping:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "ProductCodes"

    const/16 v2, 0x8

    const-string v3, "productCodes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->ProductCodes:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "SourceDestCheck"

    const/16 v2, 0x9

    const-string v3, "sourceDestCheck"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->SourceDestCheck:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "GroupSet"

    const/16 v2, 0xa

    const-string v3, "groupSet"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->GroupSet:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const-string v1, "EbsOptimized"

    const/16 v2, 0xb

    const-string v3, "ebsOptimized"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->EbsOptimized:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceType:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Kernel:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Ramdisk:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->UserData:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->DisableApiTermination:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceInitiatedShutdownBehavior:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->RootDeviceName:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->BlockDeviceMapping:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->ProductCodes:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->SourceDestCheck:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->GroupSet:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->EbsOptimized:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

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

    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttributeName;
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
    const-string v0, "instanceType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceType:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "kernel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Kernel:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_3
    const-string v0, "ramdisk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->Ramdisk:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_4
    const-string v0, "userData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->UserData:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_5
    const-string v0, "disableApiTermination"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->DisableApiTermination:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_6
    const-string v0, "instanceInitiatedShutdownBehavior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->InstanceInitiatedShutdownBehavior:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_7
    const-string v0, "rootDeviceName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->RootDeviceName:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_8
    const-string v0, "blockDeviceMapping"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->BlockDeviceMapping:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_9
    const-string v0, "productCodes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->ProductCodes:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_a
    const-string v0, "sourceDestCheck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->SourceDestCheck:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_b
    const-string v0, "groupSet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->GroupSet:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_c
    const-string v0, "ebsOptimized"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->EbsOptimized:Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    goto :goto_0

    :cond_d
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttributeName;
    .locals 1

    const-class v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/InstanceAttributeName;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->value:Ljava/lang/String;

    return-object v0
.end method
