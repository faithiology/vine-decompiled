.class public interface abstract Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;
.super Ljava/lang/Object;
.source "XMLEventAllocator.java"


# virtual methods
.method public abstract allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract allocate(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/util/XMLEventConsumer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract newInstance()Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;
.end method
