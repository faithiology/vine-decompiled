.class public Lcom/googlecode/javacpp/Generator;
.super Ljava/lang/Object;
.source "Generator.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Generator$AdapterInformation;,
        Lcom/googlecode/javacpp/Generator$MethodInformation;,
        Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    }
.end annotation


# static fields
.field public static final JNI_VERSION:Ljava/lang/String; = "JNI_VERSION_1_6"

.field private static final baseClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/javacpp/Generator$LinkedListRegister",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mayThrowExceptions:Z

.field private members:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private out:Ljava/io/PrintWriter;

.field private out2:Ljava/io/PrintWriter;

.field private properties:Ljava/util/Properties;

.field private usesAdapters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const-class v0, Lcom/googlecode/javacpp/Generator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    .line 135
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/googlecode/javacpp/Pointer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/googlecode/javacpp/BytePointer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/googlecode/javacpp/ShortPointer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/googlecode/javacpp/IntPointer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/googlecode/javacpp/LongPointer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/googlecode/javacpp/FloatPointer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/googlecode/javacpp/DoublePointer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/googlecode/javacpp/CharPointer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/googlecode/javacpp/PointerPointer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/googlecode/javacpp/BoolPointer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/googlecode/javacpp/CLongPointer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/googlecode/javacpp/SizeTPointer;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/googlecode/javacpp/Generator;->properties:Ljava/util/Properties;

    .line 118
    return-void
.end method

