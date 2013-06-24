.class public Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;
.super Ljava/lang/Object;
.source "StreamReaderDelegate.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# instance fields
.field private reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 75
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->close()V

    .line 127
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1
    .parameter "index"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceUri"
    .parameter "localName"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/amazonaws/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 1
    .parameter "sourceStart"
    .parameter "target"
    .parameter "targetStart"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v0

    return v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setParent(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 83
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/StreamReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
