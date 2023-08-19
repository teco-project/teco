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

extension Sqlserver {
    /// ModifyPublishSubscribeName请求参数结构体
    public struct ModifyPublishSubscribeNameRequest: TCRequest {
        /// 发布订阅ID
        public let publishSubscribeId: UInt64

        /// 待修改的发布订阅名称
        public let publishSubscribeName: String

        public init(publishSubscribeId: UInt64, publishSubscribeName: String) {
            self.publishSubscribeId = publishSubscribeId
            self.publishSubscribeName = publishSubscribeName
        }

        enum CodingKeys: String, CodingKey {
            case publishSubscribeId = "PublishSubscribeId"
            case publishSubscribeName = "PublishSubscribeName"
        }
    }

    /// ModifyPublishSubscribeName返回参数结构体
    public struct ModifyPublishSubscribeNameResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改发布订阅的名称
    ///
    /// 本接口（ModifyPublishSubscribeName）修改发布订阅的名称。
    @inlinable @discardableResult
    public func modifyPublishSubscribeName(_ input: ModifyPublishSubscribeNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPublishSubscribeNameResponse> {
        self.client.execute(action: "ModifyPublishSubscribeName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改发布订阅的名称
    ///
    /// 本接口（ModifyPublishSubscribeName）修改发布订阅的名称。
    @inlinable @discardableResult
    public func modifyPublishSubscribeName(_ input: ModifyPublishSubscribeNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPublishSubscribeNameResponse {
        try await self.client.execute(action: "ModifyPublishSubscribeName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改发布订阅的名称
    ///
    /// 本接口（ModifyPublishSubscribeName）修改发布订阅的名称。
    @inlinable @discardableResult
    public func modifyPublishSubscribeName(publishSubscribeId: UInt64, publishSubscribeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPublishSubscribeNameResponse> {
        self.modifyPublishSubscribeName(.init(publishSubscribeId: publishSubscribeId, publishSubscribeName: publishSubscribeName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改发布订阅的名称
    ///
    /// 本接口（ModifyPublishSubscribeName）修改发布订阅的名称。
    @inlinable @discardableResult
    public func modifyPublishSubscribeName(publishSubscribeId: UInt64, publishSubscribeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPublishSubscribeNameResponse {
        try await self.modifyPublishSubscribeName(.init(publishSubscribeId: publishSubscribeId, publishSubscribeName: publishSubscribeName), region: region, logger: logger, on: eventLoop)
    }
}
