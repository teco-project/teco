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

extension Ssa {
    /// DescribeLeakDetectionList请求参数结构体
    public struct DescribeLeakDetectionListRequest: TCRequestModel {
        /// 筛选条件
        public let filters: [Filter]

        /// 每页数量
        public let limit: Int64

        /// 页码
        public let page: Int64

        /// 起始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        public init(filters: [Filter], limit: Int64, page: Int64, startTime: String, endTime: String) {
            self.filters = filters
            self.limit = limit
            self.page = page
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case page = "Page"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeLeakDetectionList返回参数结构体
    public struct DescribeLeakDetectionListResponse: TCResponseModel {
        /// 总数
        public let totalCount: Int64

        /// 数据列表
        public let list: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取泄露列表
    @inlinable
    public func describeLeakDetectionList(_ input: DescribeLeakDetectionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLeakDetectionListResponse> {
        self.client.execute(action: "DescribeLeakDetectionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取泄露列表
    @inlinable
    public func describeLeakDetectionList(_ input: DescribeLeakDetectionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLeakDetectionListResponse {
        try await self.client.execute(action: "DescribeLeakDetectionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取泄露列表
    @inlinable
    public func describeLeakDetectionList(filters: [Filter], limit: Int64, page: Int64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLeakDetectionListResponse> {
        self.describeLeakDetectionList(DescribeLeakDetectionListRequest(filters: filters, limit: limit, page: page, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取泄露列表
    @inlinable
    public func describeLeakDetectionList(filters: [Filter], limit: Int64, page: Int64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLeakDetectionListResponse {
        try await self.describeLeakDetectionList(DescribeLeakDetectionListRequest(filters: filters, limit: limit, page: page, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
