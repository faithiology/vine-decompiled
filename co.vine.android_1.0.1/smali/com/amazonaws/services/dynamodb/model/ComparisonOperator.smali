.class public final enum Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum BEGINS_WITH:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum BETWEEN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum EQ:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum GE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum GT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum IN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum LE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum LT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum NE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum NOT_CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum NOT_NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

.field public static final enum NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;


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

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "EQ"

    const-string v2, "EQ"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "NE"

    const-string v2, "NE"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "IN"

    const-string v2, "IN"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "LE"

    const-string v2, "LE"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "LT"

    const-string v2, "LT"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "GE"

    const/4 v2, 0x5

    const-string v3, "GE"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "GT"

    const/4 v2, 0x6

    const-string v3, "GT"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "BETWEEN"

    const/4 v2, 0x7

    const-string v3, "BETWEEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "NOT_NULL"

    const/16 v2, 0x8

    const-string v3, "NOT_NULL"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "NULL"

    const/16 v2, 0x9

    const-string v3, "NULL"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "CONTAINS"

    const/16 v2, 0xa

    const-string v3, "CONTAINS"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "NOT_CONTAINS"

    const/16 v2, 0xb

    const-string v3, "NOT_CONTAINS"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const-string v1, "BEGINS_WITH"

    const/16 v2, 0xc

    const-string v3, "BEGINS_WITH"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    sget-object v1, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

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

    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;
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
    const-string v0, "EQ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "NE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_3
    const-string v0, "IN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_4
    const-string v0, "LE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_5
    const-string v0, "LT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_6
    const-string v0, "GE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_7
    const-string v0, "GT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_8
    const-string v0, "BETWEEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_9
    const-string v0, "NOT_NULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_a
    const-string v0, "NULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_b
    const-string v0, "CONTAINS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_c
    const-string v0, "NOT_CONTAINS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto :goto_0

    :cond_d
    const-string v0, "BEGINS_WITH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    goto/16 :goto_0

    :cond_e
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;
    .locals 1

    const-class v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    invoke-virtual {v0}, [Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ComparisonOperator;->value:Ljava/lang/String;

    return-object v0
.end method
