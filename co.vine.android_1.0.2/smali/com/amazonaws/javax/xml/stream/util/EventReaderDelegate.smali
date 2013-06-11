.class public Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "EventReaderDelegate.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 76
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
    .line 118
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->close()V

    .line 119
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

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
    .line 136
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->remove()V

    .line 141
    return-void
.end method

.method public setParent(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->reader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 84
    return-void
.end method
