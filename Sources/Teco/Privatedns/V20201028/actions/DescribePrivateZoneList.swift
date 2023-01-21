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

extension Privatedns {
    /// DescribePrivateZoneList请求参数结构体
    public struct DescribePrivateZoneListRequest: TCRequestModel {
        /// 分页偏移量，从0开始
        public let offset: Int64?

        /// 分页限制数目， 最大100，默认20
        public let limit: Int64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribePrivateZoneList返回参数结构体
    public struct DescribePrivateZoneListResponse: TCResponseModel {
        /// 私有域数量
        public let totalCount: Int64

        /// 私有域列表
        public let privateZoneSet: [PrivateZone]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case privateZoneSet = "PrivateZoneSet"
            case requestId = "RequestId"
        }
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneListResponse> {
        self.client.execute(action: "DescribePrivateZoneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneListResponse {
        try await self.client.execute(action: "DescribePrivateZoneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneListResponse> {
        self.describePrivateZoneList(DescribePrivateZoneListRequest(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneListResponse {
        try await self.describePrivateZoneList(DescribePrivateZoneListRequest(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
