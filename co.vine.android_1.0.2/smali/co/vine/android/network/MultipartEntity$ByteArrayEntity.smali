.class public Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lco/vine/android/network/MultipartEntity$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/network/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayEntity"
.end annotation


# instance fields
.field private final mValue:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B

    .line 122
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    return-void
.end method
