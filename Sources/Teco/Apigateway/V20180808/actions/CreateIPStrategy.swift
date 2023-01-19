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

extension Apigateway {
    /// CreateIPStrategy请求参数结构体
    public struct CreateIPStrategyRequest: TCRequestModel {
        /// 服务的唯一ID。
        public let serviceId: String

        /// 用户自定义的策略名称。
        public let strategyName: String

        /// 策略类型。支持WHITE（白名单）和BLACK（黑名单）。
        public let strategyType: String

        /// 策略详情，多个ip 使用\n 分隔符分开。
        public let strategyData: String

        public init(serviceId: String, strategyName: String, strategyType: String, strategyData: String) {
            self.serviceId = serviceId
            self.strategyName = strategyName
            self.strategyType = strategyType
            self.strategyData = strategyData
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategyName = "StrategyName"
            case strategyType = "StrategyType"
            case strategyData = "StrategyData"
        }
    }

    /// CreateIPStrategy返回参数结构体
    public struct CreateIPStrategyResponse: TCResponseModel {
        /// 新建的IP策略详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: IPStrategy?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建服务IP策略
    ///
    /// 本接口（CreateIPStrategy）用于创建服务IP策略。
    @inlinable
    public func createIPStrategy(_ input: CreateIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPStrategyResponse> {
        self.client.execute(action: "CreateIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务IP策略
    ///
    /// 本接口（CreateIPStrategy）用于创建服务IP策略。
    @inlinable
    public func createIPStrategy(_ input: CreateIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPStrategyResponse {
        try await self.client.execute(action: "CreateIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建服务IP策略
    ///
    /// 本接口（CreateIPStrategy）用于创建服务IP策略。
    @inlinable
    public func createIPStrategy(serviceId: String, strategyName: String, strategyType: String, strategyData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPStrategyResponse> {
        self.createIPStrategy(CreateIPStrategyRequest(serviceId: serviceId, strategyName: strategyName, strategyType: strategyType, strategyData: strategyData), region: region, logger: logger, on: eventLoop)
    }

    /// 创建服务IP策略
    ///
    /// 本接口（CreateIPStrategy）用于创建服务IP策略。
    @inlinable
    public func createIPStrategy(serviceId: String, strategyName: String, strategyType: String, strategyData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPStrategyResponse {
        try await self.createIPStrategy(CreateIPStrategyRequest(serviceId: serviceId, strategyName: strategyName, strategyType: strategyType, strategyData: strategyData), region: region, logger: logger, on: eventLoop)
    }
}
