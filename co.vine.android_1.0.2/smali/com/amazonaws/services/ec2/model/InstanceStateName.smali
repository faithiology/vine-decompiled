.class public final enum Lcom/amazonaws/services/ec2/model/InstanceStateName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/InstanceStateName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum Pending:Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum Running:Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum ShuttingDown:Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum Stopped:Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum Stopping:Lcom/amazonaws/services/ec2/model/InstanceStateName;

.field public static final enum Terminated:Lcom/amazonaws/services/ec2/model/InstanceStateName;


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

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "Pending"

    const-string v2, "pending"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Pending:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "Running"

    const-string v2, "running"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Running:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "ShuttingDown"

    const-string v2, "shutting-down"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->ShuttingDown:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "Terminated"

    const-string v2, "terminated"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Terminated:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "Stopping"

    const-string v2, "stopping"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopping:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    const-string v3, "stopped"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceStateName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopped:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/InstanceStateName;

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Pending:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Running:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceStateName;->ShuttingDown:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Terminated:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopping:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopped:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceStateName;

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

    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceStateName;
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
    const-string v0, "pending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Pending:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "running"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Running:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    goto :goto_0

    :cond_3
    const-string v0, "shutting-down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->ShuttingDown:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    goto :goto_0

    :cond_4
    const-string v0, "terminated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Terminated:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    goto :goto_0

    :cond_5
    const-string v0, "stopping"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopping:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    goto :goto_0

    :cond_6
    const-string v0, "stopped"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->Stopped:Lcom/amazonaws/services/ec2/model/InstanceStateName;

    goto :goto_0

    :cond_7
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceStateName;
    .locals 1

    const-class v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/InstanceStateName;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceStateName;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/InstanceStateName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/InstanceStateName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStateName;->value:Ljava/lang/String;

    return-object v0
.end method
