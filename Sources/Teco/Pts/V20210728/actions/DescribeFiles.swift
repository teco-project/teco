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

import TecoPaginationHelpers

extension Pts {
    /// DescribeFiles请求参数结构体
    public struct DescribeFilesRequest: TCPaginatedRequest {
        /// 项目 ID 数组
        public let projectIds: [String]

        /// 文件 ID 数组
        public let fileIds: [String]?

        /// 文件名
        public let fileName: String?

        /// 偏移量，默认为 0
        public let offset: Int64?

        /// 返回数量，默认为 20，最大为 100
        public let limit: Int64?

        /// 文件种类，参数文件-1，协议文件-2，请求文件-3
        public let kind: Int64?

        public init(projectIds: [String], fileIds: [String]? = nil, fileName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, kind: Int64? = nil) {
            self.projectIds = projectIds
            self.fileIds = fileIds
            self.fileName = fileName
            self.offset = offset
            self.limit = limit
            self.kind = kind
        }

        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case fileIds = "FileIds"
            case fileName = "FileName"
            case offset = "Offset"
            case limit = "Limit"
            case kind = "Kind"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeFilesResponse) -> DescribeFilesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFilesRequest(projectIds: self.projectIds, fileIds: self.fileIds, fileName: self.fileName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, kind: self.kind)
        }
    }

    /// DescribeFiles返回参数结构体
    public struct DescribeFilesResponse: TCPaginatedResponse {
        /// 文件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSet: [File]?

        /// 文件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileSet = "FileSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [File] {
            self.fileSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询文件列表
    @inlinable
    public func describeFiles(_ input: DescribeFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFilesResponse> {
        self.client.execute(action: "DescribeFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件列表
    @inlinable
    public func describeFiles(_ input: DescribeFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFilesResponse {
        try await self.client.execute(action: "DescribeFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件列表
    @inlinable
    public func describeFiles(projectIds: [String], fileIds: [String]? = nil, fileName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, kind: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFilesResponse> {
        let input = DescribeFilesRequest(projectIds: projectIds, fileIds: fileIds, fileName: fileName, offset: offset, limit: limit, kind: kind)
        return self.client.execute(action: "DescribeFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件列表
    @inlinable
    public func describeFiles(projectIds: [String], fileIds: [String]? = nil, fileName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, kind: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFilesResponse {
        let input = DescribeFilesRequest(projectIds: projectIds, fileIds: fileIds, fileName: fileName, offset: offset, limit: limit, kind: kind)
        return try await self.client.execute(action: "DescribeFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
