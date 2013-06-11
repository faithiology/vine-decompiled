.class public Lcom/googlecode/javacpp/Pointer$NativeDeallocator;
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
    name = "NativeDeallocator"
.end annotation


# instance fields
.field private allocatedAddress:J

.field private deallocatorAddress:J


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;J)V
    .locals 2
    .parameter "p"
    .parameter "deallocatorAddress"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V

    .line 196
    iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;

    .line 197
    iget-wide v0, p1, Lcom/googlecode/javacpp/Pointer;->address:J

    iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J

    .line 198
    iput-wide p2, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J

    .line 199
    return-void
.end method

.method private native deallocate(JJ)V
.end method


# virtual methods
.method public deallocate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 205
    iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J

    iget-wide v2, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocate(JJ)V

    .line 209
    iput-wide v4, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J

    iput-wide v4, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J

    .line 211
    :cond_0
    return-void
.end method
