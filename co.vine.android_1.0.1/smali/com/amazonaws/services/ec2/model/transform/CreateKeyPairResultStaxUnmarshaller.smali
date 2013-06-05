.class public Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v3, "."

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/KeyPairStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/KeyPairStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/ec2/model/transform/KeyPairStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/KeyPair;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;->setKeyPair(Lcom/amazonaws/services/ec2/model/KeyPair;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v2, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;

    move-result-object v0

    return-object v0
.end method
