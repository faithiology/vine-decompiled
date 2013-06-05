.class public Lcom/amazonaws/auth/policy/conditions/ArnCondition;
.super Lcom/amazonaws/auth/policy/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
