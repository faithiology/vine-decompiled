.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x2

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

    if-eqz v4, :cond_4

    :cond_2
    const-string v3, "AttributeName"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->setAttributeName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "AttributeValue"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyAttributeDescriptionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;

    move-result-object v0

    return-object v0
.end method