.class public Lcom/amazonaws/javax/xml/transform/stream/StreamResult;
.super Ljava/lang/Object;
.source "StreamResult.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamResult/feature"


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private systemId:Ljava/lang/String;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "outputStream"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "outputStream"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    .line 129
    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    .line 153
    return-void
.end method
