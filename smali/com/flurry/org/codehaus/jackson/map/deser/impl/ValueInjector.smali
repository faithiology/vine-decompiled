.class public Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;
.super Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
.source "ValueInjector.java"


# instance fields
.field protected final _valueId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 0
    .parameter "propertyName"
    .parameter "type"
    .parameter "contextAnnotations"
    .parameter "mutator"
    .parameter "valueId"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 32
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public findValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "beanInstance"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inject(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "beanInstance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;->findValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
