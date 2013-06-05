.class public Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
.super Ljava/lang/Object;


# instance fields
.field private deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeletedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-object v0
.end method

.method public setDeletedObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-void
.end method
