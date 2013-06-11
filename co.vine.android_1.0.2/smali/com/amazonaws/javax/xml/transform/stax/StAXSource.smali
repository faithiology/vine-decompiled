.class public Lcom/amazonaws/javax/xml/transform/stax/StAXSource;
.super Ljava/lang/Object;
.source "StAXSource.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXSource/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

.field private xmlStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 4
    .parameter "xmlEventReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 87
    iput-object v2, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 90
    iput-object v2, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StAXSource(XMLEventReader) with XMLEventReader == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 129
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 130
    .local v1, eventType:I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 132
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "StAXSource(XMLEventReader) with XMLEventReader not in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 139
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .parameter "xmlStreamReader"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 87
    iput-object v1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 90
    iput-object v1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "StAXSource(XMLStreamReader) with XMLStreamReader == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    .line 170
    .local v0, eventType:I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StAXSource(XMLStreamReader) with XMLStreamReadernot in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 179
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLEventReader()Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getXMLStreamReader()Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 2
    .parameter "systemId"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StAXSource#setSystemId(systemId) cannot set the system identifier for a StAXSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
