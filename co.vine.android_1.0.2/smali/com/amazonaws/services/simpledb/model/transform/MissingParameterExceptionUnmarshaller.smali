.class public Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;
.super Lcom/amazonaws/transform/LegacyErrorUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/simpledb/model/MissingParameterException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;->parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MissingParameter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/MissingParameterException;

    const-string v1, "BoxUsage"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;->getErrorPropertyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazonaws/util/XpathUtils;->asFloat(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpledb/model/MissingParameterException;->setBoxUsage(Ljava/lang/Float;)V

    goto :goto_0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
