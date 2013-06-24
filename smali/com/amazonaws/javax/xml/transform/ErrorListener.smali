.class public interface abstract Lcom/amazonaws/javax/xml/transform/ErrorListener;
.super Ljava/lang/Object;
.source "ErrorListener.java"


# virtual methods
.method public abstract error(Lcom/amazonaws/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract fatalError(Lcom/amazonaws/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract warning(Lcom/amazonaws/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method
