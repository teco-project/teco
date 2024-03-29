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
    /// ModifyIPStrategy请求参数结构体
    public struct ModifyIPStrategyRequest: TCRequest {
        /// 待修改的策略所属服务的唯一ID。
        public let serviceId: String

        /// 待修改的策略唯一ID。
        public let strategyId: String

        /// 待修改的策略详情。
        public let strategyData: String

        public init(serviceId: String, strategyId: String, strategyData: String) {
            self.serviceId = serviceId
            self.strategyId = strategyId
            self.strategyData = strategyData
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategyId = "StrategyId"
            case strategyData = "StrategyData"
        }
    }

    /// ModifyIPStrategy返回参数结构体
    public struct ModifyIPStrategyResponse: TCResponse {
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

    /// 修改服务IP策略
    ///
    /// 本接口（ModifyIPStrategy）用于修改服务IP策略。
    @inlinable
    public func modifyIPStrategy(_ input: ModifyIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIPStrategyResponse> {
        self.client.execute(action: "ModifyIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改服务IP策略
    ///
    /// 本接口（ModifyIPStrategy）用于修改服务IP策略。
    @inlinable
    public func modifyIPStrategy(_ input: ModifyIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIPStrategyResponse {
        try await self.client.execute(action: "ModifyIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改服务IP策略
    ///
    /// 本接口（ModifyIPStrategy）用于修改服务IP策略。
    @inlinable
    public func modifyIPStrategy(serviceId: String, strategyId: String, strategyData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIPStrategyResponse> {
        self.modifyIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, strategyData: strategyData), region: region, logger: logger, on: eventLoop)
    }

    /// 修改服务IP策略
    ///
    /// 本接口（ModifyIPStrategy）用于修改服务IP策略。
    @inlinable
    public func modifyIPStrategy(serviceId: String, strategyId: String, strategyData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIPStrategyResponse {
        try await self.modifyIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, strategyData: strategyData), region: region, logger: logger, on: eventLoop)
    }
}
