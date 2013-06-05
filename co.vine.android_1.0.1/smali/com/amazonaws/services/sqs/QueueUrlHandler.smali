.class public Lcom/amazonaws/services/sqs/QueueUrlHandler;
.super Lcom/amazonaws/handlers/AbstractRequestHandler;


# static fields
.field private static final QUEUE_URL_PARAMETER:Ljava/lang/String; = "QueueUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/handlers/AbstractRequestHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "QueueUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "QueueUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse SQS queue URL \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
