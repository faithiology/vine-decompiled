.class public Lcom/googlecode/javacpp/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field static loadLibraries:Z

.field static loadedLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field static memberOffsets:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static platformName:Ljava/lang/String;

.field private static platformProperties:Ljava/util/Properties;

.field static tempDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacpp/Loader;->logger:Ljava/util/logging/Logger;

    .line 56
    sput-object v1, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    .line 58
    sput-object v1, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    .line 392
    sput-object v1, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    .line 618
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/googlecode/javacpp/Loader$2;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Loader$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 667
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendProperties(Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 38
    .parameter "properties"
    .parameter "cls"

    .prologue
    .line 156
    move-object/from16 v6, p1

    .line 158
    .local v6, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v34

    if-eqz v34, :cond_0

    .line 159
    const-class v34, Lcom/googlecode/javacpp/annotation/Properties;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 173
    :cond_0
    const-string v34, "platform.name"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 174
    .local v28, platformName:Ljava/lang/String;
    const-class v34, Lcom/googlecode/javacpp/annotation/Properties;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/googlecode/javacpp/annotation/Properties;

    .line 177
    .local v8, classProperties:Lcom/googlecode/javacpp/annotation/Properties;
    if-nez v8, :cond_5

    .line 179
    :try_start_0
    const-class v34, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacpp/annotation/Platform;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v27, platform:Lcom/googlecode/javacpp/annotation/Platform;
    if-nez v27, :cond_3

    .line 247
    .end local v27           #platform:Lcom/googlecode/javacpp/annotation/Platform;
    :goto_1
    return-object v6

    .line 162
    .end local v8           #classProperties:Lcom/googlecode/javacpp/annotation/Properties;
    .end local v28           #platformName:Ljava/lang/String;
    :cond_1
    const-class v34, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 163
    const-class v34, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v26

    check-cast v26, Lcom/googlecode/javacpp/annotation/Platform;

    .line 164
    .local v26, p:Lcom/googlecode/javacpp/annotation/Platform;
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-gtz v34, :cond_0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-gtz v34, :cond_0

    .line 171
    .end local v26           #p:Lcom/googlecode/javacpp/annotation/Platform;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    goto/16 :goto_0

    .line 183
    .restart local v8       #classProperties:Lcom/googlecode/javacpp/annotation/Properties;
    .restart local v27       #platform:Lcom/googlecode/javacpp/annotation/Platform;
    .restart local v28       #platformName:Ljava/lang/String;
    :cond_3
    const/16 v34, 0x1

    :try_start_1
    move/from16 v0, v34

    new-array v0, v0, [Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v29, v0

    const/16 v34, 0x0

    aput-object v27, v29, v34
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v27           #platform:Lcom/googlecode/javacpp/annotation/Platform;
    .local v29, platforms:[Lcom/googlecode/javacpp/annotation/Platform;
    :goto_2
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    .local v10, define:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v15, v0, [Ljava/lang/String;

    .local v15, include:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v7, v0, [Ljava/lang/String;

    .local v7, cinclude:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, includepath:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 194
    .local v25, options:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, linkpath:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .local v20, link:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v11, v0, [Ljava/lang/String;

    .local v11, framework:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    .local v31, preloadpath:[Ljava/lang/String;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 195
    .local v30, preload:[Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "jni"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 196
    .local v19, library:Ljava/lang/String;
    move-object/from16 v4, v29

    .local v4, arr$:[Lcom/googlecode/javacpp/annotation/Platform;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v14, v13

    .end local v4           #arr$:[Lcom/googlecode/javacpp/annotation/Platform;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .local v14, i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_15

    aget-object v26, v4, v14

    .line 197
    .restart local v26       #p:Lcom/googlecode/javacpp/annotation/Platform;
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v34, 0x0

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->value()[Ljava/lang/String;

    move-result-object v35

    aput-object v35, v23, v34

    const/16 v34, 0x1

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->not()[Ljava/lang/String;

    move-result-object v35

    aput-object v35, v23, v34

    .line 198
    .local v23, names:[[Ljava/lang/String;
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 199
    .local v22, matches:[Z
    const/4 v12, 0x0

    .end local v14           #i$:I
    .local v12, i:I
    :goto_4
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_7

    .line 200
    aget-object v5, v23, v12

    .local v5, arr$:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_5
    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    aget-object v32, v5, v13

    .line 201
    .local v32, s:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 202
    const/16 v34, 0x1

    aput-boolean v34, v22, v12

    .line 199
    .end local v32           #s:Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 185
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #cinclude:[Ljava/lang/String;
    .end local v10           #define:[Ljava/lang/String;
    .end local v11           #framework:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v15           #include:[Ljava/lang/String;
    .end local v16           #includepath:[Ljava/lang/String;
    .end local v18           #len$:I
    .end local v19           #library:Ljava/lang/String;
    .end local v20           #link:[Ljava/lang/String;
    .end local v21           #linkpath:[Ljava/lang/String;
    .end local v22           #matches:[Z
    .end local v23           #names:[[Ljava/lang/String;
    .end local v25           #options:[Ljava/lang/String;
    .end local v26           #p:Lcom/googlecode/javacpp/annotation/Platform;
    .end local v29           #platforms:[Lcom/googlecode/javacpp/annotation/Platform;
    .end local v30           #preload:[Ljava/lang/String;
    .end local v31           #preloadpath:[Ljava/lang/String;
    :catch_0
    move-exception v33

    .line 186
    .local v33, t:Ljava/lang/Throwable;
    sget-object v34, Lcom/googlecode/javacpp/Loader;->logger:Ljava/util/logging/Logger;

    sget-object v35, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Could not append properties for "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    .end local v33           #t:Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v8}, Lcom/googlecode/javacpp/annotation/Properties;->value()[Lcom/googlecode/javacpp/annotation/Platform;

    move-result-object v29

    .restart local v29       #platforms:[Lcom/googlecode/javacpp/annotation/Platform;
    goto/16 :goto_2

    .line 200
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v7       #cinclude:[Ljava/lang/String;
    .restart local v10       #define:[Ljava/lang/String;
    .restart local v11       #framework:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #i$:I
    .restart local v15       #include:[Ljava/lang/String;
    .restart local v16       #includepath:[Ljava/lang/String;
    .restart local v18       #len$:I
    .restart local v19       #library:Ljava/lang/String;
    .restart local v20       #link:[Ljava/lang/String;
    .restart local v21       #linkpath:[Ljava/lang/String;
    .restart local v22       #matches:[Z
    .restart local v23       #names:[[Ljava/lang/String;
    .restart local v25       #options:[Ljava/lang/String;
    .restart local v26       #p:Lcom/googlecode/javacpp/annotation/Platform;
    .restart local v30       #preload:[Ljava/lang/String;
    .restart local v31       #preloadpath:[Ljava/lang/String;
    .restart local v32       #s:Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 207
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v18           #len$:I
    .end local v32           #s:Ljava/lang/String;
    :cond_7
    const/16 v34, 0x0

    aget-object v34, v23, v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v34, 0x0

    aget-boolean v34, v22, v34

    if-eqz v34, :cond_14

    :cond_8
    const/16 v34, 0x1

    aget-object v34, v23, v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-eqz v34, :cond_9

    const/16 v34, 0x1

    aget-boolean v34, v22, v34

    if-nez v34, :cond_14

    .line 208
    :cond_9
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_a

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v10

    .line 209
    :cond_a
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_b

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v15

    .line 210
    :cond_b
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_c

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v7

    .line 211
    :cond_c
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_d

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v16

    .line 212
    :cond_d
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_e

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v25

    .line 213
    :cond_e
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_f

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v21

    .line 214
    :cond_f
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_10

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v20

    .line 215
    :cond_10
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_11

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v11

    .line 216
    :cond_11
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_12

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v31

    .line 217
    :cond_12
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_13

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v30

    .line 218
    :cond_13
    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_14

    invoke-interface/range {v26 .. v26}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v19

    .line 196
    :cond_14
    add-int/lit8 v13, v14, 0x1

    .restart local v13       #i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto/16 :goto_3

    .line 222
    .end local v12           #i:I
    .end local v22           #matches:[Z
    .end local v23           #names:[[Ljava/lang/String;
    .end local v26           #p:Lcom/googlecode/javacpp/annotation/Platform;
    :cond_15
    const-string v34, "path.separator"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 223
    .restart local v32       #s:Ljava/lang/String;
    const-string v34, "generator.define"

    const-string v35, "\u0000"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v10}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    const-string v34, "generator.include"

    const-string v35, "\u0000"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v15}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    const-string v34, "generator.cinclude"

    const-string v35, "\u0000"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v7}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    const-string v34, "compiler.includepath"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_17

    .line 228
    const-string v34, "compiler.options"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, defaultOptions:Ljava/lang/String;
    const-string v34, "compiler.options"

    const-string v35, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_17

    .line 231
    move-object/from16 v24, v9

    .line 232
    .local v24, o:Ljava/lang/String;
    aget-object v34, v25, v12

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_16

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "compiler.options."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v25, v12

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_16

    .line 233
    sget-object v34, Lcom/googlecode/javacpp/Loader;->logger:Ljava/util/logging/Logger;

    sget-object v35, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Could not find a property name \"compiler.options."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    aget-object v37, v25, v12

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\"."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 230
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 235
    :cond_16
    const-string v34, "compiler.options"

    const-string v35, " "

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v24, v36, v37

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 239
    .end local v9           #defaultOptions:Ljava/lang/String;
    .end local v12           #i:I
    .end local v24           #o:Ljava/lang/String;
    :cond_17
    const-string v34, "compiler.linkpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    const-string v34, "compiler.link"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    const-string v34, "compiler.framework"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2, v11}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    const-string v34, "loader.preloadpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const-string v34, "loader.preloadpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    const-string v34, "loader.preload"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    const-string v34, "loader.preload"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    const-string v34, "loader.library"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 198
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public static varargs appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter "properties"
    .parameter "name"
    .parameter "separator"
    .parameter "values"

    .prologue
    .line 260
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v12, v0

    if-nez v12, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x0

    aget-object v12, p3, v12

    if-eqz v12, :cond_2

    .line 263
    const/4 v12, 0x0

    aget-object v12, p3, v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 265
    :cond_2
    const-string v12, ""

    invoke-virtual {p0, p1, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, oldValue:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, oldValues:[Ljava/lang/String;
    const-string v11, ""

    .line 269
    .local v11, value:Ljava/lang/String;
    move-object/from16 v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_7

    aget-object v10, v1, v4

    .line 270
    .local v10, v:Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    .line 269
    .end local v4           #i$:I
    :cond_3
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .restart local v3       #i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 273
    :cond_4
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_5

    aget-object v9, v2, v3

    .line 274
    .local v9, ov:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 278
    .end local v9           #ov:Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 279
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 281
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 283
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v10           #v:Ljava/lang/String;
    .restart local v4       #i$:I
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 284
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 286
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, p1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static extractResource(Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "cls"
    .parameter "name"
    .parameter "directory"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static extractResource(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "name"
    .parameter "directory"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 330
    .local v0, cls:Ljava/lang/Class;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .parameter "resourceURL"
    .parameter "directory"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 358
    .local v6, is:Ljava/io/InputStream;
    :goto_0
    if-nez v6, :cond_1

    .line 387
    :goto_1
    return-object v3

    .end local v6           #is:Ljava/io/InputStream;
    :cond_0
    move-object v6, v3

    .line 357
    goto :goto_0

    .line 361
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_1
    const/4 v3, 0x0

    .line 362
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 364
    .local v5, fileExisted:Z
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 365
    if-nez p1, :cond_2

    .line 366
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "java.io.tmpdir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local p1
    .local v1, directory:Ljava/io/File;
    move-object p1, v1

    .line 368
    .end local v1           #directory:Ljava/io/File;
    .restart local p1
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    move-object v3, v4

    .line 373
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :goto_2
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 374
    .local v8, os:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 376
    .local v0, buffer:[B
    :goto_3
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, length:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_5

    .line 377
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 381
    .end local v0           #buffer:[B
    .end local v7           #length:I
    .end local v8           #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 382
    .local v2, e:Ljava/io/IOException;
    :goto_4
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 385
    :cond_3
    throw v2

    .line 371
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-static {p2, p3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    goto :goto_2

    .line 379
    .restart local v0       #buffer:[B
    .restart local v7       #length:I
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 380
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 381
    .end local v0           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_4
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .locals 5
    .parameter "i"

    .prologue
    .line 296
    new-instance v3, Lcom/googlecode/javacpp/Loader$1;

    invoke-direct {v3}, Lcom/googlecode/javacpp/Loader$1;-><init>()V

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Loader$1;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    .line 301
    .local v0, classContext:[Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 302
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 303
    aget-object v3, v0, v2

    const-class v4, Lcom/googlecode/javacpp/Loader;

    if-ne v3, v4, :cond_0

    .line 304
    add-int v3, p0, v2

    aget-object v3, v0, v3

    .line 318
    .end local v2           #j:I
    :goto_1
    return-object v3

    .line 302
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2           #j:I
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 311
    .local v1, classNames:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 312
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacpp/Loader;

    if-ne v3, v4, :cond_2

    .line 313
    add-int v3, p0, v2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 311
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    .end local v1           #classNames:[Ljava/lang/StackTraceElement;
    .end local v2           #j:I
    :catch_0
    move-exception v3

    .line 318
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    sget-object v4, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 67
    sget-object v4, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    .line 89
    .local v0, jvmName:Ljava/lang/String;
    .local v1, osArch:Ljava/lang/String;
    .local v2, osName:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 69
    .end local v0           #jvmName:Ljava/lang/String;
    .end local v1           #osArch:Ljava/lang/String;
    .end local v2           #osName:Ljava/lang/String;
    :cond_0
    const-string v4, "java.vm.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0       #jvmName:Ljava/lang/String;
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 71
    .restart local v2       #osName:Ljava/lang/String;
    const-string v4, "os.arch"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1       #osArch:Ljava/lang/String;
    const-string v4, "dalvik"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "linux"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    const-string v2, "android"

    .line 82
    :cond_1
    :goto_1
    const-string v4, "i386"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "i486"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "i586"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "i686"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 83
    :cond_2
    const-string v1, "x86"

    .line 89
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_4
    const-string v4, "mac os x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    const-string v2, "macosx"

    goto :goto_1

    .line 77
    :cond_5
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 78
    .local v3, spaceIndex:I
    if-lez v3, :cond_1

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 84
    .end local v3           #spaceIndex:I
    :cond_6
    const-string v4, "amd64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "x86-64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    :cond_7
    const-string v1, "x86_64"

    goto :goto_2

    .line 86
    :cond_8
    const-string v4, "arm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    const-string v1, "arm"

    goto :goto_2
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->getProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public static getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .parameter "name"

    .prologue
    .line 119
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 120
    .local v3, p:Ljava/util/Properties;
    const-string v4, "platform.name"

    invoke-virtual {v3, v4, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "properties/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    const-class v4, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 125
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_0
    return-object v3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string p0, "properties/generic.properties"

    .line 131
    const-class v4, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 134
    :try_start_2
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 135
    :catch_2
    move-exception v1

    .line 136
    .local v1, e2:Ljava/lang/NoSuchMethodError;
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 138
    .end local v1           #e2:Ljava/lang/NoSuchMethodError;
    :catch_3
    move-exception v1

    .line 139
    .local v1, e2:Ljava/lang/Exception;
    new-instance v4, Ljava/util/MissingResourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not even get generic properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 6

    .prologue
    .line 405
    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    if-nez v3, :cond_0

    .line 406
    new-instance v2, Ljava/io/File;

    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, tmpdir:Ljava/io/File;
    const/4 v0, 0x0

    .line 408
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 409
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javacpp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    sput-object v0, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    .line 412
    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 417
    :cond_0
    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    return-object v3

    .line 408
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isLoadLibraries()Z
    .locals 1

    .prologue
    .line 422
    sget-boolean v0, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    return v0
.end method

.method public static load()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 431
    .local v0, cls:Ljava/lang/Class;
    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/Class;)Ljava/lang/String;
    .locals 15
    .parameter "cls"

    .prologue
    const/4 v11, 0x0

    .line 443
    sget-boolean v12, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    if-eqz v12, :cond_0

    if-nez p0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-object v11

    .line 448
    :cond_1
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getProperties()Ljava/util/Properties;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    .line 449
    .local v4, p:Ljava/util/Properties;
    invoke-static {v4, p0}, Lcom/googlecode/javacpp/Loader;->appendProperties(Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 461
    const-string v12, "path.separator"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, pathSeparator:Ljava/lang/String;
    const-string v12, "platform.root"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, platformRoot:Ljava/lang/String;
    if-eqz v6, :cond_2

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 464
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 466
    :cond_2
    const-string v12, "loader.preloadpath"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 467
    .local v9, preloadPath:Ljava/lang/String;
    const-string v12, "loader.preload"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, preloadLibraries:Ljava/lang/String;
    const/4 v7, 0x0

    .line 469
    .local v7, preloadError:Ljava/lang/UnsatisfiedLinkError;
    if-eqz v8, :cond_6

    .line 470
    if-nez v9, :cond_4

    move-object v10, v11

    .line 471
    .local v10, preloadPaths:[Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_5

    if-eqz v6, :cond_5

    .line 472
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_5

    .line 473
    new-instance v11, Ljava/io/File;

    aget-object v12, v10, v2

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isAbsolute()Z

    move-result v11

    if-nez v11, :cond_3

    .line 474
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 472
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 454
    .end local v2           #i:I
    .end local v5           #pathSeparator:Ljava/lang/String;
    .end local v6           #platformRoot:Ljava/lang/String;
    .end local v7           #preloadError:Ljava/lang/UnsatisfiedLinkError;
    .end local v8           #preloadLibraries:Ljava/lang/String;
    .end local v9           #preloadPath:Ljava/lang/String;
    .end local v10           #preloadPaths:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 455
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0, v1}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 457
    throw v0

    .line 470
    .end local v0           #e:Ljava/lang/Error;
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v5       #pathSeparator:Ljava/lang/String;
    .restart local v6       #platformRoot:Ljava/lang/String;
    .restart local v7       #preloadError:Ljava/lang/UnsatisfiedLinkError;
    .restart local v8       #preloadLibraries:Ljava/lang/String;
    .restart local v9       #preloadPath:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 478
    .restart local v10       #preloadPaths:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, libnames:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v11, v3

    if-ge v2, v11, :cond_6

    .line 481
    :try_start_1
    aget-object v11, v3, v2

    invoke-static {p0, v10, v11}, Lcom/googlecode/javacpp/Loader;->loadLibrary(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 482
    :catch_1
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    move-object v7, v0

    goto :goto_4

    .line 489
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .end local v2           #i:I
    .end local v3           #libnames:[Ljava/lang/String;
    .end local v10           #preloadPaths:[Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    :try_start_2
    const-string v12, "loader.library"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/googlecode/javacpp/Loader;->loadLibrary(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 490
    :catch_2
    move-exception v0

    .line 491
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    if-eqz v7, :cond_7

    .line 492
    invoke-virtual {v0, v7}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 494
    :cond_7
    throw v0
.end method

.method public static loadLibrary(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .parameter "cls"
    .parameter "paths"
    .parameter "libnameversion"

    .prologue
    .line 527
    sget-boolean v24, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    if-eqz v24, :cond_0

    if-nez p0, :cond_2

    .line 528
    :cond_0
    const/4 v8, 0x0

    .line 610
    :cond_1
    :goto_0
    return-object v8

    .line 530
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, className:Ljava/lang/String;
    const/16 v24, 0x2e

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 532
    .local v14, packageIndex:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_6

    const/16 v24, 0x0

    add-int/lit8 v25, v14, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 533
    .local v15, packageName:Ljava/lang/String;
    :goto_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, hashkey:Ljava/lang/String;
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 537
    .local v8, filename:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 541
    const-string v24, "@"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 542
    .local v18, s:[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v11, v18, v24

    .line 543
    .local v11, libname:Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v18, v24

    .line 545
    .local v23, version:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getProperties()Ljava/util/Properties;

    move-result-object v13

    .line 546
    .local v13, p:Ljava/util/Properties;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "platform.name"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x2f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 547
    .local v19, subdir:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "library.prefix"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, prefix:Ljava/lang/String;
    const-string v24, "library.suffix"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 549
    .local v20, suffix:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v17

    .line 550
    .local v17, resourceURL:Ljava/net/URL;
    if-nez v17, :cond_3

    .line 551
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v17

    .line 553
    :cond_3
    if-nez v17, :cond_4

    .line 554
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v17

    .line 557
    :cond_4
    const/16 v21, 0x0

    .line 558
    .local v21, tempFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 560
    .local v12, loadError:Ljava/lang/UnsatisfiedLinkError;
    if-eqz v17, :cond_8

    .line 562
    :try_start_0
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getTempDir()Ljava/io/File;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 564
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    .line 565
    .local v22, tempFilename:Ljava/lang/String;
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-static/range {v22 .. v22}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 609
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->deleteOnExit()V

    :cond_5
    move-object/from16 v8, v22

    goto/16 :goto_0

    .line 532
    .end local v8           #filename:Ljava/lang/String;
    .end local v9           #hashkey:Ljava/lang/String;
    .end local v11           #libname:Ljava/lang/String;
    .end local v12           #loadError:Ljava/lang/UnsatisfiedLinkError;
    .end local v13           #p:Ljava/util/Properties;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #prefix:Ljava/lang/String;
    .end local v17           #resourceURL:Ljava/net/URL;
    .end local v18           #s:[Ljava/lang/String;
    .end local v19           #subdir:Ljava/lang/String;
    .end local v20           #suffix:Ljava/lang/String;
    .end local v21           #tempFile:Ljava/io/File;
    .end local v22           #tempFilename:Ljava/lang/String;
    .end local v23           #version:Ljava/lang/String;
    :cond_6
    const-string v15, ""

    goto/16 :goto_1

    .line 543
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #hashkey:Ljava/lang/String;
    .restart local v11       #libname:Ljava/lang/String;
    .restart local v15       #packageName:Ljava/lang/String;
    .restart local v18       #s:[Ljava/lang/String;
    :cond_7
    const-string v23, ""

    goto/16 :goto_2

    .line 571
    .restart local v12       #loadError:Ljava/lang/UnsatisfiedLinkError;
    .restart local v13       #p:Ljava/util/Properties;
    .restart local v16       #prefix:Ljava/lang/String;
    .restart local v17       #resourceURL:Ljava/net/URL;
    .restart local v19       #subdir:Ljava/lang/String;
    .restart local v20       #suffix:Ljava/lang/String;
    .restart local v21       #tempFile:Ljava/io/File;
    .restart local v23       #version:Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-eqz p1, :cond_c

    :try_start_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_c

    .line 572
    new-instance v7, Ljava/io/File;

    aget-object v24, p1, v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_9

    .line 574
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    aget-object v24, p1, v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .restart local v7       #file:Ljava/io/File;
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_a

    .line 577
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    aget-object v24, p1, v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .restart local v7       #file:Ljava/io/File;
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 580
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 582
    :try_start_2
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-static {v8}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_0

    .line 585
    :catch_0
    move-exception v5

    .line 586
    .local v5, e:Ljava/lang/UnsatisfiedLinkError;
    move-object v12, v5

    .line 587
    :try_start_3
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v5           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 592
    .end local v7           #file:Ljava/io/File;
    :cond_c
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {v11}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 609
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->deleteOnExit()V

    :cond_d
    move-object v8, v11

    goto/16 :goto_0

    .line 596
    .end local v10           #j:I
    :catch_1
    move-exception v5

    .line 597
    .restart local v5       #e:Ljava/lang/UnsatisfiedLinkError;
    :try_start_4
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    if-eqz v12, :cond_f

    .line 599
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 609
    .end local v5           #e:Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v24

    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->deleteOnExit()V

    :cond_e
    throw v24

    .line 601
    .restart local v5       #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_f
    :try_start_5
    throw v5

    .line 603
    .end local v5           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v6

    .line 604
    .local v6, ex:Ljava/io/IOException;
    sget-object v24, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 606
    .local v5, e:Ljava/lang/Error;
    invoke-virtual {v5, v6}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 607
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static loadLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "libnameversion"

    .prologue
    .line 503
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 504
    .local v0, cls:Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/googlecode/javacpp/Loader;->loadLibrary(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadLibrary([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "paths"
    .parameter "libnameversion"

    .prologue
    .line 511
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 512
    .local v0, cls:Ljava/lang/Class;
    invoke-static {v0, p0, p1}, Lcom/googlecode/javacpp/Loader;->loadLibrary(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"

    .prologue
    .line 643
    new-instance v5, Ljava/io/File;

    const-string v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v5, tmpdir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v4, tempDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "javacpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 651
    .local v1, file:Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 653
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 654
    :catch_0
    move-exception v6

    goto :goto_2

    .line 650
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    .end local v1           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static offsetof(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter "member"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    sget-object v0, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static declared-synchronized putMemberOffset(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "member"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    const-class v2, Lcom/googlecode/javacpp/Loader;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 692
    .local v0, offsets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 693
    sget-object v1, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashMap;

    .end local v0           #offsets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0       #offsets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit v2

    return-void

    .line 691
    .end local v0           #offsets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static putMemberOffset(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "typeName"
    .parameter "member"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 680
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 681
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/googlecode/javacpp/Loader;->putMemberOffset(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 682
    return-void
.end method

.method public static setPlatformName(Ljava/lang/String;)V
    .locals 1
    .parameter "platformName"

    .prologue
    .line 97
    sput-object p0, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    .line 99
    return-void
.end method

.method public static sizeof(Ljava/lang/Class;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    sget-object v0, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "sizeof"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
