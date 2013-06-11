.class public final enum Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

.field public static final enum Action:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

.field public static final enum ConfigurationUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

.field public static final enum StateUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    const-string v1, "ConfigurationUpdate"

    const-string v2, "ConfigurationUpdate"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->ConfigurationUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    const-string v1, "StateUpdate"

    const-string v2, "StateUpdate"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->StateUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    const-string v1, "Action"

    const-string v2, "Action"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->Action:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->ConfigurationUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->StateUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->Action:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

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

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;
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
    const-string v0, "ConfigurationUpdate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->ConfigurationUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "StateUpdate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->StateUpdate:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    goto :goto_0

    :cond_3
    const-string v0, "Action"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->Action:Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    goto :goto_0

    :cond_4
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;
    .locals 1

    const-class v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->value:Ljava/lang/String;

    return-object v0
.end method
