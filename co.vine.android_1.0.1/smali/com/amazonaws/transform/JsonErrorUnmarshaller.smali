.class public Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.super Lcom/amazonaws/transform/AbstractErrorUnmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/transform/AbstractErrorUnmarshaller",
        "<",
        "Lcom/amazonaws/util/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public parseErrorCode(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "__type"

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__type"

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseMessage(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Message"

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->parseMessage(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->newException(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->parseErrorCode(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/util/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
