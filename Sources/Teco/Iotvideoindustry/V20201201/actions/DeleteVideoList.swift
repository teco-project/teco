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

extension Iotvideoindustry {
    /// DeleteVideoList请求参数结构体
    public struct DeleteVideoListRequest: TCRequest {
        /// 视频ID列表长度限制100内
        public let initIDs: [Int64]

        public init(initIDs: [Int64]) {
            self.initIDs = initIDs
        }

        enum CodingKeys: String, CodingKey {
            case initIDs = "InitIDs"
        }
    }

    /// DeleteVideoList返回参数结构体
    public struct DeleteVideoListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除录像存储列表
    @inlinable @discardableResult
    public func deleteVideoList(_ input: DeleteVideoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVideoListResponse> {
        self.client.execute(action: "DeleteVideoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除录像存储列表
    @inlinable @discardableResult
    public func deleteVideoList(_ input: DeleteVideoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVideoListResponse {
        try await self.client.execute(action: "DeleteVideoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除录像存储列表
    @inlinable @discardableResult
    public func deleteVideoList(initIDs: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVideoListResponse> {
        self.deleteVideoList(.init(initIDs: initIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 删除录像存储列表
    @inlinable @discardableResult
    public func deleteVideoList(initIDs: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVideoListResponse {
        try await self.deleteVideoList(.init(initIDs: initIDs), region: region, logger: logger, on: eventLoop)
    }
}
