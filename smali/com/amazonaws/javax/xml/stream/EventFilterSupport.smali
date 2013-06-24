.class public Lcom/amazonaws/javax/xml/stream/EventFilterSupport;
.super Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;
.source "EventFilterSupport.java"


# instance fields
.field fEventFilter:Lcom/amazonaws/javax/xml/stream/EventFilter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Lcom/amazonaws/javax/xml/stream/EventFilter;)V
    .locals 0
    .parameter "eventReader"
    .parameter "eventFilter"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->setParent(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V

    .line 62
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->fEventFilter:Lcom/amazonaws/javax/xml/stream/EventFilter;

    .line 63
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 87
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->fEventFilter:Lcom/amazonaws/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lcom/amazonaws/javax/xml/stream/EventFilter;->accept(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :goto_0
    return-object v0

    .restart local v0       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    goto :goto_0

    .line 94
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 102
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->fEventFilter:Lcom/amazonaws/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lcom/amazonaws/javax/xml/stream/EventFilter;->accept(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :goto_0
    return-object v0

    .restart local v0       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->nextTag()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    goto :goto_0

    .line 109
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 116
    .local v0, event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 124
    .end local v0           #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_0
    :goto_0
    return-object v0

    .line 118
    .restart local v0       #event:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->fEventFilter:Lcom/amazonaws/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lcom/amazonaws/javax/xml/stream/EventFilter;->accept(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/util/EventReaderDelegate;->next()Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    goto :goto_0
.end method
