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

extension Clb {
    /// SetCustomizedConfigForLoadBalancer请求参数结构体
    public struct SetCustomizedConfigForLoadBalancerRequest: TCRequestModel {
        /// 操作类型：'ADD', 'DELETE', 'UPDATE', 'BIND', 'UNBIND'
        public let operationType: String

        /// 除了创建个性化配置外，必传此字段，如：pz-1234abcd
        public let uconfigId: String?

        /// 创建个性化配置或修改个性化配置的内容时，必传此字段
        public let configContent: String?

        /// 创建个性化配置或修改个性化配置的名字时，必传此字段
        public let configName: String?

        /// 绑定解绑时，必传此字段
        public let loadBalancerIds: [String]?

        public init(operationType: String, uconfigId: String? = nil, configContent: String? = nil, configName: String? = nil, loadBalancerIds: [String]? = nil) {
            self.operationType = operationType
            self.uconfigId = uconfigId
            self.configContent = configContent
            self.configName = configName
            self.loadBalancerIds = loadBalancerIds
        }

        enum CodingKeys: String, CodingKey {
            case operationType = "OperationType"
            case uconfigId = "UconfigId"
            case configContent = "ConfigContent"
            case configName = "ConfigName"
            case loadBalancerIds = "LoadBalancerIds"
        }
    }

    /// SetCustomizedConfigForLoadBalancer返回参数结构体
    public struct SetCustomizedConfigForLoadBalancerResponse: TCResponseModel {
        /// 个性化配置ID，如：pz-1234abcd
        public let configId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case requestId = "RequestId"
        }
    }

    /// 负载均衡维度的个性化配置相关操作
    ///
    /// 负载均衡维度的个性化配置相关操作：创建、删除、修改、绑定、解绑
    @inlinable
    public func setCustomizedConfigForLoadBalancer(_ input: SetCustomizedConfigForLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCustomizedConfigForLoadBalancerResponse> {
        self.client.execute(action: "SetCustomizedConfigForLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 负载均衡维度的个性化配置相关操作
    ///
    /// 负载均衡维度的个性化配置相关操作：创建、删除、修改、绑定、解绑
    @inlinable
    public func setCustomizedConfigForLoadBalancer(_ input: SetCustomizedConfigForLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCustomizedConfigForLoadBalancerResponse {
        try await self.client.execute(action: "SetCustomizedConfigForLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 负载均衡维度的个性化配置相关操作
    ///
    /// 负载均衡维度的个性化配置相关操作：创建、删除、修改、绑定、解绑
    @inlinable
    public func setCustomizedConfigForLoadBalancer(operationType: String, uconfigId: String? = nil, configContent: String? = nil, configName: String? = nil, loadBalancerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCustomizedConfigForLoadBalancerResponse> {
        self.setCustomizedConfigForLoadBalancer(.init(operationType: operationType, uconfigId: uconfigId, configContent: configContent, configName: configName, loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 负载均衡维度的个性化配置相关操作
    ///
    /// 负载均衡维度的个性化配置相关操作：创建、删除、修改、绑定、解绑
    @inlinable
    public func setCustomizedConfigForLoadBalancer(operationType: String, uconfigId: String? = nil, configContent: String? = nil, configName: String? = nil, loadBalancerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCustomizedConfigForLoadBalancerResponse {
        try await self.setCustomizedConfigForLoadBalancer(.init(operationType: operationType, uconfigId: uconfigId, configContent: configContent, configName: configName, loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }
}
