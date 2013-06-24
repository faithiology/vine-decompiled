.class Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCatchingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    .line 683
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 681
    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;-><init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    .line 712
    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    .line 722
    throw v0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    .line 692
    throw v0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    .line 702
    throw v0
.end method
