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

extension Cloudaudit {
    /// DescribeAuditTracks请求参数结构体
    public struct DescribeAuditTracksRequest: TCRequestModel {
        /// 页码
        public let pageNumber: UInt64

        /// 每页数目
        public let pageSize: UInt64

        public init(pageNumber: UInt64, pageSize: UInt64) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// DescribeAuditTracks返回参数结构体
    public struct DescribeAuditTracksResponse: TCResponseModel {
        /// 跟踪集列表
        public let tracks: [Tracks]

        /// 总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tracks = "Tracks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询云审计跟踪集列表
    @inlinable
    public func describeAuditTracks(_ input: DescribeAuditTracksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditTracksResponse> {
        self.client.execute(action: "DescribeAuditTracks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云审计跟踪集列表
    @inlinable
    public func describeAuditTracks(_ input: DescribeAuditTracksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditTracksResponse {
        try await self.client.execute(action: "DescribeAuditTracks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云审计跟踪集列表
    @inlinable
    public func describeAuditTracks(pageNumber: UInt64, pageSize: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditTracksResponse> {
        self.describeAuditTracks(DescribeAuditTracksRequest(pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云审计跟踪集列表
    @inlinable
    public func describeAuditTracks(pageNumber: UInt64, pageSize: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditTracksResponse {
        try await self.describeAuditTracks(DescribeAuditTracksRequest(pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }
}
