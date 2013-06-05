.class public interface abstract Lcom/amazonaws/javax/xml/transform/Templates;
.super Ljava/lang/Object;
.source "Templates.java"


# virtual methods
.method public abstract getOutputProperties()Ljava/util/Properties;
.end method

.method public abstract newTransformer()Lcom/amazonaws/javax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
