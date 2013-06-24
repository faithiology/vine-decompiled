.class public Lcom/googlecode/javacpp/Builder$Piper;
.super Ljava/lang/Thread;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Piper"
.end annotation


# instance fields
.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "is"
    .parameter "os"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder$Piper;->is:Ljava/io/InputStream;

    .line 133
    iput-object p2, p0, Lcom/googlecode/javacpp/Builder$Piper;->os:Ljava/io/OutputStream;

    .line 134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 141
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 143
    .local v0, buffer:[B
    :goto_0
    iget-object v3, p0, Lcom/googlecode/javacpp/Builder$Piper;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, length:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/googlecode/javacpp/Builder$Piper;->os:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0           #buffer:[B
    .end local v2           #length:I
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not pipe from the InputStream to the OutputStream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method
