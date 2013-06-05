.class public interface abstract Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsync;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancing;


# virtual methods
.method public abstract applySecurityGroupsToLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;",
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

.method public abstract applySecurityGroupsToLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;",
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

.method public abstract attachLoadBalancerToSubnetsAsync(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;",
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

.method public abstract attachLoadBalancerToSubnetsAsync(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;",
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

.method public abstract configureHealthCheckAsync(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;",
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

.method public abstract configureHealthCheckAsync(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;",
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

.method public abstract createAppCookieStickinessPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;",
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

.method public abstract createAppCookieStickinessPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;",
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

.method public abstract createLBCookieStickinessPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;",
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

.method public abstract createLBCookieStickinessPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;",
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

.method public abstract createLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;",
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

.method public abstract createLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;",
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

.method public abstract createLoadBalancerListenersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
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

.method public abstract createLoadBalancerListenersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
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

.method public abstract createLoadBalancerPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;",
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

.method public abstract createLoadBalancerPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;",
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

.method public abstract deleteLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;",
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

.method public abstract deleteLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;",
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

.method public abstract deleteLoadBalancerListenersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;",
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

.method public abstract deleteLoadBalancerListenersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;",
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

.method public abstract deleteLoadBalancerPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;",
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

.method public abstract deleteLoadBalancerPolicyAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;",
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

.method public abstract deregisterInstancesFromLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;",
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

.method public abstract deregisterInstancesFromLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;",
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

.method public abstract describeInstanceHealthAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;",
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

.method public abstract describeInstanceHealthAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;",
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

.method public abstract describeLoadBalancerPoliciesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;",
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

.method public abstract describeLoadBalancerPoliciesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;",
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

.method public abstract describeLoadBalancerPolicyTypesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;",
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

.method public abstract describeLoadBalancerPolicyTypesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;",
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

.method public abstract describeLoadBalancersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;",
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

.method public abstract describeLoadBalancersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;",
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

.method public abstract detachLoadBalancerFromSubnetsAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;",
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

.method public abstract detachLoadBalancerFromSubnetsAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;",
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

.method public abstract disableAvailabilityZonesForLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;",
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

.method public abstract disableAvailabilityZonesForLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;",
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

.method public abstract enableAvailabilityZonesForLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;",
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

.method public abstract enableAvailabilityZonesForLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;",
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

.method public abstract registerInstancesWithLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;",
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

.method public abstract registerInstancesWithLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;",
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

.method public abstract setLoadBalancerListenerSSLCertificateAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;",
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

.method public abstract setLoadBalancerListenerSSLCertificateAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;",
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

.method public abstract setLoadBalancerPoliciesForBackendServerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;",
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

.method public abstract setLoadBalancerPoliciesForBackendServerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;",
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

.method public abstract setLoadBalancerPoliciesOfListenerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;",
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

.method public abstract setLoadBalancerPoliciesOfListenerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;",
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
