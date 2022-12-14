//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// GetTransformation请求参数结构体
    public struct GetTransformationRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 规则ID
        public let ruleId: String

        /// 转换器id
        public let transformationId: String

        public init(eventBusId: String, ruleId: String, transformationId: String) {
            self.eventBusId = eventBusId
            self.ruleId = ruleId
            self.transformationId = transformationId
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
            case transformationId = "TransformationId"
        }
    }

    /// GetTransformation返回参数结构体
    public struct GetTransformationResponse: TCResponseModel {
        /// 转换规则列表
        public let transformations: [Transformation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case transformations = "Transformations"
            case requestId = "RequestId"
        }
    }

    /// 获取转换器详情
    ///
    /// 用于获取转换器详情
    @inlinable
    public func getTransformation(_ input: GetTransformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTransformationResponse > {
        self.client.execute(action: "GetTransformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转换器详情
    ///
    /// 用于获取转换器详情
    @inlinable
    public func getTransformation(_ input: GetTransformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTransformationResponse {
        try await self.client.execute(action: "GetTransformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转换器详情
    ///
    /// 用于获取转换器详情
    @inlinable
    public func getTransformation(eventBusId: String, ruleId: String, transformationId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTransformationResponse > {
        self.getTransformation(GetTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId), logger: logger, on: eventLoop)
    }

    /// 获取转换器详情
    ///
    /// 用于获取转换器详情
    @inlinable
    public func getTransformation(eventBusId: String, ruleId: String, transformationId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTransformationResponse {
        try await self.getTransformation(GetTransformationRequest(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId), logger: logger, on: eventLoop)
    }
}
