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
import TecoPaginationHelpers

extension Cdb {
    /// DescribeUploadedFiles请求参数结构体
    public struct DescribeUploadedFilesRequest: TCPaginatedRequest {
        /// 文件路径。该字段应填用户主账号的OwnerUin信息。
        public let path: String

        /// 记录偏移量，默认值为0。
        public let offset: Int64?

        /// 单次请求返回的数量，默认值为20。
        public let limit: Int64?

        public init(path: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.path = path
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case path = "Path"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUploadedFilesResponse) -> DescribeUploadedFilesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUploadedFilesRequest(path: self.path, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUploadedFiles返回参数结构体
    public struct DescribeUploadedFilesResponse: TCPaginatedResponse {
        /// 符合查询条件的SQL文件总数。
        public let totalCount: Int64

        /// 返回的SQL文件列表。
        public let items: [SqlFileInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SqlFileInfo`` list from the paginated response.
        public func getItems() -> [SqlFileInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(_ input: DescribeUploadedFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadedFilesResponse> {
        self.client.execute(action: "DescribeUploadedFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(_ input: DescribeUploadedFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadedFilesResponse {
        try await self.client.execute(action: "DescribeUploadedFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(path: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadedFilesResponse> {
        self.describeUploadedFiles(.init(path: path, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(path: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadedFilesResponse {
        try await self.describeUploadedFiles(.init(path: path, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFilesPaginated(_ input: DescribeUploadedFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SqlFileInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUploadedFiles, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable @discardableResult
    public func describeUploadedFilesPaginated(_ input: DescribeUploadedFilesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUploadedFilesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUploadedFiles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    ///
    /// - Returns: `AsyncSequence`s of `SqlFileInfo` and `DescribeUploadedFilesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUploadedFilesPaginator(_ input: DescribeUploadedFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUploadedFilesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUploadedFiles, logger: logger, on: eventLoop)
    }
}
