.class public Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;
.super Ljava/lang/Object;
.source "XMLStreamFilterImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# instance fields
.field private fCurrentEvent:I

.field private fEventAccepted:Z

.field private fStreamAdvancedByHasNext:Z

.field private fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

.field private fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/StreamFilter;)V
    .locals 4
    .parameter "reader"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    .line 66
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 68
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 73
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 78
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 79
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1, v2}, Lcom/amazonaws/javax/xml/stream/StreamFilter;->accept(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->findNextEvent()I
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, xs:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while creating a stream Filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findNextEvent()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 163
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/StreamFilter;->accept(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 165
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_1
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 172
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private findNextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 180
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/StreamFilter;->accept(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 182
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_1
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 186
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    goto :goto_0

    .line 188
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
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
    .line 195
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->close()V

    .line 196
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1
    .parameter "index"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

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
    .line 275
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/amazonaws/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

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
    .line 429
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v0

    return v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-nez v2, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->findNextEvent()I

    move-result v2

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    :cond_2
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 110
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 114
    :cond_0
    return v0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->findNextEvent()I

    move-result v0

    .line 113
    .local v0, event:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The stream reader has reached the end of the document, or there are no more  items to return"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    if-ne v1, v2, :cond_2

    .line 128
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 129
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 134
    :cond_1
    return v0

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->findNextTag()I

    move-result v0

    .line 133
    .local v0, event:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The stream reader has reached the end of the document, or there are no more  items to return"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 531
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method protected setStreamFilter(Lcom/amazonaws/javax/xml/stream/StreamFilter;)V
    .locals 0
    .parameter "sf"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Lcom/amazonaws/javax/xml/stream/StreamFilter;

    .line 100
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
