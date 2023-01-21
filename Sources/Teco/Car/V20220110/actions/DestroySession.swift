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

extension Car {
    /// DestroySession请求参数结构体
    public struct DestroySessionRequest: TCRequestModel {
        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        public init(userId: String) {
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
        }
    }

    /// DestroySession返回参数结构体
    public struct DestroySessionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁会话
    @inlinable @discardableResult
    public func destroySession(_ input: DestroySessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroySessionResponse> {
        self.client.execute(action: "DestroySession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁会话
    @inlinable @discardableResult
    public func destroySession(_ input: DestroySessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroySessionResponse {
        try await self.client.execute(action: "DestroySession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁会话
    @inlinable @discardableResult
    public func destroySession(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroySessionResponse> {
        self.destroySession(DestroySessionRequest(userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁会话
    @inlinable @discardableResult
    public func destroySession(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroySessionResponse {
        try await self.destroySession(DestroySessionRequest(userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
