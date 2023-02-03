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

extension Ivld {
    /// DescribeCustomPersons请求参数结构体
    public struct DescribeCustomPersonsRequest: TCRequestModel {
        /// 分页序号，从1开始
        public let pageNumber: Int64

        /// 分页数据行数，最多50
        public let pageSize: Int64

        /// 排序信息，默认倒序
        public let sortBy: SortBy?

        /// 自定义人物过滤条件
        public let filter: CustomPersonFilter?

        public init(pageNumber: Int64, pageSize: Int64, sortBy: SortBy? = nil, filter: CustomPersonFilter? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.sortBy = sortBy
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case sortBy = "SortBy"
            case filter = "Filter"
        }
    }

    /// DescribeCustomPersons返回参数结构体
    public struct DescribeCustomPersonsResponse: TCResponseModel {
        /// 满足过滤条件的自定义人物数量
        public let totalCount: Int64

        /// 自定义人物信息
        public let personInfoSet: [CustomPersonInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case personInfoSet = "PersonInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 批量描述自定义人物
    @inlinable
    public func describeCustomPersons(_ input: DescribeCustomPersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomPersonsResponse> {
        self.client.execute(action: "DescribeCustomPersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述自定义人物
    @inlinable
    public func describeCustomPersons(_ input: DescribeCustomPersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomPersonsResponse {
        try await self.client.execute(action: "DescribeCustomPersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量描述自定义人物
    @inlinable
    public func describeCustomPersons(pageNumber: Int64, pageSize: Int64, sortBy: SortBy? = nil, filter: CustomPersonFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomPersonsResponse> {
        let input = DescribeCustomPersonsRequest(pageNumber: pageNumber, pageSize: pageSize, sortBy: sortBy, filter: filter)
        return self.client.execute(action: "DescribeCustomPersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述自定义人物
    @inlinable
    public func describeCustomPersons(pageNumber: Int64, pageSize: Int64, sortBy: SortBy? = nil, filter: CustomPersonFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomPersonsResponse {
        let input = DescribeCustomPersonsRequest(pageNumber: pageNumber, pageSize: pageSize, sortBy: sortBy, filter: filter)
        return try await self.client.execute(action: "DescribeCustomPersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
