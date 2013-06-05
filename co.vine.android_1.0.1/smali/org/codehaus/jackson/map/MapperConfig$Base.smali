.class public Lorg/codehaus/jackson/map/MapperConfig$Base;
.super Ljava/lang/Object;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final _dateFormat:Ljava/text/DateFormat;

.field protected final _handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

.field protected final _propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

.field protected final _typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

.field protected final _typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 0
    .parameter
    .parameter "ai"
    .parameter
    .parameter "pns"
    .parameter "tf"
    .parameter
    .parameter "dateFormat"
    .parameter "hi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;",
            "Ljava/text/DateFormat;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, ci:Lorg/codehaus/jackson/map/ClassIntrospector;,"Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, vc:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p6, typer:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;,"Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    .line 769
    iput-object p2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 770
    iput-object p3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .line 771
    iput-object p4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .line 772
    iput-object p5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 773
    iput-object p6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .line 774
    iput-object p7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    .line 775
    iput-object p8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    .line 776
    return-void
.end method


# virtual methods
.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    return-object v0
.end method

.method public getPropertyNamingStrategy()Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    return-object v0
.end method

.method public getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public getTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    return-object v0
.end method

.method public getVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    return-object v0
.end method

.method public withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter "ai"

    .prologue
    .line 790
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lorg/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, ci:Lorg/codehaus/jackson/map/ClassIntrospector;,"Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter "df"

    .prologue
    .line 815
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter "hi"

    .prologue
    .line 820
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter "pns"

    .prologue
    .line 800
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter "tf"

    .prologue
    .line 805
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, typer:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;,"Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, vc:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Base;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method
