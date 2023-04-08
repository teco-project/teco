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

import Logging
import NIOCore
import TecoCore

extension Apigateway {
    /// ModifyServiceEnvironmentStrategy请求参数结构体
    public struct ModifyServiceEnvironmentStrategyRequest: TCRequestModel {
        /// 服务的唯一ID。
        public let serviceId: String

        /// 限流值。
        public let strategy: Int64

        /// 环境列表。
        public let environmentNames: [String]

        public init(serviceId: String, strategy: Int64, environmentNames: [String]) {
            self.serviceId = serviceId
            self.strategy = strategy
            self.environmentNames = environmentNames
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategy = "Strategy"
            case environmentNames = "EnvironmentNames"
        }
    }

    /// ModifyServiceEnvironmentStrategy返回参数结构体
    public struct ModifyServiceEnvironmentStrategyResponse: TCResponseModel {
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

    /// 修改服务限流策略
    ///
    /// 本接口（ModifyServiceEnvironmentStrategy）用于修改服务限流策略
    @inlinable
    public func modifyServiceEnvironmentStrategy(_ input: ModifyServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceEnvironmentStrategyResponse> {
        self.client.execute(action: "ModifyServiceEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改服务限流策略
    ///
    /// 本接口（ModifyServiceEnvironmentStrategy）用于修改服务限流策略
    @inlinable
    public func modifyServiceEnvironmentStrategy(_ input: ModifyServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceEnvironmentStrategyResponse {
        try await self.client.execute(action: "ModifyServiceEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改服务限流策略
    ///
    /// 本接口（ModifyServiceEnvironmentStrategy）用于修改服务限流策略
    @inlinable
    public func modifyServiceEnvironmentStrategy(serviceId: String, strategy: Int64, environmentNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceEnvironmentStrategyResponse> {
        self.modifyServiceEnvironmentStrategy(.init(serviceId: serviceId, strategy: strategy, environmentNames: environmentNames), region: region, logger: logger, on: eventLoop)
    }

    /// 修改服务限流策略
    ///
    /// 本接口（ModifyServiceEnvironmentStrategy）用于修改服务限流策略
    @inlinable
    public func modifyServiceEnvironmentStrategy(serviceId: String, strategy: Int64, environmentNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceEnvironmentStrategyResponse {
        try await self.modifyServiceEnvironmentStrategy(.init(serviceId: serviceId, strategy: strategy, environmentNames: environmentNames), region: region, logger: logger, on: eventLoop)
    }
}
