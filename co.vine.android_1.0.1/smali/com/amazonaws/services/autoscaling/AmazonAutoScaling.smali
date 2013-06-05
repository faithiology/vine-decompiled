.class public interface abstract Lcom/amazonaws/services/autoscaling/AmazonAutoScaling;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract createOrUpdateTags(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deletePolicy(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteScheduledAction(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteTags(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAdjustmentTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAdjustmentTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingGroups()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingGroups(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingInstances()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingInstances(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingNotificationTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeAutoScalingNotificationTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLaunchConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeLaunchConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeMetricCollectionTypes()Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeMetricCollectionTypes(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeNotificationConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeNotificationConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePolicies()Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describePolicies(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScalingActivities()Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScalingActivities(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScalingProcessTypes()Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScalingProcessTypes(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScheduledActions()Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeScheduledActions(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTags()Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTerminationPolicyTypes()Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract disableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract enableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract executePolicy(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
.end method

.method public abstract putNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract putScalingPolicy(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract putScheduledUpdateGroupAction(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract resumeProcesses(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setDesiredCapacity(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)V
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

.method public abstract setInstanceHealth(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
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

.method public abstract suspendProcesses(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract terminateInstanceInAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract updateAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
