.class public Lcom/flurry/org/apache/avro/io/DecoderFactory;
.super Ljava/lang/Object;
.source "DecoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/DecoderFactory$1;,
        Lcom/flurry/org/apache/avro/io/DecoderFactory$DefaultDecoderFactory;
    }
.end annotation


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/DecoderFactory;


# instance fields
.field binaryDecoderBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/flurry/org/apache/avro/io/DecoderFactory$DefaultDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/DecoderFactory$DefaultDecoderFactory;-><init>(Lcom/flurry/org/apache/avro/io/DecoderFactory$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x2000

    iput v0, p0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    .line 44
    return-void
.end method

.method public static defaultFactory()Lcom/flurry/org/apache/avro/io/DecoderFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lcom/flurry/org/apache/avro/io/DecoderFactory;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    return-object v0
.end method


# virtual methods
.method public binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "in"
    .parameter "reuse"

    .prologue
    .line 132
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>(Ljava/io/InputStream;I)V

    .line 135
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    invoke-virtual {p2, p1, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure(Ljava/io/InputStream;I)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    goto :goto_0
.end method

.method public binaryDecoder([BIILcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "reuse"

    .prologue
    .line 214
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>([BII)V

    .line 217
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    goto :goto_0
.end method

.method public binaryDecoder([BLcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "bytes"
    .parameter "reuse"

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BIILcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    return-object v0
.end method

.method public configureDecoderBufferSize(I)Lcom/flurry/org/apache/avro/io/DecoderFactory;
    .locals 1
    .parameter "size"

    .prologue
    .line 78
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 79
    const/16 p1, 0x20

    .line 80
    :cond_0
    const/high16 v0, 0x100

    if-le p1, v0, :cond_1

    .line 81
    const/high16 p1, 0x100

    .line 82
    :cond_1
    iput p1, p0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    .line 83
    return-object p0
.end method

.method public createBinaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 1
    .parameter "in"
    .parameter "reuse"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    return-object v0
.end method

.method public createBinaryDecoder([BIILcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "reuse"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>([BII)V

    .line 187
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    goto :goto_0
.end method

.method public createBinaryDecoder([BLcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "bytes"
    .parameter "reuse"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BIILcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    return-object v0
.end method

.method public directBinaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .parameter "in"
    .parameter "reuse"

    .prologue
    .line 172
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;-><init>(Ljava/io/InputStream;)V

    .line 175
    .end local p2
    :goto_0
    return-object v0

    .restart local p2
    :cond_1
    check-cast p2, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    .end local p2
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->configure(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfiguredBufferSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    return v0
.end method

.method public jsonDecoder(Lcom/flurry/org/apache/avro/Schema;Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/JsonDecoder;
    .locals 1
    .parameter "schema"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/flurry/org/apache/avro/io/JsonDecoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public jsonDecoder(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/JsonDecoder;
    .locals 1
    .parameter "schema"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/flurry/org/apache/avro/io/JsonDecoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)V

    return-object v0
.end method

.method public resolvingDecoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .locals 1
    .parameter "writer"
    .parameter "reader"
    .parameter "wrapped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    return-object v0
.end method

.method public validatingDecoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ValidatingDecoder;
    .locals 1
    .parameter "schema"
    .parameter "wrapped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    return-object v0
.end method
