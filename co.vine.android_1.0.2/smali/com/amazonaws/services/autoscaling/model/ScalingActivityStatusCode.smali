.class public final enum Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum Cancelled:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum Failed:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum InProgress:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum PreInService:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum Successful:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum WaitingForInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum WaitingForSpotInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

.field public static final enum WaitingForSpotInstanceRequestId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;


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

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "WaitingForSpotInstanceRequestId"

    const-string v2, "WaitingForSpotInstanceRequestId"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceRequestId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "WaitingForSpotInstanceId"

    const-string v2, "WaitingForSpotInstanceId"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "WaitingForInstanceId"

    const-string v2, "WaitingForInstanceId"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "PreInService"

    const-string v2, "PreInService"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->PreInService:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "InProgress"

    const-string v2, "InProgress"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->InProgress:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "Successful"

    const/4 v2, 0x5

    const-string v3, "Successful"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Successful:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "Failed"

    const/4 v2, 0x6

    const-string v3, "Failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Failed:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const-string v1, "Cancelled"

    const/4 v2, 0x7

    const-string v3, "Cancelled"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Cancelled:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceRequestId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->PreInService:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->InProgress:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Successful:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Failed:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Cancelled:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->$VALUES:[Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

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

    iput-object p3, p0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;
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
    const-string v0, "WaitingForSpotInstanceRequestId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceRequestId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "WaitingForSpotInstanceId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForSpotInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_3
    const-string v0, "WaitingForInstanceId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->WaitingForInstanceId:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_4
    const-string v0, "PreInService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->PreInService:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_5
    const-string v0, "InProgress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->InProgress:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_6
    const-string v0, "Successful"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Successful:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_7
    const-string v0, "Failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Failed:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_8
    const-string v0, "Cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->Cancelled:Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    goto :goto_0

    :cond_9
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;
    .locals 1

    const-class v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->$VALUES:[Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    invoke-virtual {v0}, [Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->value:Ljava/lang/String;

    return-object v0
.end method
