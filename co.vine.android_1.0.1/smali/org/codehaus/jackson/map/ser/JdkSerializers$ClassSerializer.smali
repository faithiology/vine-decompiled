.class public final Lorg/codehaus/jackson/map/ser/JdkSerializers$ClassSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "JdkSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/JdkSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter "provider"
    .parameter "typeHint"

    .prologue
    .line 191
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/JdkSerializers$ClassSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Class;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/JdkSerializers$ClassSerializer;->serialize(Ljava/lang/Class;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
