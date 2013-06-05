.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sortConditionsByKey(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Condition;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getConditionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private sortConditionsByType(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Condition;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private writeActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Action"

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Action;

    invoke-interface {v0}, Lcom/amazonaws/auth/policy/Action;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writeConditions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getConditions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->sortConditionsByType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "Condition"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->sortConditionsByKey(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writePolicy(Lcom/amazonaws/auth/policy/Policy;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    const-string v0, "Version"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Id"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_0
    const-string v0, "Statement"

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getStatements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Statement;

    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Sid"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_1
    const-string v2, "Effect"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Statement$Effect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeConditions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    return-void
.end method

.method private writePrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Principal"

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writeResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Resource"

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Resource;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Resource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method


# virtual methods
.method public writePolicyToString(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Policy cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v0, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePolicy(Lcom/amazonaws/auth/policy/Policy;Lcom/amazonaws/util/json/JSONWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize policy to JSON string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
