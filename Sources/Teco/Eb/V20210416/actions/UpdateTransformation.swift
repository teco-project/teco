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
    /// UpdateTransformation请求参数结构体
    public struct UpdateTransformationRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 规则ID
        public let ruleId: String

        /// 转换器id
        public let transformationId: String

        /// 一个转换规则列表，当前仅限定一个
        public let transformations: [Transformation]

        public init(eventBusId: String, ruleId: String, transformationId: String, transformations: [Transformation]) {
            self.eventBusId = eventBusId
            self.ruleId = ruleId
            self.transformationId = transformationId
            self.transformations = transformations
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
            case transformationId = "TransformationId"
            case transformations = "Transformations"
        }
    }

    /// UpdateTransformation返回参数结构体
    public struct UpdateTransformationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新转换器
    ///
    /// 用于更新转换器
    @inlinable
    public func updateTransformation(_ input: UpdateTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTransformationResponse> {
        self.client.execute(action: "UpdateTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新转换器
    ///
    /// 用于更新转换器
    @inlinable
    public func updateTransformation(_ input: UpdateTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTransformationResponse {
        try await self.client.execute(action: "UpdateTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新转换器
    ///
    /// 用于更新转换器
    @inlinable
    public func updateTransformation(eventBusId: String, ruleId: String, transformationId: String, transformations: [Transformation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTransformationResponse> {
        self.updateTransformation(UpdateTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId, transformations: transformations), region: region, logger: logger, on: eventLoop)
    }

    /// 更新转换器
    ///
    /// 用于更新转换器
    @inlinable
    public func updateTransformation(eventBusId: String, ruleId: String, transformationId: String, transformations: [Transformation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTransformationResponse {
        try await self.updateTransformation(UpdateTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId, transformations: transformations), region: region, logger: logger, on: eventLoop)
    }
}
