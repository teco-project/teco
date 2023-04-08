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

import TecoCore

extension Tiw {
    /// DescribeWhiteboardPushSearch请求参数结构体
    public struct DescribeWhiteboardPushSearchRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeWhiteboardPushSearch返回参数结构体
    public struct DescribeWhiteboardPushSearchResponse: TCResponseModel {
        /// 推流任务搜索结果集合
        public let whiteboardPushTaskSet: [WhiteboardPushTaskSearchResult]

        /// 推流总任务数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case whiteboardPushTaskSet = "WhiteboardPushTaskSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 搜索白板推流任务
    ///
    /// 根据房间号搜索白板推流任务
    @inlinable
    public func describeWhiteboardPushSearch(_ input: DescribeWhiteboardPushSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteboardPushSearchResponse> {
        self.client.execute(action: "DescribeWhiteboardPushSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索白板推流任务
    ///
    /// 根据房间号搜索白板推流任务
    @inlinable
    public func describeWhiteboardPushSearch(_ input: DescribeWhiteboardPushSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteboardPushSearchResponse {
        try await self.client.execute(action: "DescribeWhiteboardPushSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索白板推流任务
    ///
    /// 根据房间号搜索白板推流任务
    @inlinable
    public func describeWhiteboardPushSearch(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteboardPushSearchResponse> {
        self.describeWhiteboardPushSearch(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索白板推流任务
    ///
    /// 根据房间号搜索白板推流任务
    @inlinable
    public func describeWhiteboardPushSearch(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteboardPushSearchResponse {
        try await self.describeWhiteboardPushSearch(.init(), region: region, logger: logger, on: eventLoop)
    }
}
