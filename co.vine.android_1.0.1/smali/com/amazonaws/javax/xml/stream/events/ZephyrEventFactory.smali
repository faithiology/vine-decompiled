.class public Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;
.super Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
.source "ZephyrEventFactory.java"


# instance fields
.field location:Lcom/amazonaws/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventFactory;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    .line 57
    return-void
.end method


# virtual methods
.method public createAttribute(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .locals 2
    .parameter "localName"
    .parameter "value"

    .prologue
    .line 60
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 62
    :cond_0
    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .locals 6
    .parameter "prefix"
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"

    .prologue
    .line 70
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 72
    :cond_0
    return-object v0
.end method

.method public createCData(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
    .locals 2
    .parameter "content"

    .prologue
    .line 78
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    .line 79
    .local v0, charEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 80
    :cond_0
    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
    .locals 2
    .parameter "content"

    .prologue
    .line 84
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, charEvent:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 86
    :cond_0
    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Comment;
    .locals 2
    .parameter "text"

    .prologue
    .line 90
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, charEvent:Lcom/amazonaws/javax/xml/stream/events/CommentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/DTD;
    .locals 2
    .parameter "dtd"

    .prologue
    .line 96
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, dtdEvent:Lcom/amazonaws/javax/xml/stream/events/DTDEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 98
    :cond_0
    return-object v0
.end method

.method public createEndDocument()Lcom/amazonaws/javax/xml/stream/events/EndDocument;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;-><init>()V

    .line 103
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 104
    :cond_0
    return-object v0
.end method

.method public createEndElement(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
    .locals 3
    .parameter "name"
    .parameter "namespaces"

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/EndElement;

    move-result-object v0

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
    .locals 2
    .parameter "prefix"
    .parameter "namespaceUri"
    .parameter "localName"

    .prologue
    .line 112
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 114
    :cond_0
    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
    .locals 2
    .parameter "prefix"
    .parameter "namespaceUri"
    .parameter "localName"
    .parameter "namespaces"

    .prologue
    .line 119
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;
    if-eqz p4, :cond_0

    .line 121
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;->addNamespace(Lcom/amazonaws/javax/xml/stream/events/Namespace;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EndElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 125
    :cond_1
    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;)Lcom/amazonaws/javax/xml/stream/events/EntityReference;
    .locals 2
    .parameter "name"
    .parameter "entityDeclaration"

    .prologue
    .line 129
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;)V

    .line 130
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 131
    :cond_0
    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
    .locals 3
    .parameter "content"

    .prologue
    .line 135
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    .line 136
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Namespace;
    .locals 2
    .parameter "namespaceURI"

    .prologue
    .line 141
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 143
    :cond_0
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Namespace;
    .locals 2
    .parameter "prefix"
    .parameter "namespaceURI"

    .prologue
    .line 147
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 149
    :cond_0
    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;
    .locals 2
    .parameter "target"
    .parameter "data"

    .prologue
    .line 153
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 155
    :cond_0
    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
    .locals 2
    .parameter "content"

    .prologue
    .line 159
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 161
    :cond_0
    return-object v0
.end method

.method public createStartDocument()Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;-><init>()V

    .line 166
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 167
    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    .locals 2
    .parameter "encoding"

    .prologue
    .line 171
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 173
    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    .locals 2
    .parameter "encoding"
    .parameter "version"

    .prologue
    .line 177
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 179
    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    .locals 2
    .parameter "encoding"
    .parameter "version"
    .parameter "standalone"

    .prologue
    .line 183
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method public createStartElement(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
    .locals 6
    .parameter "name"
    .parameter "attributes"
    .parameter "namespaces"

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v0

    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
    .locals 2
    .parameter "prefix"
    .parameter "namespaceUri"
    .parameter "localName"

    .prologue
    .line 193
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 195
    :cond_0
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
    .locals 7
    .parameter "prefix"
    .parameter "namespaceUri"
    .parameter "localName"
    .parameter "attributes"
    .parameter "namespaces"

    .prologue
    .line 199
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v0

    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
    .locals 2
    .parameter "prefix"
    .parameter "namespaceUri"
    .parameter "localName"
    .parameter "attributes"
    .parameter "namespaces"
    .parameter "context"

    .prologue
    .line 203
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v0, elem:Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;
    invoke-virtual {v0, p4}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addAttributes(Ljava/util/Iterator;)V

    .line 205
    invoke-virtual {v0, p5}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addNamespaceAttributes(Ljava/util/Iterator;)V

    .line 206
    invoke-virtual {v0, p6}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V

    .line 207
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 208
    :cond_0
    return-object v0
.end method

.method public setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/ZephyrEventFactory;->location:Lcom/amazonaws/javax/xml/stream/Location;

    .line 213
    return-void
.end method
