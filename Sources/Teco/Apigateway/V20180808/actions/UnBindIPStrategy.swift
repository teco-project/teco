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
    /// UnBindIPStrategy请求参数结构体
    public struct UnBindIPStrategyRequest: TCRequestModel {
        /// 待解绑的服务唯一ID。
        public let serviceId: String

        /// 待解绑的IP策略唯一ID。
        public let strategyId: String

        /// 待解绑的环境。
        public let environmentName: String

        /// 待解绑的 API 列表。
        public let unBindApiIds: [String]

        public init(serviceId: String, strategyId: String, environmentName: String, unBindApiIds: [String]) {
            self.serviceId = serviceId
            self.strategyId = strategyId
            self.environmentName = environmentName
            self.unBindApiIds = unBindApiIds
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategyId = "StrategyId"
            case environmentName = "EnvironmentName"
            case unBindApiIds = "UnBindApiIds"
        }
    }

    /// UnBindIPStrategy返回参数结构体
    public struct UnBindIPStrategyResponse: TCResponseModel {
        /// 解绑操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务解绑IP策略
    ///
    /// 本接口（UnBindIPStrategy）用于服务解绑IP策略。
    @inlinable
    public func unBindIPStrategy(_ input: UnBindIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindIPStrategyResponse> {
        self.client.execute(action: "UnBindIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务解绑IP策略
    ///
    /// 本接口（UnBindIPStrategy）用于服务解绑IP策略。
    @inlinable
    public func unBindIPStrategy(_ input: UnBindIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindIPStrategyResponse {
        try await self.client.execute(action: "UnBindIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务解绑IP策略
    ///
    /// 本接口（UnBindIPStrategy）用于服务解绑IP策略。
    @inlinable
    public func unBindIPStrategy(serviceId: String, strategyId: String, environmentName: String, unBindApiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindIPStrategyResponse> {
        self.unBindIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, unBindApiIds: unBindApiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 服务解绑IP策略
    ///
    /// 本接口（UnBindIPStrategy）用于服务解绑IP策略。
    @inlinable
    public func unBindIPStrategy(serviceId: String, strategyId: String, environmentName: String, unBindApiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindIPStrategyResponse {
        try await self.unBindIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, unBindApiIds: unBindApiIds), region: region, logger: logger, on: eventLoop)
    }
}
