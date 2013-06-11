.class public Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private bucket:Ljava/lang/String;

.field private bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketNotificationConfiguration()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method
