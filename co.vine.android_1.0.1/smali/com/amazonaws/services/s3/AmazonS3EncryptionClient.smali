.class public Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.super Lcom/amazonaws/services/s3/AmazonS3Client;


# static fields
.field private static final USER_AGENT:Ljava/lang/String;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field private currentMultipartUploadSecretKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    const-class v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    const-string v0, "EncryptionMaterialsProvider parameter must not be null."

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CryptoConfiguration parameter must not be null."

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    const-string v0, "EncryptionMaterialsProvider parameter must not be null."

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CryptoConfiguration parameter must not be null."

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 3

    const/4 v0, 0x0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v2, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private decryptObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method private decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method private getInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve instruction file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    return-object v1
.end method

.method private putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    invoke-super {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->addClientMarker(Ljava/lang/String;)V

    return-object p1
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getFirstInitializationVector()[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v5

    new-instance v6, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Ljavax/crypto/Cipher;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v0

    return-object v0
.end method

.method public deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionDeleteObjectRequest(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    return-void
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "The destination file parameter must be specified when downloading an object directly to a file"

    invoke-direct {p0, p2, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v0, 0x2800

    :try_start_1
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store object contents to disk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v0

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_7
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getAdjustedCryptoRange([J)[J

    move-result-object v0

    if-eqz v0, :cond_0

    aget-wide v2, v0, v2

    aget-wide v4, v0, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->isEncryptionInfoInMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->adjustOutputToDesiredRange(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->getInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->isEncryptionInfoInInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->decryptObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    throw v1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, v3, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v2

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setFirstInitializationVector([B)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    goto :goto_0
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    sget v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v6, v0

    rem-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with the exception of the last part.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Otherwise encryption adds extra padding that will corrupt the final object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No client-side information available on upload ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getNextInitializationVector()[B

    move-result-object v3

    new-instance v4, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-lez v5, :cond_3

    invoke-virtual {p1, v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part, otherwise it will cause the encrypted data to be corrupted."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    invoke-virtual {p1, v8, v9}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v2

    instance-of v3, v1, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    if-eqz v3, :cond_6

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->getBlock()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    return-object v2

    :cond_6
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to access last block of encrypted data"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
