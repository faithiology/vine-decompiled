.class public Lcom/amazonaws/javax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private inputSource:Lorg/xml/sax/InputSource;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0
    .parameter "inputSource"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 0
    .parameter "reader"
    .parameter "inputSource"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 97
    iput-object p2, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 98
    return-void
.end method

.method public static sourceToInputSource(Lcom/amazonaws/javax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .locals 3
    .parameter "source"

    .prologue
    .line 211
    instance-of v2, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_0

    .line 212
    check-cast p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;

    .end local p0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 223
    .restart local p0
    :goto_0
    return-object v0

    .line 213
    :cond_0
    instance-of v2, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 214
    check-cast v1, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;

    .line 215
    .local v1, ss:Lcom/amazonaws/javax/xml/transform/stream/StreamSource;
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, isource:Lorg/xml/sax/InputSource;
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 219
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0           #isource:Lorg/xml/sax/InputSource;
    .end local v1           #ss:Lcom/amazonaws/javax/xml/transform/stream/StreamSource;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0
    .parameter "inputSource"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 141
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1
    .parameter "systemId"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 123
    return-void
.end method
