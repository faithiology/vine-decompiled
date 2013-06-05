.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketTaggingConfigurationHandler"
.end annotation


# instance fields
.field private configuration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

.field private tagKey:Ljava/lang/String;

.field private tagSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/TagSet;",
            ">;"
        }
    .end annotation
.end field

.field private tagValue:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

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

    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagKey:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "Value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagValue:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tags:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "TagSet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagSets:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/s3/model/TagSet;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tags:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/TagSet;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "Tagging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagSets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->setTagSets(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "Tagging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagSets:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    const-string v0, "TagSet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tags:Ljava/util/Map;

    goto :goto_0

    :cond_1
    const-string v0, "Tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->tagValue:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_3
    const-string v0, "Value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unexpected tag <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method
