//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeNetworkFirewallPolicyYamlDetail请求参数结构体
    public struct DescribeNetworkFirewallPolicyYamlDetailRequest: TCRequestModel {
        /// 策略Id
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeNetworkFirewallPolicyYamlDetail返回参数结构体
    public struct DescribeNetworkFirewallPolicyYamlDetailResponse: TCResponseModel {
        /// 集群Id
        public let clusterId: String

        /// 策略名
        public let policyName: String

        /// base64编码的yaml字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?

        /// 策略描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 策略创建时间
        public let policyCreateTime: String

        /// 策略源类型，分为System和Manual，分别代表手动和系统添加
        public let policySourceType: String

        /// 网络策略对应的网络插件
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let networkPolicyPlugin: String?

        /// 网络策略状态
        public let publishStatus: String

        /// 网络发布结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishResult: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case policyName = "PolicyName"
            case yaml = "Yaml"
            case description = "Description"
            case policyCreateTime = "PolicyCreateTime"
            case policySourceType = "PolicySourceType"
            case networkPolicyPlugin = "NetworkPolicyPlugin"
            case publishStatus = "PublishStatus"
            case publishResult = "PublishResult"
            case requestId = "RequestId"
        }
    }

    /// 容器网络集群查看Yaml网络策略详情
    @inlinable
    public func describeNetworkFirewallPolicyYamlDetail(_ input: DescribeNetworkFirewallPolicyYamlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyYamlDetailResponse> {
        self.client.execute(action: "DescribeNetworkFirewallPolicyYamlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络集群查看Yaml网络策略详情
    @inlinable
    public func describeNetworkFirewallPolicyYamlDetail(_ input: DescribeNetworkFirewallPolicyYamlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyYamlDetailResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallPolicyYamlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络集群查看Yaml网络策略详情
    @inlinable
    public func describeNetworkFirewallPolicyYamlDetail(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyYamlDetailResponse> {
        self.describeNetworkFirewallPolicyYamlDetail(DescribeNetworkFirewallPolicyYamlDetailRequest(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络集群查看Yaml网络策略详情
    @inlinable
    public func describeNetworkFirewallPolicyYamlDetail(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyYamlDetailResponse {
        try await self.describeNetworkFirewallPolicyYamlDetail(DescribeNetworkFirewallPolicyYamlDetailRequest(id: id), region: region, logger: logger, on: eventLoop)
    }
}
