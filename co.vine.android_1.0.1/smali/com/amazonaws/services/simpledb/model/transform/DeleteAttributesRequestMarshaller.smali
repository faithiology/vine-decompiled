.class public Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;
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
        "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonSimpleDB"

    invoke-direct {v2, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "DeleteAttributes"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2009-04-15"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "DomainName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ItemName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/Attribute;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".AlternateNameEncoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".AlternateValueEncoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "Expected.Name"

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "Expected.Value"

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "Expected.Exists"

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v2
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
