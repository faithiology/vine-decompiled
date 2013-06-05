.class public Lcom/amazonaws/transform/StaxUnmarshallerContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    }
.end annotation


# instance fields
.field private attributeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

.field private final eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadataExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;",
            ">;"
        }
    .end annotation
.end field

.field public final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/javax/xml/stream/XMLEventReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    iput-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    return-void
.end method

.method private updateContext(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentDepth()I
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public isStartOfDocument()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v0

    return v0
.end method

.method public nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    :goto_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->updateContext(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    iget-object v3, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    iget v4, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    invoke-virtual {p0, v3, v4}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    iget-object v0, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method public readText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unexpected event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;-><init>(Lcom/amazonaws/transform/StaxUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public testExpression(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public testExpression(Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    const-string v3, "/"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
