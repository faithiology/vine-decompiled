.class public Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller$NotificationAttributesMapEntryUnmarshaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;-><init>()V

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

    if-eqz v4, :cond_3

    :cond_2
    const-string v3, "NotificationAttributes/entry"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller$NotificationAttributesMapEntryUnmarshaller;->getInstance()Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller$NotificationAttributesMapEntryUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller$NotificationAttributesMapEntryUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;->getNotificationAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;

    move-result-object v0

    return-object v0
.end method
