.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Action"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Action"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-direct {v2, p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const-string v0, "Action"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-direct {v4, p0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private convertCondition(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Condition"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Condition"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {v1, v5}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p3}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {p3, v6}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/amazonaws/auth/policy/Condition;

    invoke-direct {v0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/policy/Condition;->withType(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazonaws/auth/policy/Condition;->withConditionKey(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amazonaws/auth/policy/Condition;->withValues(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v6}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v7

    move v0, v1

    :goto_1
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private convertPrincipalRecord(Ljava/lang/String;Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    invoke-virtual {p3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    const-string v2, "AWS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    :cond_0
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "Service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/auth/policy/Principal$Services;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$Services;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private convertPrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Principal"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    :cond_2
    const-string v0, "Principal"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, "AWS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v4

    new-instance v6, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {v6, v5}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v6, "Service"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v4

    new-instance v6, Lcom/amazonaws/auth/policy/Principal;

    invoke-static {v5}, Lcom/amazonaws/auth/policy/Principal$Services;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$Services;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v4}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v5

    invoke-direct {p0, v4, p1, v5}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertPrincipalRecord(Ljava/lang/String;Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONArray;)V

    goto :goto_1
.end method

.method private convertResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Resource"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Resource"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/amazonaws/auth/policy/Resource;

    invoke-direct {v2, v0}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const-string v0, "Resource"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/amazonaws/auth/policy/Resource;

    invoke-virtual {v2, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private convertStatement(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/auth/policy/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Effect"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Effect"

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/auth/policy/Statement;

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    :goto_1
    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Sid"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Sid"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertCondition(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertPrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/amazonaws/auth/policy/Statement;

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    goto :goto_1
.end method


# virtual methods
.method public createPolicyFromJsonString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {v1}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Id"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Id"

    invoke-virtual {v0, v3}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Policy;->setId(Ljava/lang/String;)V

    :cond_1
    const-string v3, "Statement"

    invoke-virtual {v0, v3}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lcom/amazonaws/util/json/JSONArray;->getJSONObject(I)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertStatement(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate policy object fron JSON string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    return-object v1
.end method
