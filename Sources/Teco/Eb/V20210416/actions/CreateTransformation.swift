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

extension Eb {
    /// CreateTransformation请求参数结构体
    public struct CreateTransformationRequest: TCRequestModel {
        /// 事件总线 id
        public let eventBusId: String

        /// 规则id
        public let ruleId: String

        /// 一个转换规则列表，当前仅限定一个
        public let transformations: [Transformation]

        public init(eventBusId: String, ruleId: String, transformations: [Transformation]) {
            self.eventBusId = eventBusId
            self.ruleId = ruleId
            self.transformations = transformations
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
            case transformations = "Transformations"
        }
    }

    /// CreateTransformation返回参数结构体
    public struct CreateTransformationResponse: TCResponseModel {
        /// 生成的转换器id
        public let transformationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case transformationId = "TransformationId"
            case requestId = "RequestId"
        }
    }

    /// 创建转换器
    ///
    /// 用于创建转换器
    @inlinable
    public func createTransformation(_ input: CreateTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTransformationResponse> {
        self.client.execute(action: "CreateTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转换器
    ///
    /// 用于创建转换器
    @inlinable
    public func createTransformation(_ input: CreateTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTransformationResponse {
        try await self.client.execute(action: "CreateTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转换器
    ///
    /// 用于创建转换器
    @inlinable
    public func createTransformation(eventBusId: String, ruleId: String, transformations: [Transformation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTransformationResponse> {
        self.createTransformation(CreateTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformations: transformations), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转换器
    ///
    /// 用于创建转换器
    @inlinable
    public func createTransformation(eventBusId: String, ruleId: String, transformations: [Transformation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTransformationResponse {
        try await self.createTransformation(CreateTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformations: transformations), region: region, logger: logger, on: eventLoop)
    }
}
