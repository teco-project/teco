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

extension Iotvideoindustry {
    /// ModifyMessageForward请求参数结构体
    public struct ModifyMessageForwardRequest: TCRequestModel {
        /// 配置ID
        public let intId: Int64

        /// json数组， 转发类型 1: 告警 2:GPS
        public let messageType: String

        public init(intId: Int64, messageType: String) {
            self.intId = intId
            self.messageType = messageType
        }

        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
            case messageType = "MessageType"
        }
    }

    /// ModifyMessageForward返回参数结构体
    public struct ModifyMessageForwardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改消息转发配置
    @inlinable @discardableResult
    public func modifyMessageForward(_ input: ModifyMessageForwardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMessageForwardResponse> {
        self.client.execute(action: "ModifyMessageForward", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改消息转发配置
    @inlinable @discardableResult
    public func modifyMessageForward(_ input: ModifyMessageForwardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMessageForwardResponse {
        try await self.client.execute(action: "ModifyMessageForward", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改消息转发配置
    @inlinable @discardableResult
    public func modifyMessageForward(intId: Int64, messageType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMessageForwardResponse> {
        self.modifyMessageForward(ModifyMessageForwardRequest(intId: intId, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改消息转发配置
    @inlinable @discardableResult
    public func modifyMessageForward(intId: Int64, messageType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMessageForwardResponse {
        try await self.modifyMessageForward(ModifyMessageForwardRequest(intId: intId, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }
}
