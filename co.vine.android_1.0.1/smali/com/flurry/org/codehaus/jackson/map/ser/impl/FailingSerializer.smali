.class public final Lcom/flurry/org/codehaus/jackson/map/ser/impl/FailingSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "FailingSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 26
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 27
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .parameter "provider"
    .parameter "typeHint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonGenerationException;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
