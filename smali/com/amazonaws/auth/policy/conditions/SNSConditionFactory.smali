.class public Lcom/amazonaws/auth/policy/conditions/SNSConditionFactory;
.super Ljava/lang/Object;


# static fields
.field public static final ENDPOINT_CONDITION_KEY:Ljava/lang/String; = "sns:Endpoint"

.field public static final PROTOCOL_CONDITION_KEY:Ljava/lang/String; = "sns:Protocol"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEndpointCondition(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .locals 3

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v2, "sns:Endpoint"

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/auth/policy/conditions/StringCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newProtocolCondition(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .locals 3

    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v2, "sns:Protocol"

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/auth/policy/conditions/StringCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
