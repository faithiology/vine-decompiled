.class public Lcom/amazonaws/services/s3/model/EncryptionMaterials;
.super Ljava/lang/Object;


# instance fields
.field private keyPair:Ljava/security/KeyPair;

.field private symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public getAccessor()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public getMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
