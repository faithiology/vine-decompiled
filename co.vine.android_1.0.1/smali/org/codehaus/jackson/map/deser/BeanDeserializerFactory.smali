.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
.super Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final instance:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;


# instance fields
.field protected final _factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 187
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;-><init>()V

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance p1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    .end local p1
    invoke-direct {p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>()V

    .line 209
    .restart local p1
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    .line 210
    return-void
.end method

.method static synthetic access$000()[Lorg/codehaus/jackson/map/Deserializers;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->NO_DESERIALIZERS:[Lorg/codehaus/jackson/map/Deserializers;

    return-object v0
.end method


# virtual methods
.method protected _addDeserializerConstructors(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 17
    .parameter "config"
    .parameter "beanDesc"
    .parameter
    .parameter "intr"
    .parameter "creators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 735
    .local p3, vchecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 736
    .local v9, ctor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v8

    .line 737
    .local v8, argCount:I
    const/4 v1, 0x1

    if-lt v8, v1, :cond_0

    .line 740
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v11

    .line 741
    .local v11, isCreator:Z
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v12

    .line 743
    .local v12, isVisible:Z
    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 748
    .local v6, param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 750
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v15

    .line 751
    .local v15, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v15, v1, :cond_3

    .line 752
    if-nez v11, :cond_2

    if-eqz v12, :cond_0

    .line 753
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addStringConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 757
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_4

    const-class v1, Ljava/lang/Integer;

    if-ne v15, v1, :cond_6

    .line 758
    :cond_4
    if-nez v11, :cond_5

    if-eqz v12, :cond_0

    .line 759
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addIntConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 763
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_7

    const-class v1, Ljava/lang/Long;

    if-ne v15, v1, :cond_9

    .line 764
    :cond_7
    if-nez v11, :cond_8

    if-eqz v12, :cond_0

    .line 765
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addLongConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 770
    :cond_9
    if-eqz v11, :cond_0

    .line 771
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addDelegatingConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 777
    .end local v15           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    const/4 v1, 0x1

    new-array v14, v1, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 778
    .local v14, properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v14, v16

    .line 779
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v14}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addPropertyConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 781
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v14           #properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_b
    if-nez v11, :cond_c

    if-eqz v12, :cond_0

    .line 787
    :cond_c
    const/4 v7, 0x0

    .line 788
    .local v7, annotationFound:Z
    const/4 v13, 0x0

    .line 789
    .local v13, notAnnotatedParamFound:Z
    new-array v14, v8, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 790
    .restart local v14       #properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_13

    .line 791
    invoke-virtual {v9, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 792
    .restart local v6       #param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    if-nez v6, :cond_f

    const/4 v4, 0x0

    .line 795
    .restart local v4       #name:Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    const/4 v1, 0x1

    :goto_3
    or-int/2addr v13, v1

    .line 796
    if-nez v13, :cond_11

    const/4 v1, 0x1

    :goto_4
    or-int/2addr v7, v1

    .line 797
    if-eqz v13, :cond_12

    if-nez v7, :cond_e

    if-eqz v11, :cond_12

    .line 798
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    .end local v4           #name:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 795
    .restart local v4       #name:Ljava/lang/String;
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 796
    :cond_11
    const/4 v1, 0x0

    goto :goto_4

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 800
    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v14, v5

    .line 790
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 802
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    :cond_13
    if-eqz v7, :cond_0

    .line 803
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v14}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addPropertyConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 806
    .end local v5           #i:I
    .end local v7           #annotationFound:Z
    .end local v8           #argCount:I
    .end local v9           #ctor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v11           #isCreator:Z
    .end local v12           #isVisible:Z
    .end local v13           #notAnnotatedParamFound:Z
    .end local v14           #properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_14
    return-void
.end method

.method protected _addDeserializerFactoryMethods(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 13
    .parameter "config"
    .parameter "beanDesc"
    .parameter
    .parameter "intr"
    .parameter "creators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 814
    .local p3, vchecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 815
    .local v8, factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v7

    .line 816
    .local v7, argCount:I
    const/4 v1, 0x1

    if-lt v7, v1, :cond_0

    .line 819
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v10

    .line 821
    .local v10, isCreator:Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_a

    .line 825
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 827
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v12

    .line 828
    .local v12, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v12, v1, :cond_3

    .line 829
    if-nez v10, :cond_2

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addStringFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 834
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v1, :cond_4

    const-class v1, Ljava/lang/Integer;

    if-ne v12, v1, :cond_6

    .line 835
    :cond_4
    if-nez v10, :cond_5

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addIntFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 840
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v1, :cond_7

    const-class v1, Ljava/lang/Long;

    if-ne v12, v1, :cond_9

    .line 841
    :cond_7
    if-nez v10, :cond_8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addLongFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 846
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addDelegatingFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto/16 :goto_0

    .line 855
    .end local v4           #name:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    :cond_b
    new-array v11, v7, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 861
    .local v11, properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_e

    .line 862
    invoke-virtual {v8, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 863
    .local v6, param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    .line 865
    .restart local v4       #name:Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 866
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of factory method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 868
    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v11, v5

    .line 861
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 870
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #param:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    :cond_e
    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v11}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->addPropertyFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 872
    .end local v5           #i:I
    .end local v7           #argCount:I
    .end local v8           #factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v10           #isCreator:Z
    .end local v11           #properties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_f
    return-void
.end method

.method protected _findCustomArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "property"
    .parameter "elementTypeDeserializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 276
    .local p6, elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 277
    invoke-interface/range {v0 .. v6}, Lorg/codehaus/jackson/map/Deserializers;->findArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 279
    .local v7, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v7, :cond_0

    .line 283
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v7           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected _findCustomBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "beanDesc"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 391
    invoke-interface/range {v0 .. v5}, Lorg/codehaus/jackson/map/Deserializers;->findBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 392
    .local v6, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 396
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v6           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "beanDesc"
    .parameter "property"
    .parameter "elementTypeDeserializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 293
    .local p7, elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 294
    invoke-interface/range {v0 .. v7}, Lorg/codehaus/jackson/map/Deserializers;->findCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 296
    .local v8, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 300
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v8           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "beanDesc"
    .parameter "property"
    .parameter "elementTypeDeserializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 310
    .local p7, elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 311
    invoke-interface/range {v0 .. v7}, Lorg/codehaus/jackson/map/Deserializers;->findCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 313
    .local v8, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 317
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v8           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .parameter
    .parameter "config"
    .parameter "beanDesc"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 325
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 326
    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 327
    .local v1, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 331
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v1           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "beanDesc"
    .parameter "property"
    .parameter "keyDeserializer"
    .parameter "elementTypeDeserializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 342
    .local p8, elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 343
    invoke-interface/range {v0 .. v8}, Lorg/codehaus/jackson/map/Deserializers;->findMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 345
    .local v9, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 349
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v9           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .parameter "type"
    .parameter "config"
    .parameter "provider"
    .parameter "beanDesc"
    .parameter "property"
    .parameter "keyDeserializer"
    .parameter "elementTypeDeserializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 360
    .local p8, elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 361
    invoke-interface/range {v0 .. v8}, Lorg/codehaus/jackson/map/Deserializers;->findMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 363
    .local v9, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 367
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v9           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .parameter
    .parameter "config"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 375
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 376
    .local v0, d:Lorg/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 377
    .local v1, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 381
    .end local v0           #d:Lorg/codehaus/jackson/map/Deserializers;
    .end local v1           #deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _mapAbstractType2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter "config"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 510
    .local v1, currClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasAbstractTypeResolvers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 511
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 512
    .local v3, resolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->findTypeMapping(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 513
    .local v0, concrete:Lorg/codehaus/jackson/type/JavaType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 527
    .end local v0           #concrete:Lorg/codehaus/jackson/type/JavaType;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v0

    .line 520
    .end local v3           #resolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAbstractTypeResolver()Lorg/codehaus/jackson/map/AbstractTypeResolver;

    move-result-object v3

    .line 521
    .restart local v3       #resolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    if-eqz v3, :cond_3

    .line 522
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->findTypeMapping(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 523
    .restart local v0       #concrete:Lorg/codehaus/jackson/type/JavaType;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 527
    .end local v0           #concrete:Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 32
    .parameter "config"
    .parameter "beanDesc"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v29

    .line 888
    .local v29, vchecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v30, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 889
    sget-object v30, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface/range {v29 .. v30}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v29

    .line 891
    :cond_0
    sget-object v30, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 892
    sget-object v30, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface/range {v29 .. v30}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v29

    .line 895
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v29

    .line 897
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;

    move-result-object v27

    .line 899
    .local v27, setters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnySetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v10

    .line 902
    .local v10, anySetter:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v21

    .line 903
    .local v21, intr:Lorg/codehaus/jackson/map/AnnotationIntrospector;
    const/16 v18, 0x0

    .line 905
    .local v18, ignoreAny:Z
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v5

    .line 906
    .local v5, B:Ljava/lang/Boolean;
    if-eqz v5, :cond_2

    .line 907
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 908
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 912
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v19

    .line 919
    .local v19, ignored:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 920
    .local v24, propName:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_0

    .line 923
    .end local v24           #propName:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v6

    .line 924
    .local v6, ac:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->ignoredMemberMethods()Ljava/lang/Iterable;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 925
    .local v9, am:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v22

    .line 926
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 927
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_1

    .line 930
    .end local v9           #am:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v22           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->ignoredFields()Ljava/lang/Iterable;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 931
    .local v8, af:Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_2

    .line 935
    .end local v8           #af:Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    :cond_6
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 938
    .local v20, ignoredTypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 939
    .local v12, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 940
    .restart local v22       #name:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 941
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 943
    .local v26, setter:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v28

    .line 944
    .local v28, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 946
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 949
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v23

    .line 950
    .local v23, prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v23, :cond_7

    .line 951
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 955
    .end local v12           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v26           #setter:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v28           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    if-eqz v10, :cond_a

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructAnySetter(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setAnySetter(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;)V

    .line 959
    :cond_a
    new-instance v7, Ljava/util/HashSet;

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 964
    .local v7, addedProps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findDeserializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 965
    .local v14, fieldsByProp:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 966
    .local v11, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 967
    .restart local v22       #name:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_b

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 968
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 970
    .local v13, field:Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v13}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v28

    .line 971
    .restart local v28       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 973
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_4

    .line 976
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v23

    .line 977
    .restart local v23       #prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v23, :cond_b

    .line 978
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 979
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 990
    .end local v11           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    .end local v13           #field:Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v28           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_d
    sget-object v30, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 996
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findGetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v16

    .line 998
    .local v16, getters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 999
    .restart local v12       #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 1001
    .local v15, getter:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v15}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v25

    .line 1002
    .local v25, rt:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v30, Ljava/util/Collection;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v30

    if-nez v30, :cond_f

    const-class v30, Ljava/util/Map;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 1005
    :cond_f
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1006
    .restart local v22       #name:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_e

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 1007
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v15}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 1008
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1013
    .end local v12           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    .end local v15           #getter:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v16           #getters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    .end local v22           #name:Ljava/lang/String;
    .end local v25           #rt:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method protected addReferenceProperties(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 6
    .parameter "config"
    .parameter "beanDesc"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findBackReferenceProperties()Ljava/util/Map;

    move-result-object v4

    .line 1027
    .local v4, refs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    if-eqz v4, :cond_1

    .line 1028
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1029
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1030
    .local v3, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1031
    .local v2, m:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    instance-of v5, v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v5, :cond_0

    .line 1032
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .end local v2           #m:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1035
    .restart local v2       #m:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .end local v2           #m:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1040
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .parameter "config"
    .parameter "type"
    .parameter "beanDesc"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    new-instance v1, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    invoke-direct {v1, p2}, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 614
    :cond_0
    return-object v1

    .line 593
    :cond_1
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 594
    .local v0, builder:Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerCreators(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setCreators(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 596
    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 598
    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addReferenceProperties(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 601
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 603
    .local v3, mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    goto :goto_0

    .line 606
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_2
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 609
    .local v1, deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 611
    .restart local v3       #mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    goto :goto_1
.end method

.method public buildThrowableDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .parameter "config"
    .parameter "type"
    .parameter "beanDesc"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 625
    .local v1, builder:Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerCreators(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setCreators(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 627
    invoke-virtual {p0, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 634
    const-string v7, "initCause"

    sget-object v8, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p3, v7, v8}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 635
    .local v0, am:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v0, :cond_0

    .line 636
    const-string v7, "cause"

    invoke-virtual {p0, p1, p3, v7, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    .line 637
    .local v6, prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    .line 638
    invoke-virtual {v1, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 643
    .end local v6           #prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    const-string v7, "localizedMessage"

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 647
    const-string v7, "message"

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 650
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 651
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 652
    .local v5, mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    goto :goto_0

    .line 655
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_1
    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 660
    .local v2, deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    instance-of v7, v2, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v7, :cond_2

    .line 661
    new-instance v3, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;

    check-cast v2, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v2           #deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-direct {v3, v2}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .local v3, deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v2, v3

    .line 665
    .end local v3           #deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v2       #deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_2
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 666
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 667
    .restart local v5       #mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_1

    .line 670
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mod:Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_3
    return-object v2
.end method

.method protected constructAnySetter(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 8
    .parameter "config"
    .parameter "beanDesc"
    .parameter "setter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1051
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1055
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1056
    .local v3, type:Lorg/codehaus/jackson/type/JavaType;
    new-instance v5, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v5, v0, v3, v1, p3}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v5, property:Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1057
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1064
    invoke-virtual {p0, p1, p3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1065
    .local v6, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 1066
    new-instance v7, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v7, v5, p3, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;)V

    .line 1067
    .local v7, prop:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    invoke-virtual {v7, v6}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1074
    .end local v7           #prop:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    :goto_0
    return-object v7

    .line 1073
    :cond_1
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/BeanProperty$Std;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1074
    new-instance v7, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v7, v5, p3, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;)V

    goto :goto_0
.end method

.method protected constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 1
    .parameter "beanDesc"

    .prologue
    .line 688
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .parameter "config"
    .parameter "beanDesc"
    .parameter "name"
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1130
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1131
    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->fixAccess()V

    .line 1133
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1134
    .local v7, t0:Lorg/codehaus/jackson/type/JavaType;
    new-instance v9, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, property:Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1135
    invoke-virtual/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1137
    .local v12, type:Lorg/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1138
    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/map/BeanProperty$Std;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1143
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1144
    .local v16, propDeser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1145
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1146
    .local v13, typeDeser:Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)V

    .line 1148
    .local v10, prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1149
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1152
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1153
    .local v17, ref:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1154
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1156
    :cond_3
    return-object v10
.end method

.method protected constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .parameter "config"
    .parameter "beanDesc"
    .parameter "name"
    .parameter "setter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1093
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1094
    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1098
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1099
    .local v7, t0:Lorg/codehaus/jackson/type/JavaType;
    new-instance v9, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, property:Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1100
    invoke-virtual/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1102
    .local v12, type:Lorg/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1103
    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/map/BeanProperty$Std;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1109
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1110
    .local v16, propDeser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1111
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1112
    .local v13, typeDeser:Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1114
    .local v10, prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1115
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1118
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1119
    .local v17, ref:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1120
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1122
    :cond_3
    return-object v10
.end method

.method protected constructSetterlessProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8
    .parameter "config"
    .parameter "beanDesc"
    .parameter "name"
    .parameter "getter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1171
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1175
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1179
    .local v2, type:Lorg/codehaus/jackson/type/JavaType;
    new-instance v7, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v7, p3, v2, v1, p4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1181
    .local v7, property:Lorg/codehaus/jackson/map/BeanProperty$Std;
    invoke-virtual {p0, p1, p4, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1182
    .local v6, propDeser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p4, v2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1183
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1184
    .local v3, typeDeser:Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1186
    .local v0, prop:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_1

    .line 1187
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1189
    :cond_1
    return-object v0
.end method

.method public createBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .parameter "config"
    .parameter "p"
    .parameter "type"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 421
    :cond_0
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 422
    .local v4, beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 423
    .local v6, ad:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 472
    .end local v6           #ad:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v6

    .line 427
    .restart local v6       #ad:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 428
    .local v10, newType:Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 429
    move-object p3, v10

    .line 430
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4           #beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .restart local v4       #beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_2
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 433
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 434
    .local v8, custom:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v8, :cond_3

    move-object v6, v8

    .line 435
    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isThrowable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {p0, p1, p3, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->materializeAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 450
    .local v7, concreteType:Lorg/codehaus/jackson/type/JavaType;
    if-eqz v7, :cond_5

    .line 454
    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4           #beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 455
    .restart local v4       #beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p0, p1, v7, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 460
    .end local v7           #concreteType:Lorg/codehaus/jackson/type/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findStdBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 461
    .local v9, deser:Lorg/codehaus/jackson/map/JsonDeserializer;,"Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v9, :cond_6

    move-object v6, v9

    .line 462
    goto :goto_0

    .line 466
    :cond_6
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 467
    const/4 v6, 0x0

    goto :goto_0

    .line 472
    :cond_7
    invoke-virtual {p0, p1, p3, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0
.end method

.method public createKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 5
    .parameter "config"
    .parameter "type"
    .parameter "property"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasKeyDeserializers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 259
    .local v0, beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 260
    .local v1, d:Lorg/codehaus/jackson/map/KeyDeserializers;
    invoke-interface {v1, p2, p1, v0, p3}, Lorg/codehaus/jackson/map/KeyDeserializers;->findKeyDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 261
    .local v2, deser:Lorg/codehaus/jackson/map/KeyDeserializer;
    if-eqz v2, :cond_0

    .line 266
    .end local v0           #beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .end local v1           #d:Lorg/codehaus/jackson/map/KeyDeserializers;
    .end local v2           #deser:Lorg/codehaus/jackson/map/KeyDeserializer;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected findDeserializerCreators(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;
    .locals 8
    .parameter "config"
    .parameter "beanDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 701
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    .line 702
    .local v7, fixAccess:Z
    new-instance v5, Lorg/codehaus/jackson/map/deser/CreatorContainer;

    invoke-direct {v5, p2, v7}, Lorg/codehaus/jackson/map/deser/CreatorContainer;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 703
    .local v5, creators:Lorg/codehaus/jackson/map/deser/CreatorContainer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 707
    .local v4, intr:Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 709
    .local v6, defaultCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v6, :cond_1

    .line 710
    if-eqz v7, :cond_0

    .line 711
    invoke-static {v6}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 714
    :cond_0
    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->setDefaultConstructor(Ljava/lang/reflect/Constructor;)V

    .line 719
    .end local v6           #defaultCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    .line 720
    .local v3, vchecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;,"Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 721
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v3, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    .line 723
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 725
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerConstructors(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 726
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerFactoryMethods(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 727
    return-object v5
.end method

.method public final getConfig()Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    return-object v0
.end method

.method protected isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 4
    .parameter "config"
    .parameter "beanDesc"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1230
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, ignoredTypes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1231
    .local v1, status:Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 1232
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 1233
    .local v0, desc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1235
    if-nez v1, :cond_0

    .line 1236
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1239
    .end local v0           #desc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, typeStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :cond_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_1
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isLocalType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_2

    .line 1218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .parameter "config"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 485
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_mapAbstractType2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 486
    .local v0, next:Lorg/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 487
    return-object p2

    .line 493
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 494
    .local v2, prevCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 495
    .local v1, nextCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v2, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 496
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_2
    move-object p2, v0

    .line 499
    goto :goto_0
.end method

.method protected materializeAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .parameter "config"
    .parameter "beanDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 536
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAbstractTypeResolver()Lorg/codehaus/jackson/map/AbstractTypeResolver;

    move-result-object v5

    .line 539
    .local v5, resolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    if-nez v5, :cond_1

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasAbstractTypeResolvers()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v1, v6

    .line 566
    :cond_0
    :goto_0
    return-object v1

    .line 543
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 545
    .local v0, abstractType:Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 546
    .local v3, intr:Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v7

    invoke-virtual {v3, p1, v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object v1, v6

    .line 547
    goto :goto_0

    .line 550
    :cond_2
    if-eqz v5, :cond_3

    .line 551
    invoke-virtual {v5, p1, v0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->resolveAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 552
    .local v1, concrete:Lorg/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_0

    .line 560
    .end local v1           #concrete:Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 561
    .local v4, r:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v4, p1, v0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->resolveAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 562
    .restart local v1       #concrete:Lorg/codehaus/jackson/type/JavaType;
    if-eqz v1, :cond_4

    goto :goto_0

    .end local v1           #concrete:Lorg/codehaus/jackson/type/JavaType;
    .end local v4           #r:Lorg/codehaus/jackson/map/AbstractTypeResolver;
    :cond_5
    move-object v1, v6

    .line 566
    goto :goto_0
.end method

.method public withConfig(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)Lorg/codehaus/jackson/map/DeserializerFactory;
    .locals 3
    .parameter "config"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 242
    .end local p0
    :goto_0
    return-object p0

    .line 237
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    if-eq v0, v1, :cond_1

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    .end local p0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    goto :goto_0
.end method
