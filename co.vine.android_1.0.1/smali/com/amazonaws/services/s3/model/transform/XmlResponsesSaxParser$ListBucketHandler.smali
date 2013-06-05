.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBucketHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currText:Ljava/lang/StringBuilder;

.field private currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

.field private currentOwner:Lcom/amazonaws/services/s3/model/Owner;

.field private insideCommonPrefixes:Z

.field private lastKey:Ljava/lang/String;

.field private listingTruncated:Z

.field private nextMarker:Ljava/lang/String;

.field private objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

.field private requestDelimiter:Ljava/lang/String;

.field private requestMarker:Ljava/lang/String;

.field private requestMaxKeys:I

.field private requestPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    iput v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Examining listing for bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-nez v0, :cond_2

    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    #calls: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Marker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    #calls: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "NextMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "MaxKeys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    #calls: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseInt(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    goto :goto_0

    :cond_5
    const-string v0, "Delimiter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    #calls: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "IsTruncated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto :goto_0

    :cond_7
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for IsTruncated field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "Contents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setKey(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "LastModified"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setLastModified(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-ISO8601 date for LastModified in bucket\'s object listing output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_c
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setETag(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "Size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    #calls: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseLong(Ljava/lang/String;)J
    invoke-static {v2, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$300(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setSize(J)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    if-nez v0, :cond_10

    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    :cond_10
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "DisplayName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_13

    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    const-string v0, "CommonPrefixes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto/16 :goto_0
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerForNextListing()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Unable to find Next Marker or Last Key for truncated listing"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectListing()Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setCommonPrefixes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMaxKeys(I)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setTruncated(Z)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setNextMarker(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setNextMarker(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "S3 response indicates truncated results, but contains no object summaries or common prefixes."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMarker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMaxKeys()J
    .locals 2

    iget v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isListingTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    return v0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "Contents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setBucketName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    goto :goto_0

    :cond_2
    const-string v0, "CommonPrefixes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto :goto_0
.end method
