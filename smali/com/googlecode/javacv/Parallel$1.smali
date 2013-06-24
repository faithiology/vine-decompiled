.class final Lcom/googlecode/javacv/Parallel$1;
.super Ljava/lang/Object;
.source "Parallel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/Parallel;->loop(IIILcom/googlecode/javacv/Parallel$Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$looper:Lcom/googlecode/javacv/Parallel$Looper;

.field final synthetic val$looperID:I

.field final synthetic val$subFrom:I

.field final synthetic val$subTo:I


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/Parallel$Looper;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/googlecode/javacv/Parallel$1;->val$looper:Lcom/googlecode/javacv/Parallel$Looper;

    iput p2, p0, Lcom/googlecode/javacv/Parallel$1;->val$subFrom:I

    iput p3, p0, Lcom/googlecode/javacv/Parallel$1;->val$subTo:I

    iput p4, p0, Lcom/googlecode/javacv/Parallel$1;->val$looperID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/googlecode/javacv/Parallel$1;->val$looper:Lcom/googlecode/javacv/Parallel$Looper;

    iget v1, p0, Lcom/googlecode/javacv/Parallel$1;->val$subFrom:I

    iget v2, p0, Lcom/googlecode/javacv/Parallel$1;->val$subTo:I

    iget v3, p0, Lcom/googlecode/javacv/Parallel$1;->val$looperID:I

    invoke-interface {v0, v1, v2, v3}, Lcom/googlecode/javacv/Parallel$Looper;->loop(III)V

    .line 101
    return-void
.end method
