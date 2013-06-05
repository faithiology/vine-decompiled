.class public final enum Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/conditions/StringCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringEquals"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringEqualsIgnoreCase"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringLike"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotEquals"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotEqualsIgnoreCase"

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotLike"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    .locals 1

    const-class v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    .locals 1

    sget-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-object v0
.end method
