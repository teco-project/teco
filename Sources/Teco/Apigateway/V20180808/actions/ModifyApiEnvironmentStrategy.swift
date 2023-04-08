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

import TecoCore

extension Apigateway {
    /// ModifyApiEnvironmentStrategy请求参数结构体
    public struct ModifyApiEnvironmentStrategyRequest: TCRequestModel {
        /// 服务唯一ID。
        public let serviceId: String

        /// 限流值。
        public let strategy: Int64

        /// 环境名。
        public let environmentName: String

        /// API列表。
        public let apiIds: [String]

        public init(serviceId: String, strategy: Int64, environmentName: String, apiIds: [String]) {
            self.serviceId = serviceId
            self.strategy = strategy
            self.environmentName = environmentName
            self.apiIds = apiIds
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategy = "Strategy"
            case environmentName = "EnvironmentName"
            case apiIds = "ApiIds"
        }
    }

    /// ModifyApiEnvironmentStrategy返回参数结构体
    public struct ModifyApiEnvironmentStrategyResponse: TCResponseModel {
        /// 修改操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改API限流策略
    ///
    /// 本接口（ModifyApiEnvironmentStrategy）用于修改API限流策略
    @inlinable
    public func modifyApiEnvironmentStrategy(_ input: ModifyApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApiEnvironmentStrategyResponse> {
        self.client.execute(action: "ModifyApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改API限流策略
    ///
    /// 本接口（ModifyApiEnvironmentStrategy）用于修改API限流策略
    @inlinable
    public func modifyApiEnvironmentStrategy(_ input: ModifyApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApiEnvironmentStrategyResponse {
        try await self.client.execute(action: "ModifyApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改API限流策略
    ///
    /// 本接口（ModifyApiEnvironmentStrategy）用于修改API限流策略
    @inlinable
    public func modifyApiEnvironmentStrategy(serviceId: String, strategy: Int64, environmentName: String, apiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApiEnvironmentStrategyResponse> {
        self.modifyApiEnvironmentStrategy(.init(serviceId: serviceId, strategy: strategy, environmentName: environmentName, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改API限流策略
    ///
    /// 本接口（ModifyApiEnvironmentStrategy）用于修改API限流策略
    @inlinable
    public func modifyApiEnvironmentStrategy(serviceId: String, strategy: Int64, environmentName: String, apiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApiEnvironmentStrategyResponse {
        try await self.modifyApiEnvironmentStrategy(.init(serviceId: serviceId, strategy: strategy, environmentName: environmentName, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }
}
