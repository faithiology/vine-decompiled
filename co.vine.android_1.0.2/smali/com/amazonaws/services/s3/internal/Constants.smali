.class public Lcom/amazonaws/services/s3/internal/Constants;
.super Ljava/lang/Object;


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x20000

.field public static final FAILED_PRECONDITION_STATUS_CODE:I = 0x19c

.field public static final GB:J = 0x40000000L

.field public static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static final KB:I = 0x400

.field public static final MAXIMUM_UPLOAD_PARTS:I = 0x2710

.field public static final MB:I = 0x100000

.field public static final NULL_VERSION_ID:Ljava/lang/String; = "null"

.field public static S3_HOSTNAME:Ljava/lang/String; = null

.field public static S3_SERVICE_NAME:Ljava/lang/String; = null

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://s3.amazonaws.com/doc/2006-03-01/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "s3.amazonaws.com"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    const-string v0, "Amazon S3"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    const-string v0, "UTF-8"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
