.class public Lcom/amazonaws/util/XMLWriter;
.super Ljava/lang/Object;


# static fields
.field private static final PROLOG:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"


# instance fields
.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootElement:Z

.field private final writer:Ljava/io/Writer;

.field private final xmlns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/util/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    iput-object p1, p0, Lcom/amazonaws/util/XMLWriter;->writer:Ljava/io/Writer;

    iput-object p2, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to write XML document"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public endElement()Lcom/amazonaws/util/XMLWriter;
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)Lcom/amazonaws/util/XMLWriter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    :cond_0
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lcom/amazonaws/util/XMLWriter;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/amazonaws/util/XMLWriter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/util/Date;)Lcom/amazonaws/util/XMLWriter;
    .locals 1

    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    return-object p0
.end method
