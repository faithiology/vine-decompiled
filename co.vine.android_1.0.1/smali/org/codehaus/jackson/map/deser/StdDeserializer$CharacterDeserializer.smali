.class public final Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer$PrimitiveOrWrapperDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .locals 0
    .parameter
    .parameter "nvl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Character;>;"
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 800
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;
    .locals 5
    .parameter "jp"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 809
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_0

    .line 810
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 811
    .local v2, value:I
    if-ltz v2, :cond_1

    const v3, 0xffff

    if-gt v2, v3, :cond_1

    .line 812
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 818
    .end local v2           #value:I
    :goto_0
    return-object v3

    .line 814
    :cond_0
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_1

    .line 816
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 818
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_0

    .line 821
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
