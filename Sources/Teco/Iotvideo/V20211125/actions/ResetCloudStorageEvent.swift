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

extension Iotvideo {
    /// ResetCloudStorageEvent请求参数结构体
    public struct ResetCloudStorageEventRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 用户ID
        public let userId: String?

        public init(productId: String, deviceName: String, userId: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case userId = "UserId"
        }
    }

    /// ResetCloudStorageEvent返回参数结构体
    public struct ResetCloudStorageEventResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置云存事件
    @inlinable @discardableResult
    public func resetCloudStorageEvent(_ input: ResetCloudStorageEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetCloudStorageEventResponse> {
        self.client.execute(action: "ResetCloudStorageEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置云存事件
    @inlinable @discardableResult
    public func resetCloudStorageEvent(_ input: ResetCloudStorageEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetCloudStorageEventResponse {
        try await self.client.execute(action: "ResetCloudStorageEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置云存事件
    @inlinable @discardableResult
    public func resetCloudStorageEvent(productId: String, deviceName: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetCloudStorageEventResponse> {
        self.resetCloudStorageEvent(.init(productId: productId, deviceName: deviceName, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置云存事件
    @inlinable @discardableResult
    public func resetCloudStorageEvent(productId: String, deviceName: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetCloudStorageEventResponse {
        try await self.resetCloudStorageEvent(.init(productId: productId, deviceName: deviceName, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}