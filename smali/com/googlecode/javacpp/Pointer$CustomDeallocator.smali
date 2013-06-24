.class public Lcom/googlecode/javacpp/Pointer$CustomDeallocator;
.super Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.source "Pointer.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CustomDeallocator"
.end annotation


# instance fields
.field method:Ljava/lang/reflect/Method;

.field pointer:Lcom/googlecode/javacpp/Pointer;


# direct methods
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 150
    invoke-direct {p0, p1, v8}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V

    .line 176
    iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;

    .line 177
    iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;

    .line 151
    iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 153
    .local v2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacpp/Pointer;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 154
    .local v6, m:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 155
    .local v7, parameters:[Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "deallocate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    array-length v8, v7

    if-ne v8, v10, :cond_1

    const-class v8, Lcom/googlecode/javacpp/Pointer;

    aget-object v9, v7, v11

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 159
    iput-object v6, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;

    .line 163
    .end local v6           #m:Ljava/lang/reflect/Method;
    .end local v7           #parameters:[Ljava/lang/Class;
    :cond_0
    iget-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2

    .line 164
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/NoSuchMethodException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "static void "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".deallocate("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 153
    .restart local v6       #m:Ljava/lang/reflect/Method;
    .restart local v7       #parameters:[Ljava/lang/Class;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v6           #m:Ljava/lang/reflect/Method;
    .end local v7           #parameters:[Ljava/lang/Class;
    :cond_2
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/googlecode/javacpp/Pointer;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 169
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/googlecode/javacpp/Pointer;>;"
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 170
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/javacpp/Pointer;

    iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-void

    .line 171
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/googlecode/javacpp/Pointer;>;"
    :catch_0
    move-exception v3

    .line 172
    .local v3, ex:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method


# virtual methods
.method public deallocate()V
    .locals 6

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v1}, Lcom/googlecode/javacpp/Pointer;->setNull()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
