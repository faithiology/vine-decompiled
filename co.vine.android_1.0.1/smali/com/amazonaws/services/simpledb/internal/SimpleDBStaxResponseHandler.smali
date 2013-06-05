.class public Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;
.super Lcom/amazonaws/http/StaxResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/http/StaxResponseHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    return-void
.end method


# virtual methods
.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V
    .locals 3

    const-string v0, "ResponseMetadata/BoxUsage"

    const/4 v1, 0x2

    const-string v2, "BOX_USAGE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
