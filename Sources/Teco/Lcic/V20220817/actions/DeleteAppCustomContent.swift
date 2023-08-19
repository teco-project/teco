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

extension Lcic {
    /// DeleteAppCustomContent请求参数结构体
    public struct DeleteAppCustomContentRequest: TCRequest {
        /// 应用ID。
        public let sdkAppId: UInt64

        /// 指定需要删除的已设置的scene场景自定义元素，如果为空则删除应用下已设置的所有自定义元素。
        public let scenes: [String]?

        public init(sdkAppId: UInt64, scenes: [String]? = nil) {
            self.sdkAppId = sdkAppId
            self.scenes = scenes
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case scenes = "Scenes"
        }
    }

    /// DeleteAppCustomContent返回参数结构体
    public struct DeleteAppCustomContentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除应用自定义内容
    ///
    /// 删除设置自定义元素。如果参数scenes为空则删除所有自定义元素，否则删除指定的scene自定义元素。
    @inlinable @discardableResult
    public func deleteAppCustomContent(_ input: DeleteAppCustomContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppCustomContentResponse> {
        self.client.execute(action: "DeleteAppCustomContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用自定义内容
    ///
    /// 删除设置自定义元素。如果参数scenes为空则删除所有自定义元素，否则删除指定的scene自定义元素。
    @inlinable @discardableResult
    public func deleteAppCustomContent(_ input: DeleteAppCustomContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppCustomContentResponse {
        try await self.client.execute(action: "DeleteAppCustomContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用自定义内容
    ///
    /// 删除设置自定义元素。如果参数scenes为空则删除所有自定义元素，否则删除指定的scene自定义元素。
    @inlinable @discardableResult
    public func deleteAppCustomContent(sdkAppId: UInt64, scenes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppCustomContentResponse> {
        self.deleteAppCustomContent(.init(sdkAppId: sdkAppId, scenes: scenes), region: region, logger: logger, on: eventLoop)
    }

    /// 删除应用自定义内容
    ///
    /// 删除设置自定义元素。如果参数scenes为空则删除所有自定义元素，否则删除指定的scene自定义元素。
    @inlinable @discardableResult
    public func deleteAppCustomContent(sdkAppId: UInt64, scenes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppCustomContentResponse {
        try await self.deleteAppCustomContent(.init(sdkAppId: sdkAppId, scenes: scenes), region: region, logger: logger, on: eventLoop)
    }
}
