.class public Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteBufferJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to unmarshall XML data into a ByteBuffer"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
