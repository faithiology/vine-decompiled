.class public Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;
.super Ljava/lang/Object;
.source "XMLEventReaderImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLEventReader;


# instance fields
.field private fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

.field private fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

.field protected fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

.field protected fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 67
    const-string v0, "com.amazonaws.javax.xml.stream.allocator"

    invoke-interface {p1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    .line 68
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEventAllocatorImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;->allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 72
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
    .line 115
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->close()V

    .line 116
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 127
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 128
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v5, "parser must be on START_ELEMENT to read next text"

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v6}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v4

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, data:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    if-eqz v4, :cond_f

    .line 141
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 142
    .local v2, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 143
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    .line 146
    .local v3, type:I
    if-eq v3, v8, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_7

    .line 148
    :cond_1
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    .line 163
    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, buffer:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    .line 173
    .restart local v2       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :goto_1
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v4

    if-eq v4, v6, :cond_e

    .line 174
    if-eq v3, v8, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-ne v3, v4, :cond_a

    .line 176
    :cond_4
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    .line 193
    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    .line 197
    .restart local v2       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    goto :goto_1

    .line 150
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    :cond_7
    const/16 v4, 0x9

    if-ne v3, v4, :cond_8

    .line 151
    check-cast v2, Lcom/amazonaws/javax/xml/stream/events/EntityReference;

    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/EntityReference;->getDeclaration()Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 153
    .restart local v2       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_8
    if-eq v3, v9, :cond_2

    if-eq v3, v7, :cond_2

    .line 155
    if-ne v3, v5, :cond_9

    .line 156
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v5, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v4

    .line 158
    :cond_9
    if-ne v3, v6, :cond_2

    .line 159
    const-string v4, ""

    .line 205
    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .end local v3           #type:I
    :goto_3
    return-object v4

    .line 178
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .restart local v3       #type:I
    :cond_a
    const/16 v4, 0x9

    if-ne v3, v4, :cond_b

    .line 179
    check-cast v2, Lcom/amazonaws/javax/xml/stream/events/EntityReference;

    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/EntityReference;->getDeclaration()Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v1

    .line 180
    goto :goto_2

    .line 181
    .restart local v2       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_b
    if-eq v3, v9, :cond_5

    if-eq v3, v7, :cond_5

    .line 183
    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 184
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v5, "unexpected end of document when reading element text content"

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_c
    if-ne v3, v5, :cond_d

    .line 186
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v5, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v4

    .line 189
    :cond_d
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unexpected event type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v4

    .line 198
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 203
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .end local v3           #type:I
    :cond_f
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v5}, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;->allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-object v4, v1

    .line 205
    goto :goto_3
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
    .line 214
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, next:Z
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, object:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    .local v0, object:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    return-object v0

    .line 266
    .local v0, object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 267
    .local v1, streamException:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 269
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 94
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 95
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->next()I

    .line 100
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;->allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 103
    :cond_1
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 104
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 227
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    if-eqz v2, :cond_6

    .line 229
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 230
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 231
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 234
    .local v1, eventType:I
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 245
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eq v1, v3, :cond_4

    if-ne v1, v4, :cond_5

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 249
    goto :goto_0

    .line 251
    :cond_5
    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 252
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "expected start or end tag"

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v2

    .line 258
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .end local v1           #eventType:I
    :cond_6
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->nextTag()I

    .line 259
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v3}, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;->allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fLastEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    :cond_7
    return-object v0
.end method

.method public peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 294
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->next()I

    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fXMLReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;->allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 292
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
