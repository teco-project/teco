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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// UpdateNetworkFirewallPolicyYamlDetail请求参数结构体
    public struct UpdateNetworkFirewallPolicyYamlDetailRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String

        /// 策略id
        public let id: UInt64

        /// base64编码的networkpolicy yaml字符串
        public let yaml: String?

        /// 策略描述
        public let description: String?

        public init(clusterId: String, id: UInt64, yaml: String? = nil, description: String? = nil) {
            self.clusterId = clusterId
            self.id = id
            self.yaml = yaml
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case id = "Id"
            case yaml = "Yaml"
            case description = "Description"
        }
    }

    /// UpdateNetworkFirewallPolicyYamlDetail返回参数结构体
    public struct UpdateNetworkFirewallPolicyYamlDetailResponse: TCResponseModel {
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

    /// 容器网络更新Yaml网络策略任务
    @inlinable
    public func updateNetworkFirewallPolicyYamlDetail(_ input: UpdateNetworkFirewallPolicyYamlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNetworkFirewallPolicyYamlDetailResponse> {
        self.client.execute(action: "UpdateNetworkFirewallPolicyYamlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络更新Yaml网络策略任务
    @inlinable
    public func updateNetworkFirewallPolicyYamlDetail(_ input: UpdateNetworkFirewallPolicyYamlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNetworkFirewallPolicyYamlDetailResponse {
        try await self.client.execute(action: "UpdateNetworkFirewallPolicyYamlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络更新Yaml网络策略任务
    @inlinable
    public func updateNetworkFirewallPolicyYamlDetail(clusterId: String, id: UInt64, yaml: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNetworkFirewallPolicyYamlDetailResponse> {
        self.updateNetworkFirewallPolicyYamlDetail(.init(clusterId: clusterId, id: id, yaml: yaml, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络更新Yaml网络策略任务
    @inlinable
    public func updateNetworkFirewallPolicyYamlDetail(clusterId: String, id: UInt64, yaml: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNetworkFirewallPolicyYamlDetailResponse {
        try await self.updateNetworkFirewallPolicyYamlDetail(.init(clusterId: clusterId, id: id, yaml: yaml, description: description), region: region, logger: logger, on: eventLoop)
    }
}
