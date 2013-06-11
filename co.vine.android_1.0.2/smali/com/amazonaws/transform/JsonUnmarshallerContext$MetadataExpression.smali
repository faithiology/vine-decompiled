.class Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/JsonUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataExpression"
.end annotation


# instance fields
.field public expression:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public targetDepth:I

.field final synthetic this$0:Lcom/amazonaws/transform/JsonUnmarshallerContext;


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/JsonUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->this$0:Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    iput p3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->targetDepth:I

    iput-object p4, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    return-void
.end method
