.class public Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesRequestMarshaller;
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
        "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonSimpleEmailService"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "ListIdentities"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2010-12-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getIdentityType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "IdentityType"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getIdentityType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "NextToken"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getMaxItems()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MaxItems"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;->getMaxItems()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
