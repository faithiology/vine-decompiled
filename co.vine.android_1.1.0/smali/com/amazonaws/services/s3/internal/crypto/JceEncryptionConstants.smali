.class public Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;
.super Ljava/lang/Object;


# static fields
.field public static SYMMETRIC_CIPHER_BLOCK_SIZE:I

.field public static SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

.field public static SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

.field public static SYMMETRIC_KEY_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AES"

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    const-string v0, "AES/CBC/PKCS5Padding"

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

    const/16 v0, 0x100

    sput v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_LENGTH:I

    const/16 v0, 0x10

    sput v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
