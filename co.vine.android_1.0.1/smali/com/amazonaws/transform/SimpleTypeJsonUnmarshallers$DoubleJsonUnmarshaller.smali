.class public Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Double;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
