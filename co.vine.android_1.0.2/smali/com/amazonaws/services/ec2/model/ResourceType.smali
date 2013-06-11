.class public final enum Lcom/amazonaws/services/ec2/model/ResourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum CustomerGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum DhcpOptions:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Image:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Instance:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Snapshot:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum SpotInstancesRequest:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Subnet:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Volume:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum Vpc:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum VpnConnection:Lcom/amazonaws/services/ec2/model/ResourceType;

.field public static final enum VpnGateway:Lcom/amazonaws/services/ec2/model/ResourceType;


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

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "CustomerGateway"

    const-string v2, "customer-gateway"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->CustomerGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "DhcpOptions"

    const-string v2, "dhcp-options"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->DhcpOptions:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Image"

    const-string v2, "image"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Image:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Instance"

    const-string v2, "instance"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Instance:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Snapshot"

    const-string v2, "snapshot"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Snapshot:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "SpotInstancesRequest"

    const/4 v2, 0x5

    const-string v3, "spot-instances-request"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->SpotInstancesRequest:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Subnet"

    const/4 v2, 0x6

    const-string v3, "subnet"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Subnet:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Volume"

    const/4 v2, 0x7

    const-string v3, "volume"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Volume:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "Vpc"

    const/16 v2, 0x8

    const-string v3, "vpc"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Vpc:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "VpnConnection"

    const/16 v2, 0x9

    const-string v3, "vpn-connection"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnConnection:Lcom/amazonaws/services/ec2/model/ResourceType;

    new-instance v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    const-string v1, "VpnGateway"

    const/16 v2, 0xa

    const-string v3, "vpn-gateway"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/ResourceType;

    sget-object v1, Lcom/amazonaws/services/ec2/model/ResourceType;->CustomerGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/ec2/model/ResourceType;->DhcpOptions:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/ec2/model/ResourceType;->Image:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/ec2/model/ResourceType;->Instance:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/ec2/model/ResourceType;->Snapshot:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->SpotInstancesRequest:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->Subnet:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->Volume:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->Vpc:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnConnection:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/ResourceType;

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

    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/ResourceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResourceType;
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
    const-string v0, "customer-gateway"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->CustomerGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "dhcp-options"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->DhcpOptions:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_3
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Image:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_4
    const-string v0, "instance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Instance:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_5
    const-string v0, "snapshot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Snapshot:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_6
    const-string v0, "spot-instances-request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->SpotInstancesRequest:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_7
    const-string v0, "subnet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Subnet:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_8
    const-string v0, "volume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Volume:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_9
    const-string v0, "vpc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->Vpc:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_a
    const-string v0, "vpn-connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnConnection:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_b
    const-string v0, "vpn-gateway"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->VpnGateway:Lcom/amazonaws/services/ec2/model/ResourceType;

    goto :goto_0

    :cond_c
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResourceType;
    .locals 1

    const-class v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/ResourceType;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/ResourceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/ResourceType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/ResourceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ResourceType;->value:Ljava/lang/String;

    return-object v0
.end method
