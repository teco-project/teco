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

extension Cdb {
    /// DescribeInstanceParamRecords请求参数结构体
    public struct DescribeInstanceParamRecordsRequest: TCPaginatedRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 分页大小，默认值：20。
        public let limit: Int64?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstanceParamRecordsResponse) -> DescribeInstanceParamRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceParamRecordsRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeInstanceParamRecords返回参数结构体
    public struct DescribeInstanceParamRecordsResponse: TCPaginatedResponse {
        /// 符合条件的记录数。
        public let totalCount: Int64

        /// 参数修改记录。
        public let items: [ParamRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ParamRecord] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例参数修改历史
    ///
    /// 该接口（DescribeInstanceParamRecords）用于查询实例参数修改历史。
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamRecordsResponse> {
        self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例参数修改历史
    ///
    /// 该接口（DescribeInstanceParamRecords）用于查询实例参数修改历史。
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamRecordsResponse {
        try await self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例参数修改历史
    ///
    /// 该接口（DescribeInstanceParamRecords）用于查询实例参数修改历史。
    @inlinable
    public func describeInstanceParamRecords(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamRecordsResponse> {
        let input = DescribeInstanceParamRecordsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例参数修改历史
    ///
    /// 该接口（DescribeInstanceParamRecords）用于查询实例参数修改历史。
    @inlinable
    public func describeInstanceParamRecords(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamRecordsResponse {
        let input = DescribeInstanceParamRecordsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
