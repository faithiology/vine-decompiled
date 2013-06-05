.class public Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigIntegerStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/math/BigInteger;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
