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

extension Faceid {
    /// GetActionSequence请求参数结构体
    public struct GetActionSequenceRequest: TCRequestModel {
        /// 默认不需要使用
        public let actionType: String?

        public init(actionType: String? = nil) {
            self.actionType = actionType
        }

        enum CodingKeys: String, CodingKey {
            case actionType = "ActionType"
        }
    }

    /// GetActionSequence返回参数结构体
    public struct GetActionSequenceResponse: TCResponseModel {
        /// 动作顺序(2,1 or 1,2) 。1代表张嘴，2代表闭眼。
        public let actionSequence: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case actionSequence = "ActionSequence"
            case requestId = "RequestId"
        }
    }

    /// 获取动作顺序
    ///
    /// 使用动作活体检测模式前，需调用本接口获取动作顺序。
    @inlinable
    public func getActionSequence(_ input: GetActionSequenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetActionSequenceResponse> {
        self.client.execute(action: "GetActionSequence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取动作顺序
    ///
    /// 使用动作活体检测模式前，需调用本接口获取动作顺序。
    @inlinable
    public func getActionSequence(_ input: GetActionSequenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetActionSequenceResponse {
        try await self.client.execute(action: "GetActionSequence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取动作顺序
    ///
    /// 使用动作活体检测模式前，需调用本接口获取动作顺序。
    @inlinable
    public func getActionSequence(actionType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetActionSequenceResponse> {
        self.getActionSequence(.init(actionType: actionType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取动作顺序
    ///
    /// 使用动作活体检测模式前，需调用本接口获取动作顺序。
    @inlinable
    public func getActionSequence(actionType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetActionSequenceResponse {
        try await self.getActionSequence(.init(actionType: actionType), region: region, logger: logger, on: eventLoop)
    }
}
