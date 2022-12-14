//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tem {
    /// DescribeEnvironments请求参数结构体
    public struct DescribeEnvironmentsRequest: TCRequestModel {
        /// 分页limit
        public let limit: Int64?

        /// 分页下标
        public let offset: Int64?

        /// 来源source
        public let sourceChannel: Int64?

        /// 查询过滤器
        public let filters: [QueryFilter]?

        /// 排序字段
        public let sortInfo: SortType?

        public init(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil) {
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
            self.filters = filters
            self.sortInfo = sortInfo
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
            case filters = "Filters"
            case sortInfo = "SortInfo"
        }
    }

    /// DescribeEnvironments返回参数结构体
    public struct DescribeEnvironmentsResponse: TCResponseModel {
        /// 返回结果
        public let result: NamespacePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvironmentsResponse > {
        self.client.execute(action: "DescribeEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.client.execute(action: "DescribeEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvironmentsResponse > {
        self.describeEnvironments(DescribeEnvironmentsRequest(limit: limit, offset: offset, sourceChannel: sourceChannel, filters: filters, sortInfo: sortInfo), logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.describeEnvironments(DescribeEnvironmentsRequest(limit: limit, offset: offset, sourceChannel: sourceChannel, filters: filters, sortInfo: sortInfo), logger: logger, on: eventLoop)
    }
}
