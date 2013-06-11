.class public Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;
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
        "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
        ">;",
        "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
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
.method public marshall(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
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

    const-string v0, "AmazonSQS"

    invoke-direct {v2, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "ReceiveMessage"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2012-11-05"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "QueueUrl"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AttributeName."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "MaxNumberOfMessages"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "VisibilityTimeout"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "WaitTimeSeconds"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
