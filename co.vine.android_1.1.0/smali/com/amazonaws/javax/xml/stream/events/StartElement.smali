.class public interface abstract Lcom/amazonaws/javax/xml/stream/events/StartElement;
.super Ljava/lang/Object;
.source "StartElement.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/XMLEvent;


# virtual methods
.method public abstract getAttributeByName(Lcom/amazonaws/javax/xml/namespace/QName;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
.end method

.method public abstract getAttributes()Ljava/util/Iterator;
.end method

.method public abstract getName()Lcom/amazonaws/javax/xml/namespace/QName;
.end method

.method public abstract getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamespaces()Ljava/util/Iterator;
.end method
