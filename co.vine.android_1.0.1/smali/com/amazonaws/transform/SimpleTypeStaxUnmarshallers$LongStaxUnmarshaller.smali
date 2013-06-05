.class public Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Long;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
