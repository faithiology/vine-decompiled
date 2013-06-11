.class public Lcom/amazonaws/javax/xml/transform/sax/SAXResult;
.super Ljava/lang/Object;
.source "SAXResult.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXResult/feature"


# instance fields
.field private handler:Lorg/xml/sax/ContentHandler;

.field private lexhandler:Lorg/xml/sax/ext/LexicalHandler;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    .line 86
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 110
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    .line 129
    return-void
.end method
