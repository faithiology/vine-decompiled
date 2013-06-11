.class public final enum Lcom/amazonaws/services/cloudwatch/model/Statistic;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/Statistic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cloudwatch/model/Statistic;

.field public static final enum Average:Lcom/amazonaws/services/cloudwatch/model/Statistic;

.field public static final enum Maximum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

.field public static final enum Minimum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

.field public static final enum SampleCount:Lcom/amazonaws/services/cloudwatch/model/Statistic;

.field public static final enum Sum:Lcom/amazonaws/services/cloudwatch/model/Statistic;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const-string v1, "SampleCount"

    const-string v2, "SampleCount"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cloudwatch/model/Statistic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->SampleCount:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const-string v1, "Average"

    const-string v2, "Average"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cloudwatch/model/Statistic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Average:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const-string v1, "Sum"

    const-string v2, "Sum"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cloudwatch/model/Statistic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Sum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const-string v1, "Minimum"

    const-string v2, "Minimum"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cloudwatch/model/Statistic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Minimum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const-string v1, "Maximum"

    const-string v2, "Maximum"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/cloudwatch/model/Statistic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Maximum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/services/cloudwatch/model/Statistic;

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/Statistic;->SampleCount:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Average:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Sum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Minimum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Maximum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/Statistic;

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

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/Statistic;
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
    const-string v0, "SampleCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->SampleCount:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "Average"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Average:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    goto :goto_0

    :cond_3
    const-string v0, "Sum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Sum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    goto :goto_0

    :cond_4
    const-string v0, "Minimum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Minimum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    goto :goto_0

    :cond_5
    const-string v0, "Maximum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->Maximum:Lcom/amazonaws/services/cloudwatch/model/Statistic;

    goto :goto_0

    :cond_6
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/Statistic;
    .locals 1

    const-class v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/cloudwatch/model/Statistic;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/Statistic;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cloudwatch/model/Statistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cloudwatch/model/Statistic;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Statistic;->value:Ljava/lang/String;

    return-object v0
.end method
