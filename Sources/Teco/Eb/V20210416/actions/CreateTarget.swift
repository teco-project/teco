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
    /// CreateTarget请求参数结构体
    public struct CreateTargetRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 目标类型
        public let type: String

        /// 目标描述
        public let targetDescription: TargetDescription

        /// 事件规则ID
        public let ruleId: String

        public init(eventBusId: String, type: String, targetDescription: TargetDescription, ruleId: String) {
            self.eventBusId = eventBusId
            self.type = type
            self.targetDescription = targetDescription
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case type = "Type"
            case targetDescription = "TargetDescription"
            case ruleId = "RuleId"
        }
    }

    /// CreateTarget返回参数结构体
    public struct CreateTargetResponse: TCResponseModel {
        /// 目标ID
        public let targetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case targetId = "TargetId"
            case requestId = "RequestId"
        }
    }

    /// 创建事件目标
    @inlinable
    public func createTarget(_ input: CreateTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTargetResponse> {
        self.client.execute(action: "CreateTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建事件目标
    @inlinable
    public func createTarget(_ input: CreateTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTargetResponse {
        try await self.client.execute(action: "CreateTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建事件目标
    @inlinable
    public func createTarget(eventBusId: String, type: String, targetDescription: TargetDescription, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTargetResponse> {
        self.createTarget(CreateTargetRequest(eventBusId: eventBusId, type: type, targetDescription: targetDescription, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建事件目标
    @inlinable
    public func createTarget(eventBusId: String, type: String, targetDescription: TargetDescription, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTargetResponse {
        try await self.createTarget(CreateTargetRequest(eventBusId: eventBusId, type: type, targetDescription: targetDescription, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
