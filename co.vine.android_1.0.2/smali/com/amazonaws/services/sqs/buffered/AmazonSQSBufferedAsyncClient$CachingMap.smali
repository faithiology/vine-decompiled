.class Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/amazonaws/services/sqs/buffered/QueueBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x64

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;->this$0:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBuffer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
