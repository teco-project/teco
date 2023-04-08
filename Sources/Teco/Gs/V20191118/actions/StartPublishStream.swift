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

extension Gs {
    /// StartPublishStream请求参数结构体
    public struct StartPublishStreamRequest: TCRequestModel {
        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        /// 推流地址，仅支持rtmp协议
        public let publishUrl: String

        public init(userId: String, publishUrl: String) {
            self.userId = userId
            self.publishUrl = publishUrl
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case publishUrl = "PublishUrl"
        }
    }

    /// StartPublishStream返回参数结构体
    public struct StartPublishStreamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开始云端推流
    @inlinable @discardableResult
    public func startPublishStream(_ input: StartPublishStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishStreamResponse> {
        self.client.execute(action: "StartPublishStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开始云端推流
    @inlinable @discardableResult
    public func startPublishStream(_ input: StartPublishStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishStreamResponse {
        try await self.client.execute(action: "StartPublishStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开始云端推流
    @inlinable @discardableResult
    public func startPublishStream(userId: String, publishUrl: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishStreamResponse> {
        self.startPublishStream(.init(userId: userId, publishUrl: publishUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 开始云端推流
    @inlinable @discardableResult
    public func startPublishStream(userId: String, publishUrl: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishStreamResponse {
        try await self.startPublishStream(.init(userId: userId, publishUrl: publishUrl), region: region, logger: logger, on: eventLoop)
    }
}
