.class public Lcom/amazonaws/services/s3/internal/XmlWriter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field sb:Ljava/lang/StringBuilder;

.field tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    if-ge v0, v2, :cond_0

    invoke-virtual {p2, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :sswitch_0
    const-string v1, "&#9;"

    goto :goto_1

    :sswitch_1
    const-string v1, "&#10;"

    goto :goto_1

    :sswitch_2
    const-string v1, "&#13;"

    goto :goto_1

    :sswitch_3
    const-string v1, "&amp;"

    goto :goto_1

    :sswitch_4
    const-string v1, "&quote;"

    goto :goto_1

    :sswitch_5
    const-string v1, "&lt;"

    goto :goto_1

    :sswitch_6
    const-string v1, "&gt;"

    goto :goto_1

    :cond_2
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x3c -> :sswitch_5
        0x3e -> :sswitch_6
    .end sparse-switch
.end method

.method private writeAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public end()Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 3

    sget-boolean v0, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getBytes()[B
    .locals 2

    sget-boolean v0, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->writeAttr(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    array-length v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->writeAttr(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object p0
.end method
