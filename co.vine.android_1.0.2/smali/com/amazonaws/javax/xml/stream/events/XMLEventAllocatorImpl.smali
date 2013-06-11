.class public Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;
.super Ljava/lang/Object;
.source "XMLEventAllocatorImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private getQName(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 4
    .parameter "xmlr"

    .prologue
    .line 272
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setNamespaceContext(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .parameter "event"
    .parameter "xmlr"

    .prologue
    .line 266
    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 267
    .local v0, contextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    .line 268
    .local v1, ns:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    invoke-virtual {p1, v2}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V

    .line 269
    return-void
.end method


# virtual methods
.method public allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .parameter "xMLStreamReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Reader cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/util/XMLEventConsumer;)V
    .locals 1
    .parameter "xMLStreamReader"
    .parameter "xMLEventConsumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 74
    .local v0, currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p2, v0}, Lcom/amazonaws/javax/xml/stream/util/XMLEventConsumer;->add(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected fillAttributes(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 8
    .parameter "event"
    .parameter "xmlr"

    .prologue
    .line 199
    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    .line 200
    .local v2, len:I
    const/4 v6, 0x0

    .line 201
    .local v6, qname:Lcom/amazonaws/javax/xml/namespace/QName;
    const/4 v5, 0x0

    .line 202
    .local v5, prefix:Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, localpart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
    const/4 v4, 0x0

    .line 205
    .local v4, nattr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 206
    invoke-interface {p2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v6

    .line 207
    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 222
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>()V

    .line 223
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setName(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 224
    invoke-interface {p2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setAttributeType(Ljava/lang/String;)V

    .line 225
    invoke-interface {p2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setSpecified(Z)V

    .line 226
    invoke-interface {p2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addAttribute(Lcom/amazonaws/javax/xml/stream/events/Attribute;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method protected fillNamespaceAttributes(Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 5
    .parameter "event"
    .parameter "xmlr"

    .prologue
    .line 248
    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    .line 249
    .local v1, count:I
    const/4 v4, 0x0

    .line 250
    .local v4, uri:Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 253
    invoke-interface {p2, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-interface {p2, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    if-nez v3, :cond_0

    .line 256
    const-string v3, ""

    .line 258
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    invoke-direct {v0, v3, v4}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;->addNamespace(Lcom/amazonaws/javax/xml/stream/events/Namespace;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method protected fillNamespaceAttributes(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 5
    .parameter "event"
    .parameter "xmlr"

    .prologue
    .line 232
    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    .line 233
    .local v1, count:I
    const/4 v4, 0x0

    .line 234
    .local v4, uri:Ljava/lang/String;
    const/4 v3, 0x0

    .line 235
    .local v3, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 236
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 237
    invoke-interface {p2, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-interface {p2, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    if-nez v3, :cond_0

    .line 240
    const-string v3, ""

    .line 242
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    invoke-direct {v0, v3, v4}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addNamespaceAttribute(Lcom/amazonaws/javax/xml/stream/events/Namespace;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return-void
.end method

.method protected getNextEvent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 1
    .parameter "streamReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->next()I

    .line 194
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method getXMLEvent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 21
    .parameter "streamReader"

    .prologue
    .line 86
    const/4 v10, 0x0

    .line 88
    .local v10, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v11

    .line 89
    .local v11, eventType:I
    packed-switch v11, :pswitch_data_0

    .line 187
    :goto_0
    return-object v10

    .line 92
    :pswitch_0
    new-instance v16, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->getQName(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;-><init>(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 93
    .local v16, startElementEvent:Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->fillAttributes(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    .line 96
    const-string v17, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->setNamespaceContext(Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    .line 101
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 102
    move-object/from16 v10, v16

    .line 103
    goto :goto_0

    .line 106
    .end local v16           #startElementEvent:Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;
    :pswitch_1
    new-instance v7, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->getQName(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;-><init>(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 107
    .local v7, endElementEvent:Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 109
    const-string v17, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    .line 112
    :cond_1
    move-object v10, v7

    .line 113
    goto :goto_0

    .line 116
    .end local v7           #endElementEvent:Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;
    :pswitch_2
    new-instance v13, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v13, piEvent:Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 118
    move-object v10, v13

    .line 119
    goto/16 :goto_0

    .line 122
    .end local v13           #piEvent:Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;
    :pswitch_3
    new-instance v3, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, cDataEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 124
    move-object v10, v3

    .line 125
    goto/16 :goto_0

    .line 128
    .end local v3           #cDataEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    :pswitch_4
    new-instance v4, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, commentEvent:Lcom/amazonaws/javax/xml/stream/events/CommentEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 130
    move-object v10, v4

    .line 131
    goto/16 :goto_0

    .line 134
    .end local v4           #commentEvent:Lcom/amazonaws/javax/xml/stream/events/CommentEvent;
    :pswitch_5
    new-instance v14, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;

    invoke-direct {v14}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;-><init>()V

    .line 135
    .local v14, sdEvent:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setVersion(Ljava/lang/String;)V

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 138
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    .line 142
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setStandalone(Z)V

    .line 143
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 144
    move-object v10, v14

    .line 145
    goto/16 :goto_0

    .line 140
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    goto :goto_1

    .line 148
    .end local v14           #sdEvent:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    :pswitch_6
    new-instance v6, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;

    invoke-direct {v6}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;-><init>()V

    .line 149
    .local v6, endDocumentEvent:Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 150
    move-object v10, v6

    .line 151
    goto/16 :goto_0

    .line 154
    .end local v6           #endDocumentEvent:Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;
    :pswitch_7
    new-instance v9, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;)V

    .line 155
    .local v9, entityEvent:Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 156
    move-object v10, v9

    .line 157
    goto/16 :goto_0

    .line 161
    .end local v9           #entityEvent:Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;
    :pswitch_8
    const/4 v10, 0x0

    .line 162
    goto/16 :goto_0

    .line 165
    :pswitch_9
    new-instance v5, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, dtdEvent:Lcom/amazonaws/javax/xml/stream/events/DTDEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 167
    const-string v17, "com.amazonaws.javax.xml.stream.entities"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 168
    .local v8, entities:Ljava/util/List;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v5, v8}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->setEntities(Ljava/util/List;)V

    .line 169
    :cond_3
    const-string v17, "com.amazonaws.javax.xml.stream.notations"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 170
    .local v12, notations:Ljava/util/List;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v5, v12}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->setNotations(Ljava/util/List;)V

    .line 171
    :cond_4
    move-object v10, v5

    .line 172
    goto/16 :goto_0

    .line 175
    .end local v5           #dtdEvent:Lcom/amazonaws/javax/xml/stream/events/DTDEvent;
    .end local v8           #entities:Ljava/util/List;
    .end local v12           #notations:Ljava/util/List;
    :pswitch_a
    new-instance v3, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    .line 176
    .restart local v3       #cDataEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 177
    move-object v10, v3

    .line 178
    goto/16 :goto_0

    .line 181
    .end local v3           #cDataEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    :pswitch_b
    new-instance v15, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    .line 182
    .local v15, spaceEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 183
    move-object v10, v15

    .line 184
    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public newInstance()Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;-><init>()V

    return-object v0
.end method
