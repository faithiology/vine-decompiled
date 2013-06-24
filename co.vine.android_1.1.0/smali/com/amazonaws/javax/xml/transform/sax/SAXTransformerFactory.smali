.class public abstract Lcom/amazonaws/javax/xml/transform/sax/SAXTransformerFactory;
.super Lcom/amazonaws/javax/xml/transform/TransformerFactory;
.source "SAXTransformerFactory.java"


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

.field public static final FEATURE_XMLFILTER:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/transform/TransformerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newTemplatesHandler()Lcom/amazonaws/javax/xml/transform/sax/TemplatesHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler()Lcom/amazonaws/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Lcom/amazonaws/javax/xml/transform/Templates;)Lcom/amazonaws/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Lcom/amazonaws/javax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Lcom/amazonaws/javax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
