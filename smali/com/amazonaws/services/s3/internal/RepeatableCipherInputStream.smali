.class public Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;
.super Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;


# instance fields
.field private cipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

.field private unencryptedDataStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->createCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->cipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method private static createCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljavax/crypto/CipherInputStream;
    .locals 2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method


# virtual methods
.method protected reopenWrappedStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->cipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->createCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljavax/crypto/CipherInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
