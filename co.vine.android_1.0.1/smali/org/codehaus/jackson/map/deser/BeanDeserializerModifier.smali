.class public abstract Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
.super Ljava/lang/Object;
.source "BeanDeserializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .parameter "config"
    .parameter "beanDesc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    return-object p3
.end method

.method public updateBuilder(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 0
    .parameter "config"
    .parameter "beanDesc"
    .parameter "builder"

    .prologue
    .line 36
    return-object p3
.end method
