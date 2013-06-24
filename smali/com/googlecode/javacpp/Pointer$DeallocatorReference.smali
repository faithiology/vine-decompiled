.class Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.super Ljava/lang/ref/PhantomReference;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeallocatorReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/googlecode/javacpp/Pointer;",
        ">;"
    }
.end annotation


# static fields
.field static head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;


# instance fields
.field deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

.field next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

.field prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    return-void
.end method

.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V
    .locals 2
    .parameter "p"
    .parameter "deallocator"

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-static {}, Lcom/googlecode/javacpp/Pointer;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 227
    iput-object v1, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object v1, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 223
    iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 224
    return-void
.end method


# virtual methods
.method final add()V
    .locals 2

    .prologue
    .line 231
    const-class v1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    monitor-enter v1

    .line 232
    :try_start_0
    sget-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-nez v0, :cond_0

    .line 233
    sput-object p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 238
    :goto_0
    monitor-exit v1

    .line 239
    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 236
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    sput-object p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object p0, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 260
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    invoke-interface {v0}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V

    .line 261
    return-void
.end method

.method final remove()V
    .locals 3

    .prologue
    .line 242
    const-class v1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-ne v0, p0, :cond_0

    .line 244
    monitor-exit v1

    .line 256
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    sput-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iget-object v2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object v2, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 254
    :cond_1
    iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    .line 255
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 249
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iget-object v2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;

    iput-object v2, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
