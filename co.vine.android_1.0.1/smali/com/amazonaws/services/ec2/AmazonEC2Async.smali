.class public interface abstract Lcom/amazonaws/services/ec2/AmazonEC2Async;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/ec2/AmazonEC2;


# virtual methods
.method public abstract activateLicenseAsync(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract activateLicenseAsync(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract allocateAddressAsync(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract allocateAddressAsync(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract associateAddressAsync(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract associateAddressAsync(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract attachVolumeAsync(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract attachVolumeAsync(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract authorizeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract authorizeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract bundleInstanceAsync(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract bundleInstanceAsync(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelBundleTaskAsync(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelBundleTaskAsync(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelConversionTaskAsync(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelConversionTaskAsync(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelExportTaskAsync(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelExportTaskAsync(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract confirmProductInstanceAsync(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract confirmProductInstanceAsync(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copyImageAsync(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copyImageAsync(Lcom/amazonaws/services/ec2/model/CopyImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copySnapshotAsync(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copySnapshotAsync(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createImageAsync(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createImageAsync(Lcom/amazonaws/services/ec2/model/CreateImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createInstanceExportTaskAsync(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createInstanceExportTaskAsync(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createKeyPairAsync(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createKeyPairAsync(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createPlacementGroupAsync(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createPlacementGroupAsync(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSnapshotAsync(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSnapshotAsync(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createTagsAsync(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createTagsAsync(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createVolumeAsync(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createVolumeAsync(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deactivateLicenseAsync(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deactivateLicenseAsync(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteKeyPairAsync(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteKeyPairAsync(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deletePlacementGroupAsync(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deletePlacementGroupAsync(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSnapshotAsync(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSnapshotAsync(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteTagsAsync(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteTagsAsync(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteVolumeAsync(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteVolumeAsync(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deregisterImageAsync(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deregisterImageAsync(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAccountAttributesAsync(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAccountAttributesAsync(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAddressesAsync(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAddressesAsync(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAvailabilityZonesAsync(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAvailabilityZonesAsync(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeBundleTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeBundleTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeConversionTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeConversionTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeExportTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeExportTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImageAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImageAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImagesAsync(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImagesAsync(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeKeyPairsAsync(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeKeyPairsAsync(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLicensesAsync(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLicensesAsync(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePlacementGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePlacementGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeRegionsAsync(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeRegionsAsync(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesListingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesListingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesOfferingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesOfferingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSecurityGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSecurityGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshotsAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshotsAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotPriceHistoryAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotPriceHistoryAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSubnetsAsync(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSubnetsAsync(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTagsAsync(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTagsAsync(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumesAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumesAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVpcsAsync(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVpcsAsync(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract detachVolumeAsync(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract detachVolumeAsync(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract disassociateAddressAsync(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract disassociateAddressAsync(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract enableVolumeIOAsync(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract enableVolumeIOAsync(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getConsoleOutputAsync(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getConsoleOutputAsync(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getPasswordDataAsync(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getPasswordDataAsync(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importInstanceAsync(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importInstanceAsync(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importKeyPairAsync(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importKeyPairAsync(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importVolumeAsync(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importVolumeAsync(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifySnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifySnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract monitorInstancesAsync(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract monitorInstancesAsync(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract purchaseReservedInstancesOfferingAsync(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract purchaseReservedInstancesOfferingAsync(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract rebootInstancesAsync(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract rebootInstancesAsync(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract registerImageAsync(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract registerImageAsync(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract releaseAddressAsync(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract releaseAddressAsync(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract reportInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract reportInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract requestSpotInstancesAsync(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract requestSpotInstancesAsync(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract revokeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract revokeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract runInstancesAsync(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract runInstancesAsync(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract startInstancesAsync(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract startInstancesAsync(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract stopInstancesAsync(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract stopInstancesAsync(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract terminateInstancesAsync(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract terminateInstancesAsync(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract unmonitorInstancesAsync(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract unmonitorInstancesAsync(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
