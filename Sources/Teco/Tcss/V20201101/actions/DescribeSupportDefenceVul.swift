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

extension Tcss {
    /// DescribeSupportDefenceVul请求参数结构体
    public struct DescribeSupportDefenceVulRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>Level- String - 是否必填：否 - 威胁等级，CRITICAL:严重 HIGH:高/MIDDLE:中/LOW:低</li>
        /// <li>CVEID- string - 是否必填：否 - CVE编号</li>
        /// <li>Name- string -是否必填: 否 - 漏洞名称</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：披露时间：SubmitTime
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeSupportDefenceVul返回参数结构体
    public struct DescribeSupportDefenceVulResponse: TCResponseModel {
        /// 支持防御的漏洞列表
        public let list: [SupportDefenceVul]

        /// 总数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询支持防御的漏洞列表
    @inlinable
    public func describeSupportDefenceVul(_ input: DescribeSupportDefenceVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportDefenceVulResponse> {
        self.client.execute(action: "DescribeSupportDefenceVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询支持防御的漏洞列表
    @inlinable
    public func describeSupportDefenceVul(_ input: DescribeSupportDefenceVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportDefenceVulResponse {
        try await self.client.execute(action: "DescribeSupportDefenceVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询支持防御的漏洞列表
    @inlinable
    public func describeSupportDefenceVul(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportDefenceVulResponse> {
        self.describeSupportDefenceVul(DescribeSupportDefenceVulRequest(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询支持防御的漏洞列表
    @inlinable
    public func describeSupportDefenceVul(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportDefenceVulResponse {
        try await self.describeSupportDefenceVul(DescribeSupportDefenceVulRequest(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
