.class public abstract Lorg/codehaus/jackson/map/DeserializationProblemHandler;
.super Ljava/lang/Object;
.source "DeserializationProblemHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnknownProperty(Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctxt"
    .parameter
    .parameter "beanOrClass"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 54
    .local p2, deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return v0
.end method
