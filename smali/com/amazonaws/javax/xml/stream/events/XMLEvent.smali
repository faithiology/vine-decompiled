.class public interface abstract Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
.super Ljava/lang/Object;
.source "XMLEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamConstants;


# virtual methods
.method public abstract asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;
.end method

.method public abstract asEndElement()Lcom/amazonaws/javax/xml/stream/events/EndElement;
.end method

.method public abstract asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;
.end method

.method public abstract getEventType()I
.end method

.method public abstract getLocation()Lcom/amazonaws/javax/xml/stream/Location;
.end method

.method public abstract getSchemaType()Lcom/amazonaws/javax/xml/namespace/QName;
.end method

.method public abstract isAttribute()Z
.end method

.method public abstract isCharacters()Z
.end method

.method public abstract isEndDocument()Z
.end method

.method public abstract isEndElement()Z
.end method

.method public abstract isEntityReference()Z
.end method

.method public abstract isNamespace()Z
.end method

.method public abstract isProcessingInstruction()Z
.end method

.method public abstract isStartDocument()Z
.end method

.method public abstract isStartElement()Z
.end method

.method public abstract writeAsEncodedUnicode(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
