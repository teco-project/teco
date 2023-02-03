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

extension Cfs {
    /// DescribeUserQuota请求参数结构体
    public struct DescribeUserQuotaRequest: TCRequestModel {
        /// 文件系统 ID
        public let fileSystemId: String

        /// 过滤条件。
        /// <br><li>UserType - Array of String - 是否必填：否 -（过滤条件）按配额类型过滤。(Uid| Gid )
        /// <br><li>UserId - Array of String - 是否必填：否 -（过滤条件）按UID/GID过滤。
        public let filters: [Filter]?

        /// Offset 分页码
        public let offset: UInt64?

        /// Limit 页面大小
        public let limit: UInt64?

        public init(fileSystemId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.fileSystemId = fileSystemId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeUserQuota返回参数结构体
    public struct DescribeUserQuotaResponse: TCResponseModel {
        /// UserQuota条目总数
        public let totalCount: UInt64

        /// UserQuota条目
        public let userQuotaInfo: [UserQuota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userQuotaInfo = "UserQuotaInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询文件系统配额
    @inlinable
    public func describeUserQuota(_ input: DescribeUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotaResponse> {
        self.client.execute(action: "DescribeUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统配额
    @inlinable
    public func describeUserQuota(_ input: DescribeUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotaResponse {
        try await self.client.execute(action: "DescribeUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件系统配额
    @inlinable
    public func describeUserQuota(fileSystemId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotaResponse> {
        let input = DescribeUserQuotaRequest(fileSystemId: fileSystemId, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统配额
    @inlinable
    public func describeUserQuota(fileSystemId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotaResponse {
        let input = DescribeUserQuotaRequest(fileSystemId: fileSystemId, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
