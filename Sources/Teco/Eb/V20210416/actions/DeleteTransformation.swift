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

extension Eb {
    /// DeleteTransformation请求参数结构体
    public struct DeleteTransformationRequest: TCRequestModel {
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

    /// DeleteTransformation返回参数结构体
    public struct DeleteTransformationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除转换器
    ///
    /// 用于删除转换器
    @inlinable @discardableResult
    public func deleteTransformation(_ input: DeleteTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTransformationResponse> {
        self.client.execute(action: "DeleteTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除转换器
    ///
    /// 用于删除转换器
    @inlinable @discardableResult
    public func deleteTransformation(_ input: DeleteTransformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTransformationResponse {
        try await self.client.execute(action: "DeleteTransformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除转换器
    ///
    /// 用于删除转换器
    @inlinable @discardableResult
    public func deleteTransformation(eventBusId: String, ruleId: String, transformationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTransformationResponse> {
        self.deleteTransformation(.init(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除转换器
    ///
    /// 用于删除转换器
    @inlinable @discardableResult
    public func deleteTransformation(eventBusId: String, ruleId: String, transformationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTransformationResponse {
        try await self.deleteTransformation(.init(eventBusId: eventBusId, ruleId: ruleId, transformationId: transformationId), region: region, logger: logger, on: eventLoop)
    }
}