.method private doCall(Lcom/googlecode/javacpp/Generator$MethodInformation;Ljava/lang/String;)V
    .locals 18
    .parameter "methodInfo"
    .parameter "returnPrefix"

    .prologue
    .line 1085
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    if-eqz v14, :cond_2

    const-string v3, "        "

    .line 1086
    .local v3, indent:Ljava/lang/String;
    :goto_0
    const-string v8, "("

    .line 1087
    .local v8, prefix:Ljava/lang/String;
    const-string v10, ")"

    .line 1088
    .local v10, suffix:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1089
    .local v9, skipParameters:I
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    const-class v15, Lcom/googlecode/javacpp/annotation/Index;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    const-class v15, Lcom/googlecode/javacpp/annotation/Index;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_0
    const/4 v4, 0x1

    .line 1092
    .local v4, index:Z
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z

    if-eqz v14, :cond_4

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "void* allocatedAddress = jlong_to_ptr(arg0);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "void (*deallocatorAddress)(void*) = (void(*)(void*))jlong_to_ptr(arg1);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "if (deallocatorAddress != NULL && allocatedAddress != NULL) {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    (*deallocatorAddress)(allocatedAddress);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    :cond_1
    :goto_2
    return-void

    .line 1085
    .end local v3           #indent:Ljava/lang/String;
    .end local v4           #index:Z
    .end local v8           #prefix:Ljava/lang/String;
    .end local v9           #skipParameters:I
    .end local v10           #suffix:Ljava/lang/String;
    :cond_2
    const-string v3, "    "

    goto/16 :goto_0

    .line 1089
    .restart local v3       #indent:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    .restart local v9       #skipParameters:I
    .restart local v10       #suffix:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1099
    .restart local v4       #index:Z
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v14, :cond_16

    .line 1101
    :cond_5
    const/4 v13, 0x0

    .line 1102
    .local v13, wantsPointer:Z
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    add-int/lit8 v6, v14, -0x1

    .line 1103
    .local v6, k:I
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v14, :cond_8

    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;

    move-result-object v14

    instance-of v14, v14, Lcom/googlecode/javacpp/annotation/ByRef;

    if-nez v14, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v14, v0, v6}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v14

    if-nez v14, :cond_8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v6

    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_8

    .line 1108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "strcpy((char*)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    const/4 v13, 0x1

    .line 1110
    const-string v8, ", "

    .line 1131
    :goto_3
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    .end local v6           #k:I
    .end local v13           #wantsPointer:Z
    :cond_7
    :goto_4
    move v5, v9

    .local v5, j:I
    :goto_5
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    if-ge v5, v14, :cond_20

    .line 1186
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, cast:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_1f

    const-string v14, "arg"

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1111
    .end local v2           #cast:Ljava/lang/String;
    .end local v5           #j:I
    .restart local v6       #k:I
    .restart local v13       #wantsPointer:Z
    :cond_8
    const/4 v14, 0x1

    if-lt v6, v14, :cond_c

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_c

    .line 1116
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "memcpy("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    const/4 v13, 0x1

    .line 1118
    const-string v8, ", "

    .line 1119
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-nez v14, :cond_a

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    if-eqz v14, :cond_b

    .line 1120
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "ptr0 + arg1, "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    :goto_7
    const/4 v9, 0x2

    .line 1125
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " * sizeof(*ptr0)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 1122
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ptr0 + arg1, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 1127
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    if-nez v14, :cond_d

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-eqz v14, :cond_e

    :cond_d
    const-string v8, ""

    .line 1129
    :goto_8
    const-string v10, ""

    goto/16 :goto_3

    .line 1128
    :cond_e
    const-string v8, " = "

    goto :goto_8

    .line 1133
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v14, :cond_12

    .line 1134
    :cond_10
    if-eqz v4, :cond_11

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "(*ptr)"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1138
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ptr->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1141
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    if-eqz v4, :cond_13

    const-string v14, "(*ptr)"

    :goto_9
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    if-gtz v14, :cond_14

    if-eqz v13, :cond_15

    :cond_14
    const-string v14, "ptr"

    goto :goto_9

    :cond_15
    const-string v14, "*ptr"

    goto :goto_9

    .line 1143
    .end local v6           #k:I
    .end local v13           #wantsPointer:Z
    :cond_16
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    if-eqz v14, :cond_17

    .line 1144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    const-string v8, ""

    .line 1146
    const-string v10, ""

    goto/16 :goto_4

    .line 1148
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    const-class v14, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1150
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v15, Lcom/googlecode/javacpp/annotation/Namespace;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 1151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "(ptr0->*(ptr->ptr))"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 1154
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "(*ptr->ptr)"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1156
    :cond_19
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    if-eqz v14, :cond_1c

    .line 1157
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-static {v14}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v11

    .line 1158
    .local v11, typeName:[Ljava/lang/String;
    invoke-static {v11}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1159
    .local v12, valueTypeName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v15, Lcom/googlecode/javacpp/Pointer;

    if-ne v14, v15, :cond_1a

    .line 1161
    const-string v8, ""

    .line 1162
    const-string v10, ""

    goto/16 :goto_4

    .line 1164
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const-string v14, "new (std::nothrow) "

    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    if-eqz v14, :cond_7

    .line 1167
    const-string v8, "["

    .line 1168
    const-string v10, "]"

    goto/16 :goto_4

    .line 1164
    :cond_1b
    const-string v14, "new "

    goto :goto_a

    .line 1171
    .end local v11           #typeName:[Ljava/lang/String;
    .end local v12           #valueTypeName:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1174
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "(*ptr)"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1178
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ptr->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1187
    .restart local v2       #cast:Ljava/lang/String;
    .restart local v5       #j:I
    :cond_1f
    const-string v14, "ptr"

    goto/16 :goto_6

    .line 1189
    .end local v2           #cast:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_21

    .line 1190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z

    if-eqz v14, :cond_22

    .line 1194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_25

    const-string v14, "env, cls"

    :goto_b
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    sub-int/2addr v14, v9

    move-object/from16 v0, p1

    iget v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    sub-int/2addr v14, v15

    if-lez v14, :cond_22

    .line 1196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    :cond_22
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    add-int v5, v9, v14

    :goto_c
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    if-ge v5, v14, :cond_2e

    .line 1200
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 1201
    .local v7, passBy:Ljava/lang/annotation/Annotation;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .restart local v2       #cast:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v14, v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v1

    .line 1204
    .local v1, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const-string v14, "(void*)"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    const-string v14, "(void *)"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    :cond_23
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v5

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_26

    .line 1206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "jlong_to_ptr(arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    :goto_d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_24

    .line 1228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1194
    .end local v1           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v2           #cast:Ljava/lang/String;
    .end local v7           #passBy:Ljava/lang/annotation/Annotation;
    :cond_25
    const-string v14, "env, obj"

    goto/16 :goto_b

    .line 1207
    .restart local v1       #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .restart local v2       #cast:Ljava/lang/String;
    .restart local v7       #passBy:Ljava/lang/annotation/Annotation;
    :cond_26
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_27

    .line 1208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 1209
    :cond_27
    if-eqz v1, :cond_29

    .line 1210
    iget-object v14, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_28

    const-string v14, "("

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_28

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_28

    .line 1212
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1214
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "adapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    iget v14, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v5, v14

    goto/16 :goto_d

    .line 1216
    :cond_29
    const-class v14, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2a

    if-nez v7, :cond_2a

    .line 1217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " == NULL ? NULL : ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "->ptr)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1218
    :cond_2a
    instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v14, :cond_2b

    instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v14, :cond_2c

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v5

    const-class v15, Ljava/lang/String;

    if-eq v14, v15, :cond_2c

    .line 1220
    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1221
    :cond_2c
    instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-eqz v14, :cond_2d

    .line 1222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " == NULL ? NULL : &ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1224
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1231
    .end local v1           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v2           #cast:Ljava/lang/String;
    .end local v7           #passBy:Ljava/lang/annotation/Annotation;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-virtual {v14, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    array-length v14, v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_2f

    .line 1233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    :cond_2f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v14}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    instance-of v14, v14, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_1

    .line 1238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ");\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "rptr = rstr.c_str()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private doCallback(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;Z)V
    .locals 28
    .parameter
    .parameter "callbackMethod"
    .parameter "callbackName"
    .parameter "needFunctor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 1431
    .local v8, callbackReturnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1432
    .local v6, callbackParameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 1433
    .local v4, callbackAnnotations:[Ljava/lang/annotation/Annotation;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 1435
    .local v5, callbackParameterAnnotations:[[Ljava/lang/annotation/Annotation;
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    .line 1436
    .local v10, instanceTypeName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v9

    .line 1437
    .local v9, callbackTypeName:[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v9, v24

    const-string v25, "\\("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1438
    .local v17, returnConvention:[Ljava/lang/String;
    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    aget-object v27, v17, v27

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v17, v24

    .line 1439
    const/16 v24, 0x1

    aget-object v24, v9, v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1440
    .local v13, parameterDeclaration:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "static "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_instance;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "JNIIMPORT "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, v17, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    const/16 v24, 0x1

    aget-object v24, v17, v24

    :goto_0
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "JNIEXPORT "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, v17, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    const/16 v24, 0x1

    aget-object v24, v17, v24

    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " {"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v8, v0, :cond_4

    const-string v24, "    return "

    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "_instance("

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1451
    array-length v0, v6

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v11, v0, :cond_1

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1443
    .end local v11           #j:I
    :cond_2
    const-string v24, ""

    goto/16 :goto_0

    .line 1446
    :cond_3
    const-string v24, ""

    goto/16 :goto_1

    .line 1448
    :cond_4
    const-string v24, "    "

    goto :goto_2

    .line 1455
    .restart local v11       #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "}"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    if-nez p4, :cond_6

    .line 1725
    :goto_4
    return-void

    .line 1461
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::operator()"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " {"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const-string v18, ""

    .line 1463
    .local v18, returnPrefix:Ljava/lang/String;
    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v8, v0, :cond_7

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " rarg = 0;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string v18, "rarg = "

    .line 1467
    :cond_7
    invoke-static {v4, v8}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 1468
    .local v7, callbackReturnCast:Ljava/lang/String;
    invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    .line 1469
    .local v16, returnBy:Ljava/lang/annotation/Annotation;
    invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v19

    .line 1470
    .local v19, returnTypeName:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1471
    .local v20, returnValueTypeName:Ljava/lang/String;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v15

    .line 1473
    .local v15, returnAdapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    jthrowable exc = NULL;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    JNIEnv* env;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    int attached = JavaCPP_getEnv(&env);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (attached < 0) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        goto end;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "{"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    array-length v0, v6

    move/from16 v24, v0

    if-lez v24, :cond_1c

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jvalue args["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    array-length v0, v6

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "];"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const/4 v11, 0x0

    :goto_5
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1c

    .line 1483
    aget-object v24, v6, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    args["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v6, v11

    invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v6, v11

    invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1488
    :cond_8
    aget-object v24, v5, v11

    invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    .line 1489
    .local v14, passBy:Ljava/lang/annotation/Annotation;
    aget-object v24, v6, v11

    invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v22

    .line 1490
    .local v22, typeName:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1491
    .local v23, valueTypeName:Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v25, v5, v11

    move/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v3

    .line 1492
    .local v3, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    if-nez v3, :cond_9

    .line 1493
    aget-object v24, v5, v11

    aget-object v25, v6, v11

    invoke-static/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v22

    .line 1494
    invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1497
    :cond_9
    const/4 v12, 0x0

    .line 1498
    .local v12, needInit:Z
    if-eqz v3, :cond_d

    .line 1499
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " adapter"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "(arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jint size"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = (jint)adapter"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".size;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jlong deallocator"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = ptr_to_jlong(&("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::deallocate));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    const/4 v12, 0x1

    .line 1513
    :cond_a
    :goto_7
    const-class v24, Lcom/googlecode/javacpp/Pointer;

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1514
    const-class v24, Lcom/googlecode/javacpp/FunctionPointer;

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1515
    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v26, v6, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v22, v24

    .line 1516
    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v22, v24

    .line 1517
    invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1519
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jobject obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = NULL;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = NULL;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    const-class v24, Lcom/googlecode/javacpp/FunctionPointer;

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = new (std::nothrow) "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    if (ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != NULL) {"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "->ptr = arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    :goto_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    obj"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " = env->AllocObject(JavaCPP_getClass(env, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v25, v0

    aget-object v26, v6, v11

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "));"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1545
    .local v21, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1546
    const/16 v24, 0x1

    aget-object v25, v5, v11

    move/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v3

    .line 1547
    if-nez v3, :cond_c

    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    move/from16 v24, v0

    if-nez v24, :cond_c

    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 1548
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    if (obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != NULL) { "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    if-eqz v12, :cond_18

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        if (deallocator"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != 0) {"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "            jvalue args[3];"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            args[0].j = ptr_to_jlong(ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            args[1].i = size"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            args[2].j = deallocator"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            env->CallNonvirtualVoidMethodA(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_getClass(env, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v26, v0

    const-class v27, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "), JavaCPP_initMID, args);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            env->SetLongField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_addressFID, ptr_to_jlong(ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            env->SetIntField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_limitFID, size"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            env->SetIntField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_capacityFID, size"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    args["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].l = obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1504
    .end local v21           #s:Ljava/lang/String;
    :cond_d
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    aget-object v24, v6, v11

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f

    :cond_e
    const-class v24, Lcom/googlecode/javacpp/FunctionPointer;

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1506
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jint size"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = 1;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jlong deallocator"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = ptr_to_jlong(&JavaCPP_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v6, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_deallocate);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1510
    const/4 v12, 0x1

    goto/16 :goto_7

    .line 1526
    :cond_10
    if-eqz v3, :cond_11

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = adapter"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1528
    :cond_11
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;

    move/from16 v24, v0

    if-eqz v24, :cond_13

    aget-object v24, v6, v11

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_13

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    ptr"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v24, v6, v11

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v24

    if-eqz v24, :cond_12

    const-string v24, " = new (std::nothrow) "

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x1

    aget-object v26, v22, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "(*("

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, v22, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x1

    aget-object v26, v22, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ")&arg"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ");"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    const-string v24, " = new "

    goto :goto_b

    .line 1532
    :cond_13
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;

    move/from16 v24, v0

    if-nez v24, :cond_14

    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByRef;

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1533
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")&arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1534
    :cond_15
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    if (arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " == NULL) {"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        JavaCPP_log(\"Pointer address of argument "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is NULL in callback for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = *arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1541
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1550
    .restart local v21       #s:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    if (ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != NULL) { "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1569
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        env->SetLongField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_addressFID, ptr_to_jlong(ptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1573
    .end local v21           #s:Ljava/lang/String;
    :cond_19
    aget-object v24, v6, v11

    const-class v25, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jstring obj"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " = arg"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " == NULL ? NULL : env->NewStringUTF((const char*)"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-eqz v3, :cond_1a

    const-string v24, "adapter"

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ");"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    args["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].l = obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1574
    :cond_1a
    const-string v24, "arg"

    goto :goto_c

    .line 1578
    :cond_1b
    sget-object v24, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v25, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Callback \""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\" has unsupported parameter type \""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v6, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\". Compilation will most likely fail."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1585
    .end local v3           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v12           #needInit:Z
    .end local v14           #passBy:Ljava/lang/annotation/Annotation;
    .end local v22           #typeName:[Ljava/lang/String;
    .end local v23           #valueTypeName:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (obj == NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        obj = env->NewGlobalRef(env->AllocObject(JavaCPP_getClass(env, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        if (obj == NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "            JavaCPP_log(\"Error creating global reference of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " instance for callback.\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "            env->SetLongField(obj, JavaCPP_addressFID, ptr_to_jlong(this));"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        ptr = &"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (mid == NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        mid = env->GetMethodID(JavaCPP_getClass(env, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "), \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\", \"("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (env->IsSameObject(obj, NULL)) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        JavaCPP_log(\"Function pointer object is NULL in callback for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    } else if (mid == NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        JavaCPP_log(\"Error getting method ID of function caller \\\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\\\" for callback.\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    const-string v21, "Object"

    .line 1604
    .restart local v21       #s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1605
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1606
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1608
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "env->Call"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "MethodA(obj, mid, "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v6

    move/from16 v24, v0

    if-nez v24, :cond_24

    const-string v24, "NULL);"

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        if ((exc = env->ExceptionOccurred()) != NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "            env->ExceptionClear();"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    const/4 v11, 0x0

    :goto_e
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_27

    .line 1615
    const-class v24, Lcom/googlecode/javacpp/Pointer;

    aget-object v25, v6, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 1616
    aget-object v24, v5, v11

    aget-object v25, v6, v11

    invoke-static/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v22

    .line 1617
    .restart local v22       #typeName:[Ljava/lang/String;
    aget-object v24, v5, v11

    invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    .line 1618
    .restart local v14       #passBy:Ljava/lang/annotation/Annotation;
    invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1619
    .restart local v23       #valueTypeName:Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v25, v5, v11

    move/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v3

    .line 1621
    .restart local v3       #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const-string v24, "void*"

    const/16 v25, 0x0

    aget-object v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1622
    const/16 v24, 0x0

    const-string v25, "char*"

    aput-object v25, v22, v24

    .line 1624
    :cond_1e
    if-nez v3, :cond_1f

    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    move/from16 v24, v0

    if-nez v24, :cond_1f

    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    move/from16 v24, v0

    if-eqz v24, :cond_22

    .line 1625
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v22, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")jlong_to_ptr(env->GetLongField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_addressFID));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    if-eqz v3, :cond_20

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jint rsize"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = env->GetIntField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_limitFID);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    :cond_20
    aget-object v24, v6, v11

    const-class v25, Lcom/googlecode/javacpp/annotation/Opaque;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    jint rposition"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = env->GetIntField(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", JavaCPP_positionFID);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " += rposition"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    if-eqz v3, :cond_21

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    rsize"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " -= rposition"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    :cond_21
    if-eqz v3, :cond_25

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    adapter"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".assign(rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", rsize"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    .end local v3           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v14           #passBy:Ljava/lang/annotation/Annotation;
    .end local v22           #typeName:[Ljava/lang/String;
    .end local v23           #valueTypeName:Ljava/lang/String;
    :cond_22
    :goto_f
    aget-object v24, v6, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-nez v24, :cond_23

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    env->DeleteLocalRef(obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 1608
    :cond_24
    const-string v24, "args);"

    goto/16 :goto_d

    .line 1639
    .restart local v3       #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .restart local v14       #passBy:Ljava/lang/annotation/Annotation;
    .restart local v22       #typeName:[Ljava/lang/String;
    .restart local v23       #valueTypeName:Ljava/lang/String;
    :cond_25
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    move/from16 v24, v0

    if-eqz v24, :cond_26

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    *arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 1641
    :cond_26
    instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    move/from16 v24, v0

    if-eqz v24, :cond_22

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    arg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1650
    .end local v3           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v14           #passBy:Ljava/lang/annotation/Annotation;
    .end local v22           #typeName:[Ljava/lang/String;
    .end local v23           #valueTypeName:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "}"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "end:"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v8, v0, :cond_2a

    .line 1654
    const-string v24, "void*"

    const/16 v25, 0x0

    aget-object v25, v19, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1655
    const/16 v24, 0x0

    const-string v25, "char*"

    aput-object v25, v19, v24

    .line 1657
    :cond_28
    const-class v24, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = rarg == NULL ? NULL : ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")jlong_to_ptr(env->GetLongField(rarg, JavaCPP_addressFID));"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    if-eqz v15, :cond_29

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    jint rsize = rarg == NULL ? 0 : env->GetIntField(rarg, JavaCPP_limitFID);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    :cond_29
    const-class v24, Lcom/googlecode/javacpp/annotation/Opaque;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v24

    if-nez v24, :cond_2a

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    jint rposition = rarg == NULL ? 0 : env->GetIntField(rarg, JavaCPP_positionFID);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    rptr += rposition;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    if-eqz v15, :cond_2a

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    rsize -= rposition;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    :cond_2a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (exc != NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        jclass cls = env->GetObjectClass(exc);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        jmethodID mid = env->GetMethodID(cls, \"toString\", \"()Ljava/lang/String;\");"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        env->DeleteLocalRef(cls);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        jstring str = (jstring)env->CallObjectMethod(exc, mid);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        env->DeleteLocalRef(exc);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        const char *msg = env->GetStringUTFChars(str, NULL);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        JavaCPP_exception e(msg);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        env->ReleaseStringUTFChars(str, msg);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        env->DeleteLocalRef(str);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        JavaCPP_detach(attached);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        throw e;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        JavaCPP_detach(attached);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v8, v0, :cond_2b

    .line 1703
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "rarg;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "}"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1675
    :cond_2c
    const-class v24, Ljava/nio/Buffer;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " rptr"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = rarg == NULL ? NULL : env->GetDirectBufferAddress(rarg);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    if-eqz v15, :cond_2a

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    jint rsize = rarg == NULL ? 0 : env->GetDirectBufferCapacity(rarg);"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1680
    :cond_2d
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-nez v24, :cond_2a

    .line 1681
    sget-object v24, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v25, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Callback \""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\" has unsupported return type \""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\". Compilation will most likely fail."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1705
    :cond_2e
    if-eqz v15, :cond_2f

    .line 1706
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "rptr, rsize);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1708
    :cond_2f
    const-class v24, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_30

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "(rptr == NULL ? NULL : rptr->ptr);"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1710
    :cond_30
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;

    move/from16 v24, v0

    if-nez v24, :cond_31

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByRef;

    move/from16 v24, v0

    if-eqz v24, :cond_32

    .line 1711
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    if (rptr == NULL) {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        JavaCPP_log(\"Return pointer address is NULL in callback for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".\");"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        static "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " empty"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v19, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "        return empty;"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    } else {"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "        return *"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "rptr;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    const-string v25, "    }"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1718
    :cond_32
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    move/from16 v24, v0

    if-eqz v24, :cond_33

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&rptr;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1721
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "rptr;"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method private doCallbackAllocator(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .parameter "cls"
    .parameter "callbackName"

    .prologue
    .line 1730
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, instanceTypeName:Ljava/lang/String;
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "    obj = env->NewWeakGlobalRef(obj);"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "    if (obj == NULL) {"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        JavaCPP_log(\"Error creating global reference of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance for callback.\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "        return;"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "    }"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "* rptr = new (std::nothrow) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "    if (rptr != NULL) {"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        rptr->ptr = &"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "        rptr->obj = obj;"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "        jvalue args[3];"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "        args[0].j = ptr_to_jlong(rptr);"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "        args[1].i = 1;"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        args[2].j = ptr_to_jlong(&JavaCPP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_deallocate);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-virtual {v1, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1745
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        env->CallNonvirtualVoidMethodA(obj, JavaCPP_getClass(env, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    const-class v4, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), JavaCPP_initMID, args);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_instance = *rptr;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "    }"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    return-void
.end method

.method private varargs doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z
    .locals 27
    .parameter "handleExceptions"
    .parameter "defineAdapters"
    .parameter "classPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p4, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "/* DO NOT EDIT THIS FILE - IT IS MACHINE GENERATED */"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "/* DO NOT EDIT THIS FILE - IT IS MACHINE GENERATED */"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Ljava/util/Properties;

    move-object/from16 v22, v0

    const-string v23, "generator.define"

    invoke-virtual/range {v22 .. v23}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, define:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 205
    const-string v22, "\u0000"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v19, v2, v10

    .line 206
    .local v19, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#define "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 208
    .end local v19           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 210
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef __APPLE__"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define _JAVASOFT_JNI_MD_H_"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNIEXPORT __attribute__((visibility(\"default\")))"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNIIMPORT"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNICALL"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef int jint;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef long long jlong;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef signed char jbyte;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef _WIN32"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define _JAVASOFT_JNI_MD_H_"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNIEXPORT __declspec(dllexport)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNIIMPORT __declspec(dllimport)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JNICALL __stdcall"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef int jint;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef long long jlong;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typedef signed char jbyte;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <jni.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <jni.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #include <android/log.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define NewWeakGlobalRef(obj) NewGlobalRef(obj)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define DeleteWeakGlobalRef(obj) DeleteGlobalRef(obj)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <stddef.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifndef _WIN32"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #include <stdint.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <stdio.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <stdlib.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <string.h>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <exception>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <new>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#define jlong_to_ptr(a) ((void*)(uintptr_t)(a))"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#define ptr_to_jlong(a) ((jlong)(uintptr_t)(a))"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#if defined(_MSC_VER)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_noinline __declspec(noinline)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_hidden /* hidden by default */"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#elif defined(__GNUC__)"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_noinline __attribute__((noinline))"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_hidden   __attribute__((visibility(\"hidden\")))"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#else"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_noinline"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    #define JavaCPP_hidden"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 266
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Ljava/util/Properties;

    move-object/from16 v23, v0

    const-string v24, "generator.include"

    invoke-virtual/range {v23 .. v24}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Ljava/util/Properties;

    move-object/from16 v23, v0

    const-string v24, "generator.cinclude"

    invoke-virtual/range {v23 .. v24}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    .line 268
    .local v11, include:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_b

    .line 269
    aget-object v22, v11, v9

    if-eqz v22, :cond_a

    aget-object v22, v11, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_a

    .line 270
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "extern \"C\" {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef __cplusplus"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "extern \"C\" {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_4
    aget-object v22, v11, v9

    const-string v23, "\u0000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v12, v2

    .restart local v12       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_2
    if-ge v10, v12, :cond_8

    aget-object v19, v2, v10

    .line 279
    .restart local v19       #s:Ljava/lang/String;
    const-string v13, "#include "

    .line 280
    .local v13, line:Ljava/lang/String;
    const-string v22, "<"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 281
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 283
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 284
    const-string v22, ">"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 285
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 287
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 292
    .end local v13           #line:Ljava/lang/String;
    .end local v19           #s:Ljava/lang/String;
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_9

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef __cplusplus"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 268
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 303
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static JavaVM* JavaCPP_vm = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "static const char* JavaCPP_classNames["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] = {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 306
    .local v4, classIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class;>;"
    const/4 v15, 0x0

    .line 307
    .local v15, maxMemberSize:I
    :cond_c
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 308
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 309
    .local v3, c:Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2e

    const/16 v26, 0x2f

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedList;

    .line 314
    .local v14, m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v15, :cond_c

    .line 315
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v15

    goto :goto_3

    .line 318
    .end local v3           #c:Ljava/lang/Class;
    .end local v14           #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "static jclass JavaCPP_classes["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] = { NULL };"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static jmethodID JavaCPP_initMID = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static jfieldID JavaCPP_addressFID = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static jfieldID JavaCPP_positionFID = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static jfieldID JavaCPP_limitFID = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static jfieldID JavaCPP_capacityFID = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static inline void JavaCPP_log(const char* fmt, ...) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    va_list ap;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    va_start(ap, fmt);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    __android_log_vprint(ANDROID_LOG_ERROR, \"javacpp\", fmt, ap);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#else"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    vfprintf(stderr, fmt, ap);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    fprintf(stderr, \"\\n\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    va_end(ap);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static JavaCPP_noinline jclass JavaCPP_getClass(JNIEnv* env, int i) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_classes[i] == NULL && env->PushLocalFrame(1) == 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        jclass cls = env->FindClass(JavaCPP_classNames[i]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (cls == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            JavaCPP_log(\"Error loading class %s.\", JavaCPP_classNames[i]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            return NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_classes[i] = (jclass)env->NewWeakGlobalRef(cls);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (JavaCPP_classes[i] == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            JavaCPP_log(\"Error creating global reference of class %s.\", JavaCPP_classNames[i]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            return NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        env->PopLocalFrame(NULL);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return JavaCPP_classes[i];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "template <typename P> static inline P JavaCPP_dereference(JNIEnv* env, P* ptr) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (ptr == NULL) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Ljava/lang/NullPointerException;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"Return pointer address is NULL.\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return P();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return *ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "class JavaCPP_hidden JavaCPP_exception : public std::exception {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "public:"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaCPP_exception(const char* str) throw() {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (str == NULL) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            strcpy(msg, \"Unknown exception.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        } else {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            strncpy(msg, str, sizeof(msg));"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            msg[sizeof(msg) - 1] = 0;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    virtual const char* what() const throw() { return msg; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    char msg[1024];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "};"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 378
    if-eqz p1, :cond_f

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static JavaCPP_noinline void JavaCPP_handleException(JNIEnv* env) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    try {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        throw;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    } catch (std::exception& e) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Ljava/lang/RuntimeException;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), e.what());"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    } catch (...) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Ljava/lang/RuntimeException;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"Unknown exception.\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 392
    :cond_f
    if-eqz p2, :cond_10

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <vector>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "template<typename P, typename T = P> class JavaCPP_hidden VectorAdapter {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "public:"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    VectorAdapter(const P* ptr, typename std::vector<T>::size_type size) : ptr((P*)ptr), size(size),"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        vec2(ptr ? std::vector<T>((P*)ptr, (P*)ptr + size) : std::vector<T>()), vec(vec2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    VectorAdapter(const std::vector<T>& vec) : ptr(0), size(0), vec2(vec), vec(vec2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    VectorAdapter(      std::vector<T>& vec) : ptr(0), size(0), vec(vec) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    void assign(P* ptr, typename std::vector<T>::size_type size) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        this->ptr = ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        this->size = size;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        vec.assign(ptr, ptr + size);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    static void deallocate(P* ptr) { delete[] ptr; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator P*() {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (vec.size() > size) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            ptr = new (std::nothrow) P[vec.size()];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (ptr) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            std::copy(vec.begin(), vec.end(), ptr);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        size = vec.size();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator const P*()        { return &vec[0]; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator std::vector<T>&() { return vec; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator std::vector<T>*() { return ptr ? &vec : 0; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    P* ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    typename std::vector<T>::size_type size;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    std::vector<T> vec2;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    std::vector<T>& vec;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "};"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#include <string>"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "class JavaCPP_hidden StringAdapter {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "public:"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    StringAdapter(const          char* ptr, size_t size) : ptr((char*)ptr), size(size),"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    StringAdapter(const signed   char* ptr, size_t size) : ptr((char*)ptr), size(size),"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    StringAdapter(const unsigned char* ptr, size_t size) : ptr((char*)ptr), size(size),"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    StringAdapter(const std::string& str) : ptr(0), size(0), str2(str), str(str2) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    StringAdapter(      std::string& str) : ptr(0), size(0), str(str) { }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    void assign(char* ptr, size_t size) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        this->ptr = ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        this->size = size;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        str.assign(ptr ? ptr : \"\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    static void deallocate(char* ptr) { free(ptr); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator char*() {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        const char* c_str = str.c_str();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (ptr == NULL || strcmp(c_str, ptr) != 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            ptr = strdup(c_str);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        size = strlen(c_str) + 1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator       signed   char*() { return (signed   char*)(operator char*)(); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator       unsigned char*() { return (unsigned char*)(operator char*)(); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator const          char*() { return                 str.c_str(); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator const signed   char*() { return (signed   char*)str.c_str(); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator const unsigned char*() { return (unsigned char*)str.c_str(); }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator         std::string&() { return str; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    operator         std::string*() { return ptr ? &str : 0; }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    char* ptr;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    size_t size;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    std::string str2;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    std::string& str;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "};"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 464
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_13

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static JavaCPP_noinline void JavaCPP_detach(int detach) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (detach > 0 && JavaCPP_vm->DetachCurrentThread() != 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Could not detach the JavaVM from the current thread.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "static JavaCPP_noinline int JavaCPP_getEnv(JNIEnv** env) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    int attached = 0;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    struct {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JNIEnv **env;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        operator JNIEnv**() { return env; } // Android JNI"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        operator void**() { return (void**)env; } // standard JNI"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    } env2 = { env };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaVM *vm = JavaCPP_vm;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (vm == NULL) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifndef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        int size = 1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (JNI_GetCreatedJavaVMs(&vm, 1, &size) != 0 || size == 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            JavaCPP_log(\"Could not get any created JavaVM.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            return -1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifndef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (vm->GetEnv((void**)env, JNI_VERSION_1_6) != JNI_OK) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (vm->AttachCurrentThread(env2, NULL) != 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            JavaCPP_log(\"Could not attach the JavaVM to the current thread.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            return -1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        attached = 1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_vm == NULL) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        if (JNI_OnLoad(vm, NULL) < 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            JavaCPP_detach(attached);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            return -1;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return attached;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 511
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 512
    .restart local v19       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 514
    .end local v19           #s:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 516
    .restart local v19       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 518
    .end local v19           #s:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 520
    .restart local v3       #c:Ljava/lang/Class;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "JavaCPP_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 521
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "static void "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_deallocate("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    const-class v22, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 523
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    .line 524
    .local v20, typeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "* p) { JNIEnv *e; int a = JavaCPP_getEnv(&e); if (a >= 0) e->DeleteWeakGlobalRef(p->obj); delete p; JavaCPP_detach(a); }"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 526
    .end local v20           #typeName:Ljava/lang/String;
    :cond_16
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v20

    .line 527
    .local v20, typeName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v20, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " p"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") { delete p; }"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 530
    .end local v3           #c:Ljava/lang/Class;
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #typeName:[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 531
    .restart local v3       #c:Ljava/lang/Class;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "JavaCPP_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 532
    .restart local v18       #name:Ljava/lang/String;
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v20

    .line 533
    .restart local v20       #typeName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "static void "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_deallocateArray("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v20, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " p"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") { delete[] p; }"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 535
    .end local v3           #c:Ljava/lang/Class;
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #typeName:[Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "extern \"C\" {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef __cplusplus"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "extern \"C\" {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIIMPORT int JavaCPP_init(int argc, const char *argv[]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifndef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIEXPORT int JavaCPP_init(int argc, const char *argv[]) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaVM *vm;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JNIEnv *env;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    int nOptions = 1 + (argc > 255 ? 255 : argc);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaVMOption options[256] = { { NULL } };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    options[0].optionString = (char*)\"-Djava.class.path="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    for (int i = 1; i < nOptions && argv != NULL; i++) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        options[i].optionString = (char*)argv[i - 1];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaVMInitArgs vm_args = { JNI_VERSION_1_6, nOptions, options };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return JNI_CreateJavaVM(&vm, (void **)&env, &vm_args);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JNIEnv* env;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Could not get JNIEnv for JNI_VERSION_1_6 inside JNI_OnLoad().\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_vm == vm) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return env->GetVersion();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaCPP_vm = vm;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    const char* members["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] = {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 572
    :cond_1a
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            { "

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedList;

    .line 575
    .restart local v14       #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v14, :cond_1c

    const/16 v16, 0x0

    .line 576
    .local v16, memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1b
    :goto_9
    if-eqz v16, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v23, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "\""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    .line 575
    .end local v16           #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1c
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    goto :goto_9

    .line 582
    .restart local v16       #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 587
    .end local v14           #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v16           #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    int offsets["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] = {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 590
    :cond_1f
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_25

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            { "

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 593
    .restart local v3       #c:Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedList;

    .line 594
    .restart local v14       #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v14, :cond_22

    const/16 v16, 0x0

    .line 595
    .restart local v16       #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_20
    :goto_b
    if-eqz v16, :cond_24

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_24

    .line 596
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v20

    .line 597
    .restart local v20       #typeName:[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 598
    .local v21, valueTypeName:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 599
    .local v17, memberName:Ljava/lang/String;
    const-string v22, "sizeof"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 600
    const-string v22, "void"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 601
    const-string v21, "void*"

    .line 603
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sizeof("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 594
    .end local v16           #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17           #memberName:Ljava/lang/String;
    .end local v20           #typeName:[Ljava/lang/String;
    .end local v21           #valueTypeName:Ljava/lang/String;
    :cond_22
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    goto :goto_b

    .line 605
    .restart local v16       #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v17       #memberName:Ljava/lang/String;
    .restart local v20       #typeName:[Ljava/lang/String;
    .restart local v21       #valueTypeName:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "offsetof("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 611
    .end local v17           #memberName:Ljava/lang/String;
    .end local v20           #typeName:[Ljava/lang/String;
    .end local v21           #valueTypeName:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 616
    .end local v3           #c:Ljava/lang/Class;
    .end local v14           #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v16           #memberIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    int memberOffsetSizes["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] = { "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 619
    :cond_26
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedList;

    .line 621
    .restart local v14       #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v23, v0

    if-nez v14, :cond_27

    const/16 v22, 0x0

    :goto_e
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 622
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_26

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 621
    :cond_27
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v22

    goto :goto_e

    .line 626
    .end local v14           #m:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, " };"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    jmethodID putMemberOffsetMID = env->GetStaticMethodID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Loader;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"putMemberOffset\", \"(Ljava/lang/String;Ljava/lang/String;I)V\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (putMemberOffsetMID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting method ID of Loader.putMemberOffset().\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    for (int i = 0; i < "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " && !env->ExceptionCheck(); i++) {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        for (int j = 0; j < memberOffsetSizes[i] && !env->ExceptionCheck(); j++) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            if (env->PushLocalFrame(2) == 0) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "                jvalue args[3];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "                args[0].l = env->NewStringUTF(JavaCPP_classNames[i]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "                args[1].l = env->NewStringUTF(members[i][j]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "                args[2].i = offsets[i][j];"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "                env->CallStaticVoidMethodA(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Loader;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), putMemberOffsetMID, args);"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "                env->PopLocalFrame(NULL);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "            }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    JavaCPP_initMID = env->GetMethodID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"init\", \"(JIJ)V\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_initMID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting method ID of Pointer.init().\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    JavaCPP_addressFID = env->GetFieldID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"address\", \"J\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_addressFID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.address.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    JavaCPP_positionFID = env->GetFieldID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"position\", \"I\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_positionFID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.position.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    JavaCPP_limitFID = env->GetFieldID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"limit\", \"I\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_limitFID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.limit.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    JavaCPP_capacityFID = env->GetFieldID(JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    const-class v25, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), \"capacity\", \"I\");"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (JavaCPP_capacityFID == NULL || env->ExceptionCheck()) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.capacity.\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 678
    :cond_29
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 679
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 680
    .restart local v3       #c:Ljava/lang/Class;
    const-class v22, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, v22

    if-eq v3, v0, :cond_29

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    if (JavaCPP_getClass(env, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") == NULL) {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return JNI_ERR;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 687
    .end local v3           #c:Ljava/lang/Class;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return env->GetVersion();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2b

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIIMPORT int JavaCPP_uninit();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifndef ANDROID"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIEXPORT int JavaCPP_uninit() {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaVM *vm = JavaCPP_vm;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JNI_OnUnload(JavaCPP_vm, NULL);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    return vm->DestroyJavaVM();"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "JNIEXPORT void JNICALL JNI_OnUnload(JavaVM* vm, void* reserved) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JNIEnv* env;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) {"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_log(\"Could not get JNIEnv for JNI_VERSION_1_6 inside JNI_OnUnLoad().\");"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        return;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    for (int i = 0; i < "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; i++) {"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        env->DeleteWeakGlobalRef(JavaCPP_classes[i]);"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "        JavaCPP_classes[i] = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    }"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "    JavaCPP_vm = NULL;"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 717
    sget-object v22, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 718
    .local v5, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z

    goto :goto_10

    .line 721
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2c
    const/4 v7, 0x0

    .line 722
    .local v7, didSomethingUseful:Z
    move-object/from16 v2, p4

    .local v2, arr$:[Ljava/lang/Class;
    array-length v12, v2

    .restart local v12       #len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_11
    if-ge v10, v12, :cond_2d

    aget-object v5, v2, v10

    .line 724
    .restart local v5       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    or-int v7, v7, v22

    .line 722
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 725
    :catch_0
    move-exception v8

    .line 726
    .local v8, e:Ljava/lang/NoClassDefFoundError;
    sget-object v22, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v23, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Could not generate code for class "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_12

    .line 730
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #e:Ljava/lang/NoClassDefFoundError;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#ifdef __cplusplus"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    move-object/from16 v22, v0

    const-string v23, "#endif"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    :cond_2e
    return v7
.end method

.method private doMethods(Ljava/lang/Class;)Z
    .locals 31
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v27, Lcom/googlecode/javacpp/annotation/Properties;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/annotation/Properties;

    .line 744
    .local v6, classProperties:Lcom/googlecode/javacpp/annotation/Properties;
    const/16 v23, 0x0

    .line 745
    .local v23, platformMatches:Z
    if-eqz v6, :cond_1

    .line 746
    invoke-interface {v6}, Lcom/googlecode/javacpp/annotation/Properties;->value()[Lcom/googlecode/javacpp/annotation/Platform;

    move-result-object v3

    .local v3, arr$:[Lcom/googlecode/javacpp/annotation/Platform;
    array-length v15, v3

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_2

    aget-object v21, v3, v12

    .line 747
    .local v21, p:Lcom/googlecode/javacpp/annotation/Platform;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 748
    const/16 v23, 0x1

    .line 746
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 751
    .end local v3           #arr$:[Lcom/googlecode/javacpp/annotation/Platform;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v21           #p:Lcom/googlecode/javacpp/annotation/Platform;
    :cond_1
    const-class v27, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 752
    const/16 v23, 0x1

    .line 754
    :cond_2
    if-nez v23, :cond_3

    .line 755
    const/4 v8, 0x0

    .line 892
    :goto_1
    return v8

    .line 758
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedList;

    .line 759
    .local v16, memberList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-class v27, Lcom/googlecode/javacpp/annotation/Opaque;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_5

    const-class v27, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 761
    if-nez v16, :cond_4

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v16, Ljava/util/LinkedList;

    .end local v16           #memberList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .restart local v16       #memberList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_4
    const-string v27, "sizeof"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 765
    const-string v27, "sizeof"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_5
    const/4 v8, 0x0

    .line 770
    .local v8, didSomething:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v7

    .line 771
    .local v7, classes:[Ljava/lang/Class;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_8

    .line 772
    const-class v27, Lcom/googlecode/javacpp/Pointer;

    aget-object v28, v7, v11

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_6

    const-class v27, Lcom/googlecode/javacpp/Pointer$Deallocator;

    aget-object v28, v7, v11

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 774
    :cond_6
    aget-object v27, v7, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z

    move-result v27

    or-int v8, v8, v27

    .line 771
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 778
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    .line 779
    .local v18, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v4, v0, [Z

    .line 780
    .local v4, callbackAllocators:[Z
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/googlecode/javacpp/Generator;->getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 781
    .local v10, functionMethod:Ljava/lang/reflect/Method;
    if-eqz v10, :cond_9

    .line 782
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v26

    .line 783
    .local v26, typeName:[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v26, v27

    const-string v28, "\\("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 784
    .local v24, returnConvention:[Ljava/lang/String;
    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    aget-object v30, v24, v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v24, v27

    .line 785
    const/16 v27, 0x1

    aget-object v27, v26, v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 786
    .local v22, parameterDeclaration:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    .line 787
    .local v13, instanceTypeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "struct JavaCPP_hidden "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " {\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "() : ptr(NULL), obj(NULL) { }\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v24, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "operator()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ptr"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    jobject obj; static jmethodID mid;\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "};\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "jmethodID "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "::mid = NULL;"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 795
    .end local v13           #instanceTypeName:Ljava/lang/String;
    .end local v22           #parameterDeclaration:Ljava/lang/String;
    .end local v24           #returnConvention:[Ljava/lang/String;
    .end local v26           #typeName:[Ljava/lang/String;
    :cond_9
    const/4 v9, 0x1

    .line 796
    .local v9, firstCallback:Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_1d

    .line 797
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v18, v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 798
    .local v20, nativeName:Ljava/lang/String;
    aget-object v27, v18, v11

    const-class v28, Lcom/googlecode/javacpp/annotation/Platform;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 796
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 801
    :cond_b
    aget-object v27, v18, v11

    invoke-static/range {v27 .. v27}, Lcom/googlecode/javacpp/Generator;->getMethodInformation(Ljava/lang/reflect/Method;)Lcom/googlecode/javacpp/Generator$MethodInformation;

    move-result-object v17

    .line 803
    .local v17, methodInfo:Lcom/googlecode/javacpp/Generator$MethodInformation;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "JavaCPP_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_callback"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, callbackName:Ljava/lang/String;
    aget-boolean v27, v4, v11

    if-eqz v27, :cond_c

    if-nez v10, :cond_c

    .line 805
    sget-object v27, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v28, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No callback method call() or apply() has been not declared in \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\". No code will be generated for callback allocator."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    .line 808
    :cond_c
    aget-boolean v27, v4, v11

    if-nez v27, :cond_d

    aget-object v27, v18, v11

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    if-nez v17, :cond_f

    .line 809
    :cond_d
    aget-object v27, v18, v11

    const-class v28, Lcom/googlecode/javacpp/annotation/Name;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/googlecode/javacpp/annotation/Name;

    .line 810
    .local v19, name:Lcom/googlecode/javacpp/annotation/Name;
    if-eqz v19, :cond_e

    invoke-interface/range {v19 .. v19}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_e

    invoke-interface/range {v19 .. v19}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_e

    .line 811
    invoke-interface/range {v19 .. v19}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v5, v27, v28

    .line 813
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v5, v9}, Lcom/googlecode/javacpp/Generator;->doCallback(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;Z)V

    .line 814
    const/4 v9, 0x0

    .line 815
    const/4 v8, 0x1

    .line 818
    .end local v19           #name:Lcom/googlecode/javacpp/annotation/Name;
    :cond_f
    if-eqz v17, :cond_a

    .line 822
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    :cond_10
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z

    move/from16 v27, v0

    if-nez v27, :cond_11

    if-eqz v16, :cond_11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v27

    if-nez v27, :cond_11

    .line 824
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 825
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_11
    const/4 v8, 0x1

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "JNIEXPORT "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " JNICALL Java_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->overloaded:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "__"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->getSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    :cond_12
    move-object/from16 v0, v17

    iget v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "(JNIEnv* env, jclass cls"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    :goto_5
    const/4 v14, 0x0

    .local v14, j:I
    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_14

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    aget-object v29, v29, v14

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " arg"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 837
    .end local v14           #j:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "(JNIEnv* env, jobject obj"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 842
    .restart local v14       #j:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, ") {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    aget-boolean v27, v4, v11

    if-eqz v27, :cond_15

    .line 845
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/googlecode/javacpp/Generator;->doCallbackAllocator(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 847
    :cond_15
    move-object/from16 v0, v17

    iget v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v27

    if-nez v27, :cond_18

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    move/from16 v27, v0

    if-nez v27, :cond_18

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    move/from16 v27, v0

    if-nez v27, :cond_18

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z

    move/from16 v27, v0

    if-nez v27, :cond_18

    .line 850
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v26

    .line 851
    .restart local v26       #typeName:[Ljava/lang/String;
    const-string v27, "void*"

    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 852
    const/16 v27, 0x0

    const-string v28, "char*"

    aput-object v28, v26, v27

    .line 857
    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ptr"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " = ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")jlong_to_ptr(env->GetLongField(obj, JavaCPP_addressFID));"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    if (ptr == NULL) {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v29, v0

    const-class v30, Ljava/lang/NullPointerException;

    invoke-virtual/range {v29 .. v30}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "), \"This pointer address is NULL.\");"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v28, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "        return"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v27, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1b

    const-string v27, ";"

    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    }"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    const-class v27, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    if (ptr->ptr == NULL) {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v29, v0

    const-class v30, Ljava/lang/NullPointerException;

    invoke-virtual/range {v29 .. v30}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "), \"This function pointer address is NULL.\");"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v28, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "        return"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v27, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1c

    const-string v27, ";"

    :goto_9
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    }"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    :cond_17
    const-class v27, Lcom/googlecode/javacpp/annotation/Opaque;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_18

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    jint position = env->GetIntField(obj, JavaCPP_positionFID);"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    ptr += position;"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    jint size = env->GetIntField(obj, JavaCPP_limitFID);"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    size -= position;"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    .end local v26           #typeName:[Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doParametersBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)V

    .line 882
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doReturnBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;

    move-result-object v25

    .line 883
    .local v25, returnPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->doCall(Lcom/googlecode/javacpp/Generator$MethodInformation;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doReturnAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doParametersAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V

    .line 886
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v27, v0

    sget-object v28, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_19

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "    return rarg;"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 853
    .end local v25           #returnPrefix:Ljava/lang/String;
    .restart local v26       #typeName:[Ljava/lang/String;
    :cond_1a
    const-class v27, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 854
    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "*"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 855
    const/16 v27, 0x1

    const-string v28, ""

    aput-object v28, v26, v27

    goto/16 :goto_7

    .line 862
    :cond_1b
    const-string v27, " 0;"

    goto/16 :goto_8

    .line 868
    :cond_1c
    const-string v27, " 0;"

    goto/16 :goto_9

    .line 891
    .end local v5           #callbackName:Ljava/lang/String;
    .end local v14           #j:I
    .end local v17           #methodInfo:Lcom/googlecode/javacpp/Generator$MethodInformation;
    .end local v20           #nativeName:Ljava/lang/String;
    .end local v26           #typeName:[Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_1
.end method

.method private doParametersAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
    .locals 14
    .parameter "methodInfo"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1369
    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    if-eqz v8, :cond_1

    const-string v2, "        "

    .line 1370
    .local v2, indent:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v8, v8

    if-ge v3, v8, :cond_c

    .line 1371
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_2

    .line 1370
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1369
    .end local v2           #indent:Ljava/lang/String;
    .end local v3           #j:I
    :cond_1
    const-string v2, "    "

    goto :goto_0

    .line 1374
    .restart local v2       #indent:Ljava/lang/String;
    .restart local v3       #j:I
    :cond_2
    invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 1375
    .local v5, passBy:Ljava/lang/annotation/Annotation;
    invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, cast:Ljava/lang/String;
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    aget-object v8, v8, v3

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v7

    .line 1377
    .local v7, typeName:[Ljava/lang/String;
    invoke-static {v13, p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v0

    .line 1378
    .local v0, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const-string v8, "void*"

    aget-object v9, v7, v12

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1379
    const-string v8, "char*"

    aput-object v8, v7, v12

    .line 1381
    :cond_3
    const-class v8, Lcom/googlecode/javacpp/Pointer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1382
    if-eqz v0, :cond_5

    .line 1383
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    iget v8, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    if-ge v4, v8, :cond_0

    .line 1384
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    iget-object v9, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "jint rsize"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v10, v3, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " = (jint)adapter"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".size"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v4, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "if (rptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    jvalue args[3];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    args[0].j = ptr_to_jlong(rptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    args[1].i = rsize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    args[2].j = ptr_to_jlong(&("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "::deallocate));"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    env->CallNonvirtualVoidMethodA(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_getClass(env, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    const-class v11, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), JavaCPP_initMID, args);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "} else {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    env->SetIntField(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_limitFID, rsize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " + position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1385
    :cond_4
    const-string v8, ";"

    goto/16 :goto_4

    .line 1397
    .end local v4           #k:I
    :cond_5
    instance-of v8, v5, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-nez v8, :cond_6

    instance-of v8, v5, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    if-eqz v8, :cond_0

    :cond_6
    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v8, :cond_0

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-nez v8, :cond_0

    .line 1399
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    const-class v9, Lcom/googlecode/javacpp/annotation/Opaque;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1400
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -= position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    :cond_7
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "if (arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != NULL) env->SetLongField(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_addressFID, ptr_to_jlong(ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "));"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1405
    :cond_8
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_9

    .line 1406
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "if (arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != NULL) env->ReleaseStringUTFChars(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1407
    :cond_9
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1409
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "if (arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != NULL) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1411
    .local v6, s:Ljava/lang/String;
    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    if-nez v8, :cond_a

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v8, :cond_a

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-nez v8, :cond_a

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v8, :cond_b

    .line 1413
    :cond_a
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "env->ReleasePrimitiveArrayCritical(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", 0);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1415
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1416
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "env->Release"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ArrayElements(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", 0);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1421
    .end local v0           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v1           #cast:Ljava/lang/String;
    .end local v5           #passBy:Ljava/lang/annotation/Annotation;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #typeName:[Ljava/lang/String;
    :cond_c
    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    if-eqz v8, :cond_d

    .line 1422
    iput-boolean v13, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z

    .line 1423
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v9, "    } catch (...) {"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v9, "        JavaCPP_handleException(env);"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v9, "    }"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    :cond_d
    return-void
.end method

.method private doParametersBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
    .locals 14
    .parameter "methodInfo"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 896
    const-string v1, ""

    .line 897
    .local v1, adapterLine:Ljava/lang/String;
    const/4 v5, 0x0

    .line 898
    .local v5, prevAdapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v8, v8

    if-ge v3, v8, :cond_1a

    .line 899
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_3

    .line 900
    invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 901
    .local v4, passBy:Ljava/lang/annotation/Annotation;
    invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, cast:Ljava/lang/String;
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v7

    .line 903
    .local v7, typeName:[Ljava/lang/String;
    invoke-static {v12, p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v0

    .line 905
    .local v0, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const-class v8, Lcom/googlecode/javacpp/FunctionPointer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 906
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    const-class v9, Lcom/googlecode/javacpp/FunctionPointer;

    if-ne v8, v9, :cond_0

    .line 907
    sget-object v8, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Method \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" has an abstract FunctionPointer parameter, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "but a concrete subclass is required. Compilation will most likely fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 910
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-direct {p0, v9}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 911
    const-string v8, ""

    aput-object v8, v7, v13

    .line 914
    :cond_1
    aget-object v8, v7, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_4

    .line 915
    :cond_2
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z

    aput-boolean v13, v8, v3

    .line 916
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 917
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    .end local v0           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v2           #cast:Ljava/lang/String;
    .end local v4           #passBy:Ljava/lang/annotation/Annotation;
    .end local v7           #typeName:[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 921
    .restart local v0       #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .restart local v2       #cast:Ljava/lang/String;
    .restart local v4       #passBy:Ljava/lang/annotation/Annotation;
    .restart local v7       #typeName:[Ljava/lang/String;
    :cond_4
    const-string v8, "void*"

    aget-object v9, v7, v12

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 922
    const-string v8, "char*"

    aput-object v8, v7, v12

    .line 924
    :cond_5
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    const-class v8, Lcom/googlecode/javacpp/Pointer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 926
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? NULL : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")jlong_to_ptr(env->GetLongField(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_addressFID));"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    if-nez v3, :cond_6

    const-class v8, Lcom/googlecode/javacpp/FunctionPointer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v9, Lcom/googlecode/javacpp/annotation/Namespace;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    instance-of v8, v4, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v8, :cond_7

    instance-of v8, v4, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v8, :cond_8

    .line 932
    :cond_7
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    if (ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL) {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        env->ThrowNew(JavaCPP_getClass(env, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    const-class v11, Ljava/lang/NullPointerException;

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), \"Pointer address of argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is NULL.\");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    iget-object v9, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        return"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v11, :cond_10

    const-string v8, ";"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v9, "    }"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    :cond_8
    if-nez v0, :cond_9

    if-eqz v5, :cond_a

    .line 939
    :cond_9
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    jint size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? 0 : env->GetIntField(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_limitFID);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    :cond_a
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    const-class v9, Lcom/googlecode/javacpp/annotation/Opaque;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 943
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    jint position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? 0 : env->GetIntField(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", JavaCPP_positionFID);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    ptr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " += position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    if-nez v0, :cond_b

    if-eqz v5, :cond_c

    .line 947
    :cond_b
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -= position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    .line 983
    iput-boolean v13, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    .line 984
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adapter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    move-object v5, v0

    .line 987
    :cond_d
    if-eqz v5, :cond_f

    .line 988
    const-class v8, Lcom/googlecode/javacpp/FunctionPointer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ptr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    iget v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    if-lez v8, :cond_f

    .line 994
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    :cond_f
    if-eqz v5, :cond_3

    iget v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    if-gtz v8, :cond_3

    .line 998
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 935
    :cond_10
    const-string v8, " 0;"

    goto/16 :goto_2

    .line 950
    :cond_11
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_13

    .line 951
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? NULL : env->GetStringUTFChars(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NULL);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    if-nez v0, :cond_12

    if-eqz v5, :cond_c

    .line 953
    :cond_12
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    jint size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = 0;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 955
    :cond_13
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 957
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? NULL : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 959
    .local v6, s:Ljava/lang/String;
    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    if-nez v8, :cond_14

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v8, :cond_14

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    if-nez v8, :cond_14

    iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v8, :cond_16

    .line 961
    :cond_14
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(j"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*)env->GetPrimitiveArrayCritical(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NULL);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    :goto_4
    if-nez v0, :cond_15

    if-eqz v5, :cond_c

    .line 967
    :cond_15
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    jint size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? 0 : env->GetArrayLength(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 963
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 964
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "env->Get"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ArrayElements(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NULL);"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 970
    .end local v6           #s:Ljava/lang/String;
    :cond_17
    const-class v8, Ljava/nio/Buffer;

    iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 971
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? NULL : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")env->GetDirectBufferAddress(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    if-nez v0, :cond_18

    if-eqz v5, :cond_c

    .line 973
    :cond_18
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    jint size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " == NULL ? 0 : env->GetDirectBufferCapacity(arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 977
    :cond_19
    iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    sget-object v8, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Method \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" has an unsupported parameter of type \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v11, v11, v3

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\". Compilation will most likely fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1003
    .end local v0           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .end local v2           #cast:Ljava/lang/String;
    .end local v4           #passBy:Ljava/lang/annotation/Annotation;
    .end local v7           #typeName:[Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private doReturnAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
    .locals 18
    .parameter "methodInfo"

    .prologue
    .line 1243
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-static {v14, v15}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v12

    .line 1244
    .local v12, typeName:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v14}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    .line 1245
    .local v11, returnBy:Ljava/lang/annotation/Annotation;
    invoke-static {v12}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1246
    .local v13, valueTypeName:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v14, v13, v15}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v2

    .line 1247
    .local v2, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v2, :cond_0

    .line 1248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    :cond_0
    const-class v14, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2

    instance-of v14, v11, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v14, :cond_1

    instance-of v14, v11, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-eqz v14, :cond_2

    .line 1252
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z

    if-nez v14, :cond_3

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    if-eqz v14, :cond_8

    const-string v7, "        "

    .line 1259
    .local v7, indent:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_e

    .line 1260
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    if-eqz v14, :cond_7

    .line 1261
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "jint rcapacity = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    if-eqz v14, :cond_9

    const-string v14, "arg0;"

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v15, Lcom/googlecode/javacpp/Pointer;

    if-eq v14, v15, :cond_5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v15, Lcom/googlecode/javacpp/annotation/NoDeallocator;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_5
    const/4 v10, 0x1

    .line 1264
    .local v10, noDeallocator:Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    .local v3, arr$:[Ljava/lang/annotation/Annotation;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v8, :cond_6

    aget-object v1, v3, v6

    .line 1265
    .local v1, a:Ljava/lang/annotation/Annotation;
    instance-of v14, v1, Lcom/googlecode/javacpp/annotation/NoDeallocator;

    if-eqz v14, :cond_b

    .line 1266
    const/4 v10, 0x1

    .line 1270
    .end local v1           #a:Ljava/lang/annotation/Annotation;
    :cond_6
    if-nez v10, :cond_d

    .line 1271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "jvalue args[3];"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "args[0].j = ptr_to_jlong(rptr);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "args[1].i = rcapacity;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "args[2].j = ptr_to_jlong(&JavaCPP_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    if-eqz v14, :cond_c

    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "_deallocateArray);"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1282
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "env->CallNonvirtualVoidMethodA(obj, JavaCPP_getClass(env, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v16, v0

    const-class v17, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v16 .. v17}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), JavaCPP_initMID, args);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    .end local v3           #arr$:[Ljava/lang/annotation/Annotation;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v10           #noDeallocator:Z
    :cond_7
    :goto_5
    return-void

    .line 1258
    .end local v7           #indent:Ljava/lang/String;
    :cond_8
    const-string v7, "    "

    goto/16 :goto_0

    .line 1261
    .restart local v7       #indent:Ljava/lang/String;
    :cond_9
    const-string v14, "1;"

    goto/16 :goto_1

    .line 1262
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1264
    .restart local v1       #a:Ljava/lang/annotation/Annotation;
    .restart local v3       #arr$:[Ljava/lang/annotation/Annotation;
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #noDeallocator:Z
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1279
    .end local v1           #a:Ljava/lang/annotation/Annotation;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "_deallocate);"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    goto :goto_4

    .line 1285
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "env->SetLongField(obj, JavaCPP_addressFID, ptr_to_jlong(rptr));"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "env->SetIntField(obj, JavaCPP_limitFID, rcapacity);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "env->SetIntField(obj, JavaCPP_capacityFID, rcapacity);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1291
    .end local v3           #arr$:[Ljava/lang/annotation/Annotation;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v10           #noDeallocator:Z
    :cond_e
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    if-nez v14, :cond_7

    .line 1293
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "rarg = ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")rvalue;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1295
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z

    if-eqz v14, :cond_10

    .line 1296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "rarg = rptr;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1298
    :cond_10
    const/4 v9, 0x0

    .line 1299
    .local v9, needInit:Z
    if-eqz v2, :cond_15

    .line 1300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "rptr = radapter;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-eq v14, v15, :cond_11

    .line 1302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "jint rcapacity = (jint)radapter.size;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "jlong deallocator = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-boolean v14, v2, Lcom/googlecode/javacpp/Generator$AdapterInformation;->constant:Z

    if-eqz v14, :cond_14

    const-string v14, "0;"

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    :cond_11
    const/4 v9, 0x1

    .line 1316
    :cond_12
    :goto_7
    const-class v14, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1318
    instance-of v14, v11, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v14, :cond_18

    .line 1320
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    if-lez v14, :cond_17

    .line 1321
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v14, v14

    if-ge v5, v14, :cond_18

    .line 1322
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v4

    .line 1323
    .local v4, cast:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v14, v14, v5

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    if-ne v14, v15, :cond_13

    .line 1324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "if (rptr == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    rarg = arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "} else "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 1303
    .end local v4           #cast:Ljava/lang/String;
    .end local v5           #i:I
    :cond_14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ptr_to_jlong(&("

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v2, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "::deallocate));"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6

    .line 1307
    :cond_15
    instance-of v14, v11, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v14, :cond_16

    const-class v14, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1309
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "jint rcapacity = 1;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "jlong deallocator = ptr_to_jlong(&JavaCPP_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_deallocate);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    .line 1313
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1329
    :cond_17
    move-object/from16 v0, p1

    iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_18

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    if-ne v14, v15, :cond_18

    .line 1330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "if (rptr == ptr) {"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    rarg = obj;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "} else "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v15, "if (rptr != NULL) {"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    rarg = env->AllocObject(JavaCPP_getClass(env, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "));"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    if-eqz v9, :cond_19

    .line 1339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    if (deallocator != 0) {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        jvalue args[3];"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        args[0].j = ptr_to_jlong(rptr);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        args[1].i = rcapacity;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        args[2].j = deallocator;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        env->CallNonvirtualVoidMethodA(rarg, JavaCPP_getClass(env, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    move-object/from16 v16, v0

    const-class v17, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual/range {v16 .. v17}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), JavaCPP_initMID, args);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    } else {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        env->SetLongField(rarg, JavaCPP_addressFID, ptr_to_jlong(rptr));"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        env->SetIntField(rarg, JavaCPP_limitFID, rcapacity);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        env->SetIntField(rarg, JavaCPP_capacityFID, rcapacity);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1352
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    env->SetLongField(rarg, JavaCPP_addressFID, ptr_to_jlong(rptr));"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1355
    :cond_1a
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_1b

    .line 1356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "if (rptr != NULL) {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    rarg = env->NewStringUTF(rptr);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1359
    :cond_1b
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    if-eqz v14, :cond_7

    .line 1360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "if (rptr != NULL) {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    rarg = env->NewDirectByteBuffer(rptr, size);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private doReturnBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
    .locals 11
    .parameter "methodInfo"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1006
    const-string v2, ""

    .line 1007
    .local v2, returnPrefix:Ljava/lang/String;
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 1008
    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    if-eqz v5, :cond_2

    .line 1009
    :cond_0
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    const-class v6, Lcom/googlecode/javacpp/Pointer;

    if-eq v5, v6, :cond_1

    .line 1010
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    if (!env->IsSameObject(env->GetObjectClass(obj), JavaCPP_getClass(env, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "))) {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "        return;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    }"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    :cond_1
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-static {v5}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, typeName:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rptr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .end local v3           #typeName:[Ljava/lang/String;
    :cond_2
    :goto_0
    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    if-eqz v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    try {"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    :cond_3
    return-object v2

    .line 1019
    :cond_4
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 1020
    .restart local v3       #typeName:[Ljava/lang/String;
    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    if-eqz v5, :cond_6

    .line 1021
    :cond_5
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    jobject rarg = obj;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_6
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1023
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-static {v7}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rarg = 0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rvalue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1026
    :cond_7
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v5}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 1027
    .local v1, returnBy:Ljava/lang/annotation/Annotation;
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1029
    .local v4, valueTypeName:Ljava/lang/String;
    const-string v2, "rptr = "

    .line 1030
    aget-object v5, v3, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z

    if-eqz v5, :cond_a

    .line 1031
    :cond_8
    iput-boolean v10, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z

    .line 1032
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-static {v5}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    .line 1033
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rarg = NULL;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rptr;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    :cond_9
    :goto_1
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v9, v4, v5}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v0

    .line 1072
    .local v0, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    if-eqz v0, :cond_2

    .line 1073
    iput-boolean v10, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    .line 1074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1035
    .end local v0           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    :cond_a
    const-class v5, Lcom/googlecode/javacpp/Pointer;

    iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1036
    const-class v5, Lcom/googlecode/javacpp/FunctionPointer;

    iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-direct {p0, v6}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    .line 1038
    const-string v5, ""

    aput-object v5, v3, v10

    .line 1039
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1040
    const-string v2, "if (rptr != NULL) rptr->ptr = "

    .line 1042
    :cond_b
    instance-of v5, v1, Lcom/googlecode/javacpp/annotation/ByVal;

    if-eqz v5, :cond_e

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    invoke-static {v5, v7}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "new (std::nothrow) "

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    :cond_c
    :goto_3
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    jobject rarg = NULL;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rptr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    const-class v5, Lcom/googlecode/javacpp/FunctionPointer;

    iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1053
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    rptr = new (std::nothrow) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1043
    :cond_d
    const-string v5, "new "

    goto :goto_2

    .line 1045
    :cond_e
    instance-of v5, v1, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v5, :cond_f

    .line 1046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1047
    :cond_f
    instance-of v5, v1, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-eqz v5, :cond_c

    .line 1048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "JavaCPP_dereference(env, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1055
    :cond_10
    iget-object v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_12

    .line 1056
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    jstring rarg = NULL;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    const char* rptr;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    instance-of v5, v1, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v5, :cond_11

    .line 1059
    const-string v2, "std::string rstr("

    goto/16 :goto_1

    .line 1061
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(const char*)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1063
    :cond_12
    iget-boolean v5, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    if-eqz v5, :cond_13

    .line 1064
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    jobject rarg = NULL;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    iget-object v5, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    const-string v6, "    char* rptr;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1067
    :cond_13
    sget-object v5, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" has unsupported return type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\". Compilation will most likely fail."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static varargs getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .locals 18
    .parameter "out"
    .parameter "valueTypeName"
    .parameter "annotations"

    .prologue
    .line 2048
    const/4 v3, 0x0

    .line 2049
    .local v3, adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    const/4 v8, 0x0

    .line 2050
    .local v8, constant:Z
    const-string v6, ""

    .line 2051
    .local v6, cast:Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, arr$:[Ljava/lang/annotation/Annotation;
    array-length v12, v4

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_8

    aget-object v1, v4, v11

    .line 2052
    .local v1, a:Ljava/lang/annotation/Annotation;
    instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Adapter;

    if-eqz v14, :cond_5

    move-object v14, v1

    check-cast v14, Lcom/googlecode/javacpp/annotation/Adapter;

    move-object v2, v14

    .line 2053
    .local v2, adapter:Lcom/googlecode/javacpp/annotation/Adapter;
    :goto_1
    if-eqz v2, :cond_6

    .line 2054
    new-instance v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;

    .end local v3           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    invoke-direct {v3}, Lcom/googlecode/javacpp/Generator$AdapterInformation;-><init>()V

    .line 2055
    .restart local v3       #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Adapter;->value()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    .line 2056
    invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Adapter;->argc()I

    move-result v14

    iput v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I

    .line 2057
    if-eq v1, v2, :cond_4

    .line 2059
    :try_start_0
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 2060
    .local v7, cls:Ljava/lang/Class;
    const-class v14, Lcom/googlecode/javacpp/annotation/Const;

    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    if-eqz v14, :cond_0

    .line 2061
    const/4 v8, 0x1

    .line 2064
    :cond_0
    :try_start_1
    const-string v14, "value"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v7, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v1, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2065
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-lez v14, :cond_1

    .line 2066
    move-object/from16 p1, v13

    .line 2073
    .end local v13           #value:Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_2
    const-class v14, Lcom/googlecode/javacpp/annotation/Cast;

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/annotation/Cast;

    .line 2074
    .local v5, c:Lcom/googlecode/javacpp/annotation/Cast;
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    .line 2075
    invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v6, v14, v15

    .line 2076
    if-eqz p1, :cond_2

    .line 2077
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "< "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2079
    :cond_2
    invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 2080
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 2086
    .end local v5           #c:Lcom/googlecode/javacpp/annotation/Cast;
    .end local v7           #cls:Ljava/lang/Class;
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 2087
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "< "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;

    .line 2051
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2052
    .end local v2           #adapter:Lcom/googlecode/javacpp/annotation/Adapter;
    :cond_5
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/googlecode/javacpp/annotation/Adapter;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/googlecode/javacpp/annotation/Adapter;

    move-object v2, v14

    goto/16 :goto_1

    .line 2069
    .restart local v2       #adapter:Lcom/googlecode/javacpp/annotation/Adapter;
    .restart local v7       #cls:Ljava/lang/Class;
    :catch_0
    move-exception v9

    .line 2071
    .local v9, e:Ljava/lang/NoSuchMethodException;
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 2083
    .end local v7           #cls:Ljava/lang/Class;
    .end local v9           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v10

    .line 2084
    .local v10, ex:Ljava/lang/Exception;
    sget-object v14, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not invoke the value() method on annotation \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2090
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_6
    instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Const;

    if-eqz v14, :cond_7

    .line 2091
    const/4 v8, 0x1

    goto :goto_4

    .line 2092
    :cond_7
    instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Cast;

    if-eqz v14, :cond_4

    move-object v5, v1

    .line 2093
    check-cast v5, Lcom/googlecode/javacpp/annotation/Cast;

    .line 2094
    .restart local v5       #c:Lcom/googlecode/javacpp/annotation/Cast;
    invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 2095
    invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v6, v14, v15

    goto :goto_4

    .line 2099
    .end local v1           #a:Ljava/lang/annotation/Annotation;
    .end local v2           #adapter:Lcom/googlecode/javacpp/annotation/Adapter;
    .end local v5           #c:Lcom/googlecode/javacpp/annotation/Cast;
    :cond_8
    if-eqz v3, :cond_9

    .line 2100
    iput-object v6, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;

    .line 2101
    iput-boolean v8, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->constant:Z

    .line 2103
    :cond_9
    if-eqz p0, :cond_a

    if-eqz v8, :cond_a

    const/4 v3, 0x0

    .end local v3           #adapterInfo:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    :cond_a
    return-object v3
.end method

.method public static getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8
    .parameter "annotations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2182
    invoke-static {p0, p1}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 2183
    .local v3, typeName:[Ljava/lang/String;
    aget-object v1, v3, v6

    .line 2184
    .local v1, prefix:Ljava/lang/String;
    aget-object v2, v3, v7

    .line 2186
    .local v2, suffix:Ljava/lang/String;
    invoke-static {p0}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2187
    .local v0, by:Ljava/lang/annotation/Annotation;
    instance-of v4, v0, Lcom/googlecode/javacpp/annotation/ByVal;

    if-eqz v4, :cond_1

    .line 2188
    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2197
    :cond_0
    :goto_0
    aput-object v1, v3, v6

    .line 2198
    aput-object v2, v3, v7

    .line 2199
    return-object v3

    .line 2189
    :cond_1
    instance-of v4, v0, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v4, :cond_2

    .line 2190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2191
    :cond_2
    instance-of v4, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-eqz v4, :cond_3

    .line 2192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2193
    :cond_3
    instance-of v4, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    if-eqz v4, :cond_0

    .line 2194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs getBehavior([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 9
    .parameter "annotations"

    .prologue
    .line 2155
    const/4 v2, 0x0

    .line 2156
    .local v2, behaviorAnnotation:Ljava/lang/annotation/Annotation;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 2157
    .local v0, a:Ljava/lang/annotation/Annotation;
    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Function;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Allocator;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ArrayAllocator;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ValueSetter;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ValueGetter;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/MemberGetter;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/MemberSetter;

    if-eqz v5, :cond_1

    .line 2160
    :cond_0
    if-eqz v2, :cond_2

    .line 2161
    sget-object v5, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Behavior annotation \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" already found. Ignoring superfluous annotation \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2156
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2164
    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 2168
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    :cond_3
    return-object v2
.end method

.method public static varargs getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 9
    .parameter "annotations"

    .prologue
    .line 2139
    const/4 v2, 0x0

    .line 2140
    .local v2, byAnnotation:Ljava/lang/annotation/Annotation;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 2141
    .local v0, a:Ljava/lang/annotation/Annotation;
    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtr;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByRef;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByVal;

    if-eqz v5, :cond_1

    .line 2143
    :cond_0
    if-eqz v2, :cond_2

    .line 2144
    sget-object v5, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"By\" annotation \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" already found. Ignoring superfluous annotation \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2140
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2147
    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 2151
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    :cond_3
    return-object v2
.end method

.method public static getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
    .locals 6
    .parameter "methodInfo"

    .prologue
    .line 2319
    iget-object v3, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 2320
    .local v1, scopeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    const-class v4, Lcom/googlecode/javacpp/annotation/Namespace;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/annotation/Namespace;

    .line 2321
    .local v0, namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    if-nez v0, :cond_5

    const-string v2, ""

    .line 2322
    .local v2, spaceName:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2323
    :cond_1
    const-string v1, ""

    .line 2325
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2328
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2329
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2332
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2321
    .end local v2           #spaceName:Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2336
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, ""

    .line 2337
    .local v4, scopeName:Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_5

    .line 2338
    const-class v6, Lcom/googlecode/javacpp/annotation/Namespace;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacpp/annotation/Namespace;

    .line 2339
    .local v2, namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    if-nez v2, :cond_6

    const-string v5, ""

    .line 2340
    .local v5, spaceName:Ljava/lang/String;
    :goto_1
    const-class v6, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-class v6, Lcom/googlecode/javacpp/Pointer;

    if-eq p0, v6, :cond_2

    .line 2341
    const-class v6, Lcom/googlecode/javacpp/annotation/Name;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacpp/annotation/Name;

    .line 2343
    .local v1, name:Lcom/googlecode/javacpp/annotation/Name;
    if-nez v1, :cond_7

    .line 2344
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2345
    .local v3, s:Ljava/lang/String;
    const-string v6, "$"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2346
    .local v0, i:I
    if-gez v0, :cond_0

    .line 2347
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2349
    :cond_0
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2353
    .end local v0           #i:I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2356
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2358
    .end local v1           #name:Lcom/googlecode/javacpp/annotation/Name;
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2361
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2362
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2368
    .end local v2           #namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    .end local v5           #spaceName:Ljava/lang/String;
    :cond_5
    return-object v4

    .line 2339
    .restart local v2       #namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    :cond_6
    invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 2351
    .restart local v1       #name:Lcom/googlecode/javacpp/annotation/Name;
    .restart local v5       #spaceName:Ljava/lang/String;
    :cond_7
    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v3, v6, v7

    .restart local v3       #s:Ljava/lang/String;
    goto/16 :goto_2

    .line 2366
    .end local v1           #name:Lcom/googlecode/javacpp/annotation/Name;
    .end local v3           #s:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 2367
    goto/16 :goto_0
.end method

.method public static getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2240
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v11, ""

    .local v11, prefix:Ljava/lang/String;
    const-string v16, ""

    .line 2241
    .local v16, suffix:Ljava/lang/String;
    const-class v17, Ljava/nio/Buffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    const-class v17, Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2242
    :cond_0
    const-string v11, "void*"

    .line 2315
    :cond_1
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    return-object v17

    .line 2243
    :cond_2
    const-class v17, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    const-class v17, Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    const-class v17, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2244
    :cond_3
    const-string v11, "signed char*"

    goto :goto_0

    .line 2245
    :cond_4
    const-class v17, [S

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    const-class v17, Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    const-class v17, Lcom/googlecode/javacpp/ShortPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2246
    :cond_5
    const-string v11, "short*"

    goto :goto_0

    .line 2247
    :cond_6
    const-class v17, [I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    const-class v17, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    const-class v17, Lcom/googlecode/javacpp/IntPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 2248
    :cond_7
    const-string v11, "int*"

    goto :goto_0

    .line 2249
    :cond_8
    const-class v17, [J

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    const-class v17, Ljava/nio/LongBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    const-class v17, Lcom/googlecode/javacpp/LongPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 2250
    :cond_9
    const-string v11, "jlong*"

    goto :goto_0

    .line 2251
    :cond_a
    const-class v17, [F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_b

    const-class v17, Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_b

    const-class v17, Lcom/googlecode/javacpp/FloatPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 2252
    :cond_b
    const-string v11, "float*"

    goto/16 :goto_0

    .line 2253
    :cond_c
    const-class v17, [D

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    const-class v17, Ljava/nio/DoubleBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    const-class v17, Lcom/googlecode/javacpp/DoublePointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2254
    :cond_d
    const-string v11, "double*"

    goto/16 :goto_0

    .line 2255
    :cond_e
    const-class v17, [C

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f

    const-class v17, Ljava/nio/CharBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f

    const-class v17, Lcom/googlecode/javacpp/CharPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 2256
    :cond_f
    const-string v11, "unsigned short*"

    goto/16 :goto_0

    .line 2257
    :cond_10
    const-class v17, [Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 2258
    const-string v11, "unsigned char*"

    goto/16 :goto_0

    .line 2259
    :cond_11
    const-class v17, Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 2260
    const-string v11, "void**"

    goto/16 :goto_0

    .line 2261
    :cond_12
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 2262
    const-string v11, "const char*"

    goto/16 :goto_0

    .line 2263
    :cond_13
    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 2264
    const-string v11, "signed char"

    goto/16 :goto_0

    .line 2265
    :cond_14
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 2266
    const-string v11, "jlong"

    goto/16 :goto_0

    .line 2267
    :cond_15
    sget-object v17, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 2268
    const-string v11, "unsigned short"

    goto/16 :goto_0

    .line 2269
    :cond_16
    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 2270
    const-string v11, "unsigned char"

    goto/16 :goto_0

    .line 2271
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 2272
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 2273
    :cond_18
    const-class v17, Lcom/googlecode/javacpp/FunctionPointer;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 2274
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2275
    .local v5, functionMethod:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 2276
    const-class v17, Lcom/googlecode/javacpp/annotation/Convention;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/googlecode/javacpp/annotation/Convention;

    .line 2277
    .local v4, convention:Lcom/googlecode/javacpp/annotation/Convention;
    if-nez v4, :cond_1c

    const-string v3, ""

    .line 2278
    .local v3, callingConvention:Ljava/lang/String;
    :goto_1
    const-class v17, Lcom/googlecode/javacpp/annotation/Namespace;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/googlecode/javacpp/annotation/Namespace;

    .line 2279
    .local v7, namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    if-nez v7, :cond_1d

    const-string v15, ""

    .line 2280
    .local v15, spaceName:Ljava/lang/String;
    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_19

    const-string v17, "::"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 2281
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2283
    :cond_19
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 2284
    .local v12, returnType:Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 2285
    .local v10, parameterTypes:[Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 2286
    .local v2, annotations:[Ljava/lang/annotation/Annotation;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 2287
    .local v9, parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    invoke-static {v2, v12}, Lcom/googlecode/javacpp/Generator;->getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v13

    .line 2288
    .local v13, returnTypeName:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2289
    const-string v16, ")("

    .line 2290
    if-eqz v7, :cond_1a

    const-class v17, Lcom/googlecode/javacpp/Pointer;

    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-nez v17, :cond_1a

    .line 2291
    sget-object v17, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v18, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "First parameter of caller method call() or apply() for member function pointer "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not a Pointer. Compilation will most likely fail."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2294
    :cond_1a
    if-nez v7, :cond_1e

    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1f

    .line 2295
    aget-object v17, v9, v6

    aget-object v18, v10, v6

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacpp/Generator;->getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    .line 2296
    .local v8, paramTypeName:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " arg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2297
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_1b

    .line 2298
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2294
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2277
    .end local v2           #annotations:[Ljava/lang/annotation/Annotation;
    .end local v3           #callingConvention:Ljava/lang/String;
    .end local v6           #j:I
    .end local v7           #namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    .end local v8           #paramTypeName:[Ljava/lang/String;
    .end local v9           #parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    .end local v10           #parameterTypes:[Ljava/lang/Class;
    .end local v12           #returnType:Ljava/lang/Class;
    .end local v13           #returnTypeName:[Ljava/lang/String;
    .end local v15           #spaceName:Ljava/lang/String;
    :cond_1c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/googlecode/javacpp/annotation/Convention;->value()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2279
    .restart local v3       #callingConvention:Ljava/lang/String;
    .restart local v7       #namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    :cond_1d
    invoke-interface {v7}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 2294
    .restart local v2       #annotations:[Ljava/lang/annotation/Annotation;
    .restart local v9       #parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    .restart local v10       #parameterTypes:[Ljava/lang/Class;
    .restart local v12       #returnType:Ljava/lang/Class;
    .restart local v13       #returnTypeName:[Ljava/lang/String;
    .restart local v15       #spaceName:Ljava/lang/String;
    :cond_1e
    const/4 v6, 0x1

    goto :goto_3

    .line 2301
    .restart local v6       #j:I
    :cond_1f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2302
    const-class v17, Lcom/googlecode/javacpp/annotation/Const;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2303
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " const"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 2307
    .end local v2           #annotations:[Ljava/lang/annotation/Annotation;
    .end local v3           #callingConvention:Ljava/lang/String;
    .end local v4           #convention:Lcom/googlecode/javacpp/annotation/Convention;
    .end local v5           #functionMethod:Ljava/lang/reflect/Method;
    .end local v6           #j:I
    .end local v7           #namespace:Lcom/googlecode/javacpp/annotation/Namespace;
    .end local v9           #parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    .end local v10           #parameterTypes:[Ljava/lang/Class;
    .end local v12           #returnType:Ljava/lang/Class;
    .end local v13           #returnTypeName:[Ljava/lang/String;
    .end local v15           #spaceName:Ljava/lang/String;
    :cond_20
    invoke-static/range {p0 .. p0}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    .line 2308
    .local v14, scopedType:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_21

    .line 2309
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 2311
    :cond_21
    sget-object v17, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v18, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not map to any C++ type. Compilation will most likely fail."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
    .locals 9
    .parameter "annotations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 2116
    const/4 v5, 0x0

    .line 2117
    .local v5, typeName:[Ljava/lang/String;
    invoke-static {p0}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 2118
    .local v2, by:Ljava/lang/annotation/Annotation;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 2119
    .local v0, a:Ljava/lang/annotation/Annotation;
    instance-of v6, v0, Lcom/googlecode/javacpp/annotation/Cast;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/googlecode/javacpp/annotation/Cast;

    invoke-interface {v6}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    instance-of v6, v0, Lcom/googlecode/javacpp/annotation/Const;

    if-eqz v6, :cond_3

    instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByVal;

    if-nez v6, :cond_1

    instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByRef;

    if-eqz v6, :cond_3

    .line 2121
    :cond_1
    invoke-static {p0, p1}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    .line 2118
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2122
    :cond_3
    instance-of v6, v0, Lcom/googlecode/javacpp/annotation/Const;

    if-eqz v6, :cond_2

    .line 2123
    invoke-static {p0, p1}, Lcom/googlecode/javacpp/Generator;->getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2126
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    :cond_4
    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6

    :cond_5
    const-string v6, ""

    goto :goto_2
.end method

.method public static getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 14
    .parameter "annotations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2203
    const/4 v8, 0x0

    .line 2204
    .local v8, typeName:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, warning:Z
    const/4 v1, 0x0

    .line 2205
    .local v1, adapter:Z
    move-object v2, p0

    .local v2, arr$:[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_9

    aget-object v0, v2, v3

    .line 2206
    .local v0, a:Ljava/lang/annotation/Annotation;
    instance-of v12, v0, Lcom/googlecode/javacpp/annotation/Cast;

    if-eqz v12, :cond_4

    .line 2207
    if-eqz v8, :cond_2

    move v9, v10

    .line 2208
    :goto_1
    check-cast v0, Lcom/googlecode/javacpp/annotation/Cast;

    .end local v0           #a:Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;

    move-result-object v12

    aget-object v6, v12, v11

    .local v6, prefix:Ljava/lang/String;
    const-string v7, ""

    .line 2209
    .local v7, suffix:Ljava/lang/String;
    const/16 v12, 0x29

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2210
    .local v5, parenthesis:I
    if-lez v5, :cond_0

    .line 2211
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2212
    invoke-virtual {v6, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2214
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/String;

    .end local v8           #typeName:[Ljava/lang/String;
    aput-object v6, v8, v11

    aput-object v7, v8, v10

    .line 2205
    .end local v5           #parenthesis:I
    .end local v6           #prefix:Ljava/lang/String;
    .end local v7           #suffix:Ljava/lang/String;
    .restart local v8       #typeName:[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v0       #a:Ljava/lang/annotation/Annotation;
    :cond_2
    move v9, v11

    .line 2207
    goto :goto_1

    .line 2214
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    .restart local v5       #parenthesis:I
    .restart local v6       #prefix:Ljava/lang/String;
    .restart local v7       #suffix:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 2215
    .end local v5           #parenthesis:I
    .end local v6           #prefix:Ljava/lang/String;
    .end local v7           #suffix:Ljava/lang/String;
    .restart local v0       #a:Ljava/lang/annotation/Annotation;
    :cond_4
    instance-of v12, v0, Lcom/googlecode/javacpp/annotation/Const;

    if-eqz v12, :cond_7

    .line 2216
    if-eqz v8, :cond_5

    move v9, v10

    :goto_3
    if-nez v9, :cond_1

    .line 2220
    invoke-static {p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    .line 2221
    check-cast v0, Lcom/googlecode/javacpp/annotation/Const;

    .end local v0           #a:Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Const;->value()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2222
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " const *"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    goto :goto_2

    .restart local v0       #a:Ljava/lang/annotation/Annotation;
    :cond_5
    move v9, v11

    .line 2216
    goto :goto_3

    .line 2224
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "const "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    goto :goto_2

    .line 2226
    .restart local v0       #a:Ljava/lang/annotation/Annotation;
    :cond_7
    instance-of v12, v0, Lcom/googlecode/javacpp/annotation/Adapter;

    if-nez v12, :cond_8

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Lcom/googlecode/javacpp/annotation/Adapter;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2227
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 2230
    .end local v0           #a:Ljava/lang/annotation/Annotation;
    :cond_9
    if-eqz v9, :cond_a

    if-nez v1, :cond_a

    .line 2231
    sget-object v10, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Without \"Adapter\", \"Cast\" and \"Const\" annotations are mutually exclusive."

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2233
    :cond_a
    if-nez v8, :cond_b

    .line 2234
    invoke-static {p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    .line 2236
    :cond_b
    return-object v8
.end method

.method private getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1774
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/googlecode/javacpp/annotation/Name;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/annotation/Name;

    .line 1775
    .local v0, name:Lcom/googlecode/javacpp/annotation/Name;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaCPP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;
    .locals 8
    .parameter
    .parameter "callbackAllocators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1779
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v7, Lcom/googlecode/javacpp/FunctionPointer;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1780
    const/4 v0, 0x0

    .line 1802
    :cond_0
    return-object v0

    .line 1782
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1783
    .local v3, methods:[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 1784
    .local v0, functionMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    .line 1785
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1786
    .local v2, methodName:Ljava/lang/String;
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 1787
    .local v4, modifiers:I
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1788
    .local v5, parameterTypes:[Ljava/lang/Class;
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1789
    .local v6, returnType:Ljava/lang/Class;
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1784
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1792
    :cond_3
    if-eqz p1, :cond_4

    const-string v7, "allocate"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    array-length v7, v5

    if-nez v7, :cond_4

    .line 1796
    const/4 v7, 0x1

    aput-boolean v7, p1, v1

    goto :goto_1

    .line 1797
    :cond_4
    const-string v7, "call"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "apply"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1799
    :cond_5
    aget-object v0, v3, v1

    goto :goto_1
.end method

.method public static getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 2372
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 2373
    const-string v0, "jbyte"

    .line 2413
    :goto_0
    return-object v0

    .line 2374
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 2375
    const-string v0, "jshort"

    goto :goto_0

    .line 2376
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 2377
    const-string v0, "jint"

    goto :goto_0

    .line 2378
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 2379
    const-string v0, "jlong"

    goto :goto_0

    .line 2380
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 2381
    const-string v0, "jfloat"

    goto :goto_0

    .line 2382
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 2383
    const-string v0, "jdouble"

    goto :goto_0

    .line 2384
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 2385
    const-string v0, "jchar"

    goto :goto_0

    .line 2386
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 2387
    const-string v0, "jboolean"

    goto :goto_0

    .line 2388
    :cond_7
    const-class v0, [B

    if-ne p0, v0, :cond_8

    .line 2389
    const-string v0, "jbyteArray"

    goto :goto_0

    .line 2390
    :cond_8
    const-class v0, [S

    if-ne p0, v0, :cond_9

    .line 2391
    const-string v0, "jshortArray"

    goto :goto_0

    .line 2392
    :cond_9
    const-class v0, [I

    if-ne p0, v0, :cond_a

    .line 2393
    const-string v0, "jintArray"

    goto :goto_0

    .line 2394
    :cond_a
    const-class v0, [J

    if-ne p0, v0, :cond_b

    .line 2395
    const-string v0, "jlongArray"

    goto :goto_0

    .line 2396
    :cond_b
    const-class v0, [F

    if-ne p0, v0, :cond_c

    .line 2397
    const-string v0, "jfloatArray"

    goto :goto_0

    .line 2398
    :cond_c
    const-class v0, [D

    if-ne p0, v0, :cond_d

    .line 2399
    const-string v0, "jdoubleArray"

    goto :goto_0

    .line 2400
    :cond_d
    const-class v0, [C

    if-ne p0, v0, :cond_e

    .line 2401
    const-string v0, "jcharArray"

    goto :goto_0

    .line 2402
    :cond_e
    const-class v0, [Z

    if-ne p0, v0, :cond_f

    .line 2403
    const-string v0, "jbooleanArray"

    goto :goto_0

    .line 2404
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2405
    const-string v0, "jobjectArray"

    goto :goto_0

    .line 2406
    :cond_10
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_11

    .line 2407
    const-string v0, "jstring"

    goto :goto_0

    .line 2408
    :cond_11
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 2409
    const-string v0, "jclass"

    goto :goto_0

    .line 2410
    :cond_12
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_13

    .line 2411
    const-string v0, "void"

    goto/16 :goto_0

    .line 2413
    :cond_13
    const-string v0, "jobject"

    goto/16 :goto_0
.end method

.method public static getMethodInformation(Ljava/lang/reflect/Method;)Lcom/googlecode/javacpp/Generator$MethodInformation;
    .locals 33
    .parameter "method"

    .prologue
    .line 1822
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v29

    if-nez v29, :cond_1

    .line 1823
    const/4 v11, 0x0

    .line 2007
    :cond_0
    :goto_0
    return-object v11

    .line 1825
    :cond_1
    new-instance v11, Lcom/googlecode/javacpp/Generator$MethodInformation;

    invoke-direct {v11}, Lcom/googlecode/javacpp/Generator$MethodInformation;-><init>()V

    .line 1826
    .local v11, info:Lcom/googlecode/javacpp/Generator$MethodInformation;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    .line 1827
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;

    .line 1828
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    .line 1829
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v29

    move/from16 v0, v29

    iput v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    .line 1830
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    .line 1831
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    .line 1832
    const-class v29, Lcom/googlecode/javacpp/annotation/Name;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/googlecode/javacpp/annotation/Name;

    .line 1833
    .local v19, name:Lcom/googlecode/javacpp/annotation/Name;
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v29

    :goto_1
    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    .line 1834
    const-class v29, Lcom/googlecode/javacpp/annotation/Index;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/googlecode/javacpp/annotation/Index;

    .line 1835
    .local v10, index:Lcom/googlecode/javacpp/annotation/Index;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lcom/googlecode/javacpp/annotation/Index;->value()I

    move-result v29

    :goto_2
    move/from16 v0, v29

    iput v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    .line 1836
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    .line 1837
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 1838
    const-class v29, Lcom/googlecode/javacpp/annotation/Raw;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z

    .line 1839
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    const-class v29, Lcom/googlecode/javacpp/annotation/Raw;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/googlecode/javacpp/annotation/Raw;

    invoke-interface/range {v29 .. v29}, Lcom/googlecode/javacpp/annotation/Raw;->withEnv()Z

    move-result v29

    :goto_3
    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z

    .line 1840
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Z

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z

    .line 1841
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 1842
    const/4 v12, 0x0

    .local v12, j:I
    :goto_5
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    aget-object v29, v29, v9

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_6

    .line 1843
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    aget-object v29, v29, v9

    aget-object v29, v29, v12

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/googlecode/javacpp/annotation/Raw;

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 1844
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aput-boolean v30, v29, v9

    .line 1845
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z

    move/from16 v30, v0

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    aget-object v29, v29, v9

    aget-object v29, v29, v12

    check-cast v29, Lcom/googlecode/javacpp/annotation/Raw;

    invoke-interface/range {v29 .. v29}, Lcom/googlecode/javacpp/annotation/Raw;->withEnv()Z

    move-result v29

    or-int v29, v29, v30

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z

    .line 1842
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1833
    .end local v9           #i:I
    .end local v10           #index:Lcom/googlecode/javacpp/annotation/Index;
    .end local v12           #j:I
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    goto/16 :goto_1

    .line 1835
    .restart local v10       #index:Lcom/googlecode/javacpp/annotation/Index;
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1839
    :cond_5
    const/16 v29, 0x0

    goto :goto_3

    .line 1841
    .restart local v9       #i:I
    .restart local v12       #j:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1850
    .end local v12           #j:I
    :cond_7
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_8

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_c

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_c

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isPrimitive()Z

    move-result v29

    if-eqz v29, :cond_c

    :cond_8
    const/4 v5, 0x1

    .line 1852
    .local v5, canBeGetter:Z
    :goto_6
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_9

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d

    :cond_9
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_d

    const/4 v6, 0x1

    .line 1862
    .local v6, canBeSetter:Z
    :goto_7
    iget v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v29

    if-nez v29, :cond_e

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_e

    const/4 v3, 0x1

    .line 1864
    .local v3, canBeAllocator:Z
    :goto_8
    if-eqz v3, :cond_f

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    sget-object v30, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_f

    :cond_a
    const/4 v4, 0x1

    .line 1867
    .local v4, canBeArrayAllocator:Z
    :goto_9
    const/16 v27, 0x0

    .line 1868
    .local v27, valueGetter:Z
    const/16 v28, 0x0

    .line 1869
    .local v28, valueSetter:Z
    const/4 v13, 0x0

    .line 1870
    .local v13, memberGetter:Z
    const/4 v14, 0x0

    .line 1871
    .local v14, memberSetter:Z
    const/16 v20, 0x0

    .line 1872
    .local v20, noReturnGetter:Z
    const/16 v21, 0x0

    .line 1873
    .local v21, pairedMethod:Ljava/lang/reflect/Method;
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    .line 1874
    .local v17, methods:[Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_1f

    .line 1875
    aget-object v15, v17, v9

    .line 1876
    .local v15, method2:Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v18

    .line 1877
    .local v18, modifiers2:I
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v25

    .line 1878
    .local v25, returnType2:Ljava/lang/Class;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1879
    .local v16, methodName2:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v24

    .line 1881
    .local v24, parameterTypes2:[Ljava/lang/Class;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v29

    if-nez v29, :cond_10

    .line 1874
    .end local v25           #returnType2:Ljava/lang/Class;
    :cond_b
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1850
    .end local v3           #canBeAllocator:Z
    .end local v4           #canBeArrayAllocator:Z
    .end local v5           #canBeGetter:Z
    .end local v6           #canBeSetter:Z
    .end local v13           #memberGetter:Z
    .end local v14           #memberSetter:Z
    .end local v15           #method2:Ljava/lang/reflect/Method;
    .end local v16           #methodName2:Ljava/lang/String;
    .end local v17           #methods:[Ljava/lang/reflect/Method;
    .end local v18           #modifiers2:I
    .end local v20           #noReturnGetter:Z
    .end local v21           #pairedMethod:Ljava/lang/reflect/Method;
    .end local v24           #parameterTypes2:[Ljava/lang/Class;
    .end local v27           #valueGetter:Z
    .end local v28           #valueSetter:Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1852
    .restart local v5       #canBeGetter:Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1862
    .restart local v6       #canBeSetter:Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 1864
    .restart local v3       #canBeAllocator:Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    .line 1885
    .restart local v4       #canBeArrayAllocator:Z
    .restart local v13       #memberGetter:Z
    .restart local v14       #memberSetter:Z
    .restart local v15       #method2:Ljava/lang/reflect/Method;
    .restart local v16       #methodName2:Ljava/lang/String;
    .restart local v17       #methods:[Ljava/lang/reflect/Method;
    .restart local v18       #modifiers2:I
    .restart local v20       #noReturnGetter:Z
    .restart local v21       #pairedMethod:Ljava/lang/reflect/Method;
    .restart local v24       #parameterTypes2:[Ljava/lang/Class;
    .restart local v25       #returnType2:Ljava/lang/Class;
    .restart local v27       #valueGetter:Z
    .restart local v28       #valueSetter:Z
    :cond_10
    const/4 v7, 0x0

    .line 1886
    .local v7, canBeValueGetter:Z
    const/4 v8, 0x0

    .line 1887
    .local v8, canBeValueSetter:Z
    if-eqz v5, :cond_12

    const-string v29, "get"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    const-string v29, "put"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1888
    const/4 v7, 0x1

    .line 1897
    :goto_c
    const/16 v26, 0x1

    .line 1898
    .local v26, sameIndexParameters:Z
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_d
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_14

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_14

    .line 1899
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    aget-object v29, v29, v12

    aget-object v30, v24, v12

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 1900
    const/16 v26, 0x0

    .line 1898
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 1889
    .end local v12           #j:I
    .end local v26           #sameIndexParameters:Z
    :cond_12
    if-eqz v6, :cond_13

    const-string v29, "put"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const-string v29, "get"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1890
    const/4 v8, 0x1

    goto :goto_c

    .line 1891
    :cond_13
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1892
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->overloaded:Z

    goto :goto_c

    .line 1903
    .restart local v12       #j:I
    .restart local v26       #sameIndexParameters:Z
    :cond_14
    if-eqz v26, :cond_b

    .line 1907
    if-eqz v7, :cond_16

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_16

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_16

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isPrimitive()Z

    move-result v29

    if-eqz v29, :cond_16

    const/16 v22, 0x1

    .line 1909
    .local v22, parameterAsReturn:Z
    :goto_e
    if-eqz v8, :cond_17

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_17

    const/16 v29, 0x0

    aget-object v29, v24, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_17

    const/16 v29, 0x0

    aget-object v29, v24, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isPrimitive()Z

    move-result v29

    if-eqz v29, :cond_17

    const/16 v23, 0x1

    .line 1912
    .local v23, parameterAsReturn2:Z
    :goto_f
    if-eqz v5, :cond_1b

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    if-eqz v22, :cond_18

    const/16 v29, 0x0

    :goto_10
    sub-int v29, v30, v29

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    if-eqz v22, :cond_19

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-object v29, v29, v30

    :goto_11
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-object v30, v24, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1b

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_15

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 1915
    :cond_15
    move-object/from16 v21, v15

    .line 1916
    move/from16 v27, v7

    .line 1917
    if-nez v7, :cond_1a

    const/4 v13, 0x1

    .line 1918
    :goto_12
    move/from16 v20, v22

    goto/16 :goto_b

    .line 1907
    .end local v22           #parameterAsReturn:Z
    .end local v23           #parameterAsReturn2:Z
    :cond_16
    const/16 v22, 0x0

    goto :goto_e

    .line 1909
    .restart local v22       #parameterAsReturn:Z
    :cond_17
    const/16 v23, 0x0

    goto :goto_f

    .line 1912
    .restart local v23       #parameterAsReturn2:Z
    :cond_18
    const/16 v29, 0x1

    goto :goto_10

    :cond_19
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    goto :goto_11

    .line 1917
    :cond_1a
    const/4 v13, 0x0

    goto :goto_12

    .line 1919
    :cond_1b
    if-eqz v6, :cond_b

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    if-eqz v23, :cond_1d

    const/16 v29, 0x0

    :goto_13
    sub-int v29, v30, v29

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    if-eqz v23, :cond_1c

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-object v25, v24, v29

    .end local v25           #returnType2:Ljava/lang/Class;
    :cond_1c
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-object v29, v29, v30

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1922
    move-object/from16 v21, v15

    .line 1923
    move/from16 v28, v8

    .line 1924
    if-nez v8, :cond_1e

    const/4 v14, 0x1

    :goto_14
    goto/16 :goto_b

    .line 1919
    .restart local v25       #returnType2:Ljava/lang/Class;
    :cond_1d
    const/16 v29, 0x1

    goto :goto_13

    .line 1924
    .end local v25           #returnType2:Ljava/lang/Class;
    :cond_1e
    const/4 v14, 0x0

    goto :goto_14

    .line 1928
    .end local v7           #canBeValueGetter:Z
    .end local v8           #canBeValueSetter:Z
    .end local v12           #j:I
    .end local v15           #method2:Ljava/lang/reflect/Method;
    .end local v16           #methodName2:Ljava/lang/String;
    .end local v18           #modifiers2:I
    .end local v22           #parameterAsReturn:Z
    .end local v23           #parameterAsReturn2:Z
    .end local v24           #parameterTypes2:[Ljava/lang/Class;
    .end local v26           #sameIndexParameters:Z
    :cond_1f
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->getBehavior([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 1929
    .local v2, behavior:Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_2a

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ValueGetter;

    move/from16 v29, v0

    if-eqz v29, :cond_2a

    .line 1930
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    .line 1931
    move/from16 v0, v20

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    .line 1977
    :cond_20
    :goto_15
    if-nez v19, :cond_21

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    move-object/from16 v29, v0

    if-eqz v29, :cond_21

    .line 1978
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    move-object/from16 v29, v0

    const-class v30, Lcom/googlecode/javacpp/annotation/Name;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    .end local v19           #name:Lcom/googlecode/javacpp/annotation/Name;
    check-cast v19, Lcom/googlecode/javacpp/annotation/Name;

    .line 1979
    .restart local v19       #name:Lcom/googlecode/javacpp/annotation/Name;
    if-eqz v19, :cond_21

    .line 1980
    invoke-interface/range {v19 .. v19}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;

    .line 1984
    :cond_21
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v29, v0

    const-class v30, Lcom/googlecode/javacpp/annotation/NoOffset;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    if-nez v29, :cond_22

    const-class v29, Lcom/googlecode/javacpp/annotation/NoOffset;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    if-nez v29, :cond_22

    const-class v29, Lcom/googlecode/javacpp/annotation/Index;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    if-eqz v29, :cond_38

    :cond_22
    const/16 v29, 0x1

    :goto_16
    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z

    .line 1987
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z

    move/from16 v29, v0

    if-nez v29, :cond_24

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    move-object/from16 v29, v0

    if-eqz v29, :cond_24

    .line 1988
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    move-object/from16 v29, v0

    const-class v30, Lcom/googlecode/javacpp/annotation/NoOffset;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    if-nez v29, :cond_23

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    move-object/from16 v29, v0

    const-class v30, Lcom/googlecode/javacpp/annotation/Index;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v29

    if-eqz v29, :cond_39

    :cond_23
    const/16 v29, 0x1

    :goto_17
    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z

    .line 1992
    :cond_24
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_25

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-nez v29, :cond_27

    .line 1993
    :cond_25
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_26

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3a

    .line 1994
    :cond_26
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    .line 2000
    :cond_27
    :goto_18
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 2001
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;

    move/from16 v29, v0

    if-eqz v29, :cond_28

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v29

    if-eqz v29, :cond_29

    :cond_28
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 2004
    :cond_29
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->mayThrowException:Z

    goto/16 :goto_0

    .line 1932
    :cond_2a
    if-eqz v6, :cond_2b

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ValueSetter;

    move/from16 v29, v0

    if-eqz v29, :cond_2b

    .line 1933
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    goto/16 :goto_15

    .line 1934
    :cond_2b
    if-eqz v5, :cond_2c

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/MemberGetter;

    move/from16 v29, v0

    if-eqz v29, :cond_2c

    .line 1935
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    .line 1936
    move/from16 v0, v20

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    goto/16 :goto_15

    .line 1937
    :cond_2c
    if-eqz v6, :cond_2d

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/MemberSetter;

    move/from16 v29, v0

    if-eqz v29, :cond_2d

    .line 1938
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    goto/16 :goto_15

    .line 1939
    :cond_2d
    if-eqz v3, :cond_2e

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/Allocator;

    move/from16 v29, v0

    if-eqz v29, :cond_2e

    .line 1940
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    goto/16 :goto_15

    .line 1941
    :cond_2e
    if-eqz v4, :cond_2f

    instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ArrayAllocator;

    move/from16 v29, v0

    if-eqz v29, :cond_2f

    .line 1942
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    goto/16 :goto_15

    .line 1943
    :cond_2f
    if-nez v2, :cond_37

    .line 1945
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_30

    const-string v29, "deallocate"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_30

    iget v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v29

    if-nez v29, :cond_30

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    sget-object v30, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_30

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    sget-object v30, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 1948
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z

    goto/16 :goto_15

    .line 1949
    :cond_30
    if-eqz v3, :cond_31

    const-string v29, "allocate"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_31

    .line 1950
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    goto/16 :goto_15

    .line 1951
    :cond_31
    if-eqz v4, :cond_32

    const-string v29, "allocateArray"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_32

    .line 1952
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z

    goto/16 :goto_15

    .line 1953
    :cond_32
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;

    move-object/from16 v29, v0

    const-class v30, Ljava/nio/ByteBuffer;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v29

    if-eqz v29, :cond_33

    const-string v29, "asDirectBuffer"

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_33

    iget v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v29

    if-nez v29, :cond_33

    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_33

    .line 1955
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z

    goto/16 :goto_15

    .line 1956
    :cond_33
    if-eqz v27, :cond_34

    .line 1957
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z

    .line 1958
    move/from16 v0, v20

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    .line 1959
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_15

    .line 1960
    :cond_34
    if-eqz v28, :cond_35

    .line 1961
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    .line 1962
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_15

    .line 1963
    :cond_35
    if-eqz v13, :cond_36

    .line 1964
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z

    .line 1965
    move/from16 v0, v20

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z

    .line 1966
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_15

    .line 1967
    :cond_36
    if-eqz v14, :cond_20

    .line 1968
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    .line 1969
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_15

    .line 1972
    :cond_37
    sget-object v29, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;

    sget-object v30, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Method \""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" cannot behave like a \""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\". No code will be generated."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1974
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1984
    :cond_38
    const/16 v29, 0x0

    goto/16 :goto_16

    .line 1988
    :cond_39
    const/16 v29, 0x0

    goto/16 :goto_17

    .line 1995
    :cond_3a
    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    move/from16 v29, v0

    if-nez v29, :cond_3b

    iget-boolean v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    move/from16 v29, v0

    if-eqz v29, :cond_27

    .line 1996
    :cond_3b
    iget-object v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    iput v0, v11, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I

    goto/16 :goto_18
.end method

.method public static getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 2
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2011
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/googlecode/javacpp/annotation/NoException;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2013
    .local v0, noException:Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 2014
    const-class v1, Lcom/googlecode/javacpp/annotation/NoException;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2019
    :cond_1
    return v0

    .line 2011
    .end local v0           #noException:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2017
    .restart local v0       #noException:Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
    .locals 7
    .parameter "out"
    .parameter "methodInfo"
    .parameter "j"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2029
    if-eqz p0, :cond_2

    iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v3, v3, p2

    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v3, :cond_2

    .line 2030
    :cond_0
    const/4 v0, 0x0

    .line 2045
    :cond_1
    :goto_0
    return-object v0

    .line 2032
    :cond_2
    invoke-static {p1, p2}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;

    move-result-object v1

    .line 2033
    .local v1, typeName:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2034
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2036
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 2037
    :cond_4
    iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, p2

    iget-object v4, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v4, v4, p2

    invoke-static {v3, v4}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v5

    .line 2039
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2040
    .local v2, valueTypeName:Ljava/lang/String;
    iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, p2

    invoke-static {p0, v2, v3}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v0

    .line 2041
    .local v0, adapter:Lcom/googlecode/javacpp/Generator$AdapterInformation;
    if-nez v0, :cond_1

    iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v3, :cond_6

    iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v3, :cond_1

    .line 2043
    :cond_6
    iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
    .locals 2
    .parameter "methodInfo"
    .parameter "j"

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2131
    .local v0, passBy:Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v1, :cond_1

    .line 2133
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2135
    :cond_1
    return-object v0
.end method

.method public static getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
    .locals 3
    .parameter "methodInfo"
    .parameter "j"

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    .local v0, cast:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 2110
    iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    :cond_2
    return-object v0
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 2425
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 2426
    const-string v0, "B"

    .line 2446
    :goto_0
    return-object v0

    .line 2427
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 2428
    const-string v0, "S"

    goto :goto_0

    .line 2429
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 2430
    const-string v0, "I"

    goto :goto_0

    .line 2431
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 2432
    const-string v0, "J"

    goto :goto_0

    .line 2433
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 2434
    const-string v0, "F"

    goto :goto_0

    .line 2435
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 2436
    const-string v0, "D"

    goto :goto_0

    .line 2437
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 2438
    const-string v0, "Z"

    goto :goto_0

    .line 2439
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 2440
    const-string v0, "C"

    goto :goto_0

    .line 2441
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 2442
    const-string v0, "V"

    goto :goto_0

    .line 2443
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2444
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2446
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs getSignature([Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 2418
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2419
    .local v1, signature:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2420
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2422
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "typeName"

    .prologue
    const/4 v2, 0x0

    .line 2172
    aget-object v0, p0, v2

    .line 2173
    .local v0, type:Ljava/lang/String;
    const-string v1, "const "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2174
    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2178
    :cond_0
    :goto_0
    return-object v0

    .line 2175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 2451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2452
    .local v3, mangledName:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 2453
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2454
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_2

    :cond_0
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    if-le v0, v4, :cond_2

    :cond_1
    const/16 v4, 0x61

    if-lt v0, v4, :cond_3

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_3

    .line 2455
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2452
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2456
    :cond_3
    const/16 v4, 0x5f

    if-ne v0, v4, :cond_4

    .line 2457
    const-string v4, "_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2458
    :cond_4
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_5

    .line 2459
    const-string v4, "_2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2460
    :cond_5
    const/16 v4, 0x5b

    if-ne v0, v4, :cond_6

    .line 2461
    const-string v4, "_3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2462
    :cond_6
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_8

    .line 2463
    :cond_7
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2465
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2466
    .local v1, code:Ljava/lang/String;
    const-string v4, "_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2471
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2468
    :pswitch_0
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    :pswitch_1
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    :pswitch_2
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2475
    .end local v0           #c:C
    .end local v1           #code:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z
    .locals 13
    .parameter "platform"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1753
    if-nez p1, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return v8

    .line 1756
    :cond_1
    iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->properties:Ljava/util/Properties;

    const-string v11, "platform.name"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, platformName:Ljava/lang/String;
    new-array v5, v12, [[Ljava/lang/String;

    invoke-interface {p1}, Lcom/googlecode/javacpp/annotation/Platform;->value()[Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-interface {p1}, Lcom/googlecode/javacpp/annotation/Platform;->not()[Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1758
    .local v5, names:[[Ljava/lang/String;
    new-array v4, v12, [Z

    fill-array-data v4, :array_0

    .line 1759
    .local v4, matches:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v10, v5

    if-ge v1, v10, :cond_4

    .line 1760
    aget-object v0, v5, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 1761
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1762
    aput-boolean v8, v4, v1

    .line 1759
    .end local v7           #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1760
    .restart local v7       #s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1767
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :cond_4
    aget-object v10, v5, v9

    array-length v10, v10

    if-eqz v10, :cond_5

    aget-boolean v10, v4, v9

    if-eqz v10, :cond_6

    :cond_5
    aget-object v10, v5, v8

    array-length v10, v10

    if-eqz v10, :cond_0

    aget-boolean v10, v4, v8

    if-eqz v10, :cond_0

    :cond_6
    move v8, v9

    .line 1770
    goto :goto_0

    .line 1758
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public close()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 194
    :cond_1
    return-void
.end method

.method public varargs generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 4
    .parameter "sourceFilename"
    .parameter "headerFilename"
    .parameter "classPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .local p4, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Lcom/googlecode/javacpp/Generator$1;

    invoke-direct {v2, p0}, Lcom/googlecode/javacpp/Generator$1;-><init>(Lcom/googlecode/javacpp/Generator;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    .line 166
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 167
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 168
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 169
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 170
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 171
    new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;

    .line 173
    iput-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z

    .line 174
    iput-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    .line 175
    invoke-direct {p0, v3, v3, p3, p4}, Lcom/googlecode/javacpp/Generator;->doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;

    .line 178
    if-eqz p2, :cond_0

    .line 179
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/googlecode/javacpp/Generator;->doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 183
    :cond_1
    return v0
.end method
