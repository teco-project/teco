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

extension Gaap {
    /// DeleteFirstLinkSession请求参数结构体
    public struct DeleteFirstLinkSessionRequest: TCRequestModel {
        /// 单次加速唯一会话Id
        public let sessionId: String

        public init(sessionId: String) {
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
        }
    }

    /// DeleteFirstLinkSession返回参数结构体
    public struct DeleteFirstLinkSessionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除接入段加速会话
    ///
    /// 本接口（DeleteFirstLinkSession）用于删除接入段加速会话，删除加速会话后会停止加速。
    @inlinable
    public func deleteFirstLinkSession(_ input: DeleteFirstLinkSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteFirstLinkSessionResponse > {
        self.client.execute(action: "DeleteFirstLinkSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除接入段加速会话
    ///
    /// 本接口（DeleteFirstLinkSession）用于删除接入段加速会话，删除加速会话后会停止加速。
    @inlinable
    public func deleteFirstLinkSession(_ input: DeleteFirstLinkSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirstLinkSessionResponse {
        try await self.client.execute(action: "DeleteFirstLinkSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除接入段加速会话
    ///
    /// 本接口（DeleteFirstLinkSession）用于删除接入段加速会话，删除加速会话后会停止加速。
    @inlinable
    public func deleteFirstLinkSession(sessionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteFirstLinkSessionResponse > {
        self.deleteFirstLinkSession(DeleteFirstLinkSessionRequest(sessionId: sessionId), logger: logger, on: eventLoop)
    }

    /// 删除接入段加速会话
    ///
    /// 本接口（DeleteFirstLinkSession）用于删除接入段加速会话，删除加速会话后会停止加速。
    @inlinable
    public func deleteFirstLinkSession(sessionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirstLinkSessionResponse {
        try await self.deleteFirstLinkSession(DeleteFirstLinkSessionRequest(sessionId: sessionId), logger: logger, on: eventLoop)
    }
}
