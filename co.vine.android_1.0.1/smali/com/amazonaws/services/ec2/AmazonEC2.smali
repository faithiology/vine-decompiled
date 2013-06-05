.class public interface abstract Lcom/amazonaws/services/ec2/AmazonEC2;
.super Ljava/lang/Object;


# virtual methods
.method public abstract activateLicense(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract allocateAddress()Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract allocateAddress(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract associateAddress(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Lcom/amazonaws/services/ec2/model/AssociateAddressResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract attachVolume(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/services/ec2/model/AttachVolumeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract authorizeSecurityGroupIngress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract bundleInstance(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/services/ec2/model/BundleInstanceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelBundleTask(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelConversionTask(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelExportTask(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract cancelSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract confirmProductInstance(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copyImage(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Lcom/amazonaws/services/ec2/model/CopyImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract copySnapshot(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Lcom/amazonaws/services/ec2/model/CopySnapshotResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createImage(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/services/ec2/model/CreateImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createInstanceExportTask(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createKeyPair(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createPlacementGroup(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSecurityGroup(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSnapshot(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createTags(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createVolume(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Lcom/amazonaws/services/ec2/model/CreateVolumeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deactivateLicense(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteKeyPair(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deletePlacementGroup(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSecurityGroup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSecurityGroup(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSnapshot(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSpotDatafeedSubscription()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteTags(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteVolume(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deregisterImage(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAccountAttributes()Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAccountAttributes(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAddresses()Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAddresses(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAvailabilityZones()Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAvailabilityZones(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeBundleTasks()Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeBundleTasks(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeConversionTasks()Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeConversionTasks(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeExportTasks()Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeExportTasks(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImageAttribute(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImages()Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeImages(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceAttribute(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceStatus()Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstanceStatus(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstances()Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeKeyPairs()Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeKeyPairs(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLicenses()Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePlacementGroups()Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeRegions()Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstances()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstances(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesListings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesListings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesOfferings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeReservedInstancesOfferings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSecurityGroups()Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshotAttribute(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshots()Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSnapshots(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotDatafeedSubscription()Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotInstanceRequests()Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotPriceHistory()Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSpotPriceHistory(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSubnets()Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeSubnets(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTags()Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTags(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeAttribute(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeStatus()Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumeStatus(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumes()Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVolumes(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVpcs()Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract detachVolume(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Lcom/amazonaws/services/ec2/model/DetachVolumeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract disassociateAddress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract disassociateAddress(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract enableVolumeIO(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
.end method

.method public abstract getConsoleOutput(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getPasswordData(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/services/ec2/model/ImportInstanceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importKeyPair(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyImageAttribute(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyInstanceAttribute(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifySnapshotAttribute(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract modifyVolumeAttribute(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract monitorInstances(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract purchaseReservedInstancesOffering(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract rebootInstances(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract registerImage()Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract registerImage(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract releaseAddress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract releaseAddress(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract reportInstanceStatus()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract reportInstanceStatus(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract requestSpotInstances(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetImageAttribute(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetInstanceAttribute(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resetSnapshotAttribute(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract revokeSecurityGroupIngress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract runInstances(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/amazonaws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract startInstances(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/services/ec2/model/StartInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract stopInstances(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Lcom/amazonaws/services/ec2/model/StopInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract terminateInstances(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract unmonitorInstances(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
