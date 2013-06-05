.class public Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonSimpleDB"

    invoke-direct {v4, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "BatchPutAttributes"

    invoke-interface {v4, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2009-04-15"

    invoke-interface {v4, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "DomainName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".ItemName"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->isReplace()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Replace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->isReplace()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    return-object v4
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
