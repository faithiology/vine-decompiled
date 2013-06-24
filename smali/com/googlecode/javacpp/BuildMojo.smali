.class public Lcom/googlecode/javacpp/BuildMojo;
.super Lorg/apache/maven/plugin/AbstractMojo;
.source "BuildMojo.java"


# instance fields
.field protected classOrPackageName:Ljava/lang/String;

.field protected classOrPackageNames:[Ljava/lang/String;

.field private classPath:Ljava/lang/String;

.field private classPaths:[Ljava/lang/String;

.field protected compile:Z

.field protected compilerOptions:[Ljava/lang/String;

.field protected environmentVariables:Ljava/util/Map;
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

.field protected header:Z

.field protected jarPrefix:Ljava/lang/String;

.field private outputDirectory:Ljava/io/File;

.field protected outputName:Ljava/lang/String;

.field protected properties:Ljava/lang/String;

.field protected propertyFile:Ljava/io/File;

.field protected propertyKeysAndValues:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lorg/apache/maven/plugin/AbstractMojo;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    .line 64
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    .line 82
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    .line 100
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    .line 106
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    .line 124
    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    const-string v3, "Executing JavaCPP Builder"

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/maven/plugin/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classPaths: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputDirectory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jarPrefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propertyFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propertyKeysAndValues: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classOrPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classOrPackageNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "environmentVariables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compilerOptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 153
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 160
    :cond_2
    :goto_1
    new-instance v2, Lcom/googlecode/javacpp/Builder;

    invoke-direct {v2}, Lcom/googlecode/javacpp/Builder;-><init>()V

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->compile(Z)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->header(Z)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->environmentVariables(Ljava/util/Map;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Builder;->build()Ljava/util/Collection;

    move-result-object v1

    .line 173
    .local v1, outputFiles:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    const-string v3, "Successfully executed JavaCPP Builder"

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/maven/plugin/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    .line 181
    :cond_3
    return-void

    .line 149
    .end local v1           #outputFiles:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 150
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute JavaCPP Builder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->error(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v2, Lorg/apache/maven/plugin/MojoExecutionException;

    const-string v3, "Failed to execute JavaCPP Builder"

    invoke-direct {v2, v3, v0}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 157
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
