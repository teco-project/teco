//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcss {
    /// AddAndPublishNetworkFirewallPolicyDetail请求参数结构体
    public struct AddAndPublishNetworkFirewallPolicyDetailRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String

        /// 策略名
        public let policyName: String

        /// 入站规则
        ///
        /// 全部允许：1
        ///
        /// 全部拒绝 ：2
        ///
        /// 自定义：3
        public let fromPolicyRule: Int64

        /// 出站规则
        ///
        /// 全部允许：1
        ///
        /// 全部拒绝 ：2
        ///
        /// 自定义：3
        public let toPolicyRule: Int64

        /// pod选择器
        public let podSelector: String

        /// 命名空间
        public let namespace: String?

        /// 策略描述
        public let description: String?

        /// 自定义规则
        public let customPolicy: [NetworkCustomPolicy]?

        public init(clusterId: String, policyName: String, fromPolicyRule: Int64, toPolicyRule: Int64, podSelector: String, namespace: String? = nil, description: String? = nil, customPolicy: [NetworkCustomPolicy]? = nil) {
            self.clusterId = clusterId
            self.policyName = policyName
            self.fromPolicyRule = fromPolicyRule
            self.toPolicyRule = toPolicyRule
            self.podSelector = podSelector
            self.namespace = namespace
            self.description = description
            self.customPolicy = customPolicy
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case policyName = "PolicyName"
            case fromPolicyRule = "FromPolicyRule"
            case toPolicyRule = "ToPolicyRule"
            case podSelector = "PodSelector"
            case namespace = "Namespace"
            case description = "Description"
            case customPolicy = "CustomPolicy"
        }
    }

    /// AddAndPublishNetworkFirewallPolicyDetail返回参数结构体
    public struct AddAndPublishNetworkFirewallPolicyDetailResponse: TCResponseModel {
        /// 返回创建的任务的ID，为0表示创建失败。
        public let taskId: UInt64

        /// 创建任务的结果，"Succ"为成功，"Failed"为失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 容器网络创建网络策略添加并发布任务
    @inlinable
    public func addAndPublishNetworkFirewallPolicyDetail(_ input: AddAndPublishNetworkFirewallPolicyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAndPublishNetworkFirewallPolicyDetailResponse> {
        self.client.execute(action: "AddAndPublishNetworkFirewallPolicyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络创建网络策略添加并发布任务
    @inlinable
    public func addAndPublishNetworkFirewallPolicyDetail(_ input: AddAndPublishNetworkFirewallPolicyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAndPublishNetworkFirewallPolicyDetailResponse {
        try await self.client.execute(action: "AddAndPublishNetworkFirewallPolicyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络创建网络策略添加并发布任务
    @inlinable
    public func addAndPublishNetworkFirewallPolicyDetail(clusterId: String, policyName: String, fromPolicyRule: Int64, toPolicyRule: Int64, podSelector: String, namespace: String? = nil, description: String? = nil, customPolicy: [NetworkCustomPolicy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAndPublishNetworkFirewallPolicyDetailResponse> {
        self.addAndPublishNetworkFirewallPolicyDetail(AddAndPublishNetworkFirewallPolicyDetailRequest(clusterId: clusterId, policyName: policyName, fromPolicyRule: fromPolicyRule, toPolicyRule: toPolicyRule, podSelector: podSelector, namespace: namespace, description: description, customPolicy: customPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络创建网络策略添加并发布任务
    @inlinable
    public func addAndPublishNetworkFirewallPolicyDetail(clusterId: String, policyName: String, fromPolicyRule: Int64, toPolicyRule: Int64, podSelector: String, namespace: String? = nil, description: String? = nil, customPolicy: [NetworkCustomPolicy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAndPublishNetworkFirewallPolicyDetailResponse {
        try await self.addAndPublishNetworkFirewallPolicyDetail(AddAndPublishNetworkFirewallPolicyDetailRequest(clusterId: clusterId, policyName: policyName, fromPolicyRule: fromPolicyRule, toPolicyRule: toPolicyRule, podSelector: podSelector, namespace: namespace, description: description, customPolicy: customPolicy), region: region, logger: logger, on: eventLoop)
    }
}
