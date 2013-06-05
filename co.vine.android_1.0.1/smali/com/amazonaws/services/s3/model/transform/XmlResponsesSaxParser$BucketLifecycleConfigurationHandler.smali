.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field inTransition:Z

.field private rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

.field private transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "LifecycleConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Rule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto :goto_0

    :cond_2
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Transition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    goto :goto_0

    :cond_6
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    goto :goto_0

    :cond_7
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    if-nez v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Expiration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Days"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationInDays(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDays(I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 2

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string v0, "LifecycleConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "Rule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto :goto_0

    :cond_2
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    goto :goto_0

    :cond_3
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expiration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Days"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method
