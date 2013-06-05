.class public Lcom/amazonaws/auth/policy/conditions/BooleanCondition;
.super Lcom/amazonaws/auth/policy/Condition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    const-string v0, "Bool"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
