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

extension Cwp {
    /// DescribeJavaMemShellList请求参数结构体
    public struct DescribeJavaMemShellListRequest: TCRequestModel {
        /// 过滤条件：Keywords: ip或者主机名模糊查询, Type，Status精确匹配，CreateBeginTime，CreateEndTime时间段
        public let filters: [Filters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeJavaMemShellList返回参数结构体
    public struct DescribeJavaMemShellListResponse: TCResponseModel {
        /// 事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [JavaMemShellInfo]?

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询java内存马事件列表
    @inlinable
    public func describeJavaMemShellList(_ input: DescribeJavaMemShellListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJavaMemShellListResponse> {
        self.client.execute(action: "DescribeJavaMemShellList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询java内存马事件列表
    @inlinable
    public func describeJavaMemShellList(_ input: DescribeJavaMemShellListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJavaMemShellListResponse {
        try await self.client.execute(action: "DescribeJavaMemShellList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询java内存马事件列表
    @inlinable
    public func describeJavaMemShellList(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJavaMemShellListResponse> {
        self.describeJavaMemShellList(DescribeJavaMemShellListRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询java内存马事件列表
    @inlinable
    public func describeJavaMemShellList(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJavaMemShellListResponse {
        try await self.describeJavaMemShellList(DescribeJavaMemShellListRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
