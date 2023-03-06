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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Postgres {
    /// DescribeDBBackups请求参数结构体
    public struct DescribeDBBackupsRequest: TCPaginatedRequest {
        /// 实例ID，形如postgres-4wdeb0zv。
        public let dbInstanceId: String

        /// 备份方式（1-全量）。目前只支持全量，取值为1。
        public let type: Int64

        /// 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，形如2018-06-10 17:06:38
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 备份列表分页返回，每页返回数量，默认为 20，最小为1，最大值为 100。（当该参数不传或者传0时按默认值处理）
        public let limit: Int64?

        /// 返回结果中的第几页，从第0页开始。默认为0。
        public let offset: Int64?

        public init(dbInstanceId: String, type: Int64, startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.type = type
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDBBackupsResponse) -> DescribeDBBackupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBBackupsRequest(dbInstanceId: self.dbInstanceId, type: self.type, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDBBackups返回参数结构体
    public struct DescribeDBBackupsResponse: TCPaginatedResponse {
        /// 返回备份列表中备份文件的个数
        public let totalCount: Int64

        /// 备份列表
        public let backupList: [DBBackup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupList = "BackupList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DBBackup] {
            self.backupList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例备份列表
    ///
    /// 本接口（DescribeDBBackups）用于查询实例备份列表。
    @inlinable
    public func describeDBBackups(_ input: DescribeDBBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBBackupsResponse> {
        self.client.execute(action: "DescribeDBBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例备份列表
    ///
    /// 本接口（DescribeDBBackups）用于查询实例备份列表。
    @inlinable
    public func describeDBBackups(_ input: DescribeDBBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBBackupsResponse {
        try await self.client.execute(action: "DescribeDBBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例备份列表
    ///
    /// 本接口（DescribeDBBackups）用于查询实例备份列表。
    @inlinable
    public func describeDBBackups(dbInstanceId: String, type: Int64, startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBBackupsResponse> {
        let input = DescribeDBBackupsRequest(dbInstanceId: dbInstanceId, type: type, startTime: startTime, endTime: endTime, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeDBBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例备份列表
    ///
    /// 本接口（DescribeDBBackups）用于查询实例备份列表。
    @inlinable
    public func describeDBBackups(dbInstanceId: String, type: Int64, startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBBackupsResponse {
        let input = DescribeDBBackupsRequest(dbInstanceId: dbInstanceId, type: type, startTime: startTime, endTime: endTime, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeDBBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
