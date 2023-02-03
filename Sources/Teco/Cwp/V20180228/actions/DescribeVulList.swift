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

extension Cwp {
    /// DescribeVulList请求参数结构体
    public struct DescribeVulListRequest: TCRequestModel {
        /// 返回数量，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - 处理状态  0 -- 待处理 1 -- 已加白 2 -- 已删除 3 - 已忽略</li>
        /// <li>ModifyTime - String - 是否必填：否 - 最近发生时间</li>
        /// <li>Uuid- String - 是否必填：否 - 主机uuid查询</li>
        /// <li>VulName- string -</li>
        /// <li>VulCategory- string - 是否必填：否 - 漏洞类别 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞</li>
        /// <li>IsSupportDefense - int- 是否必填：否 - 是否支持防御 0:不支持 1:支持</li>
        /// <li>Labels- string- 是否必填：否 - 标签搜索</li>
        public let filters: [Filters]?

        /// 可选排序字段 Level，LastTime，HostCount
        public let by: String?

        /// 排序顺序：desc  默认asc
        public let order: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, by: String? = nil, order: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }

    /// DescribeVulList返回参数结构体
    public struct DescribeVulListResponse: TCResponseModel {
        /// 漏洞列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulInfoList: [VulInfoList]?

        /// 漏洞总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 重点关注漏洞总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let followVulCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulInfoList = "VulInfoList"
            case totalCount = "TotalCount"
            case followVulCount = "FollowVulCount"
            case requestId = "RequestId"
        }
    }

    /// 漏洞列表
    ///
    /// 获取漏洞列表数据
    @inlinable
    public func describeVulList(_ input: DescribeVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulListResponse> {
        self.client.execute(action: "DescribeVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞列表
    ///
    /// 获取漏洞列表数据
    @inlinable
    public func describeVulList(_ input: DescribeVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulListResponse {
        try await self.client.execute(action: "DescribeVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞列表
    ///
    /// 获取漏洞列表数据
    @inlinable
    public func describeVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulListResponse> {
        let input = DescribeVulListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞列表
    ///
    /// 获取漏洞列表数据
    @inlinable
    public func describeVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulListResponse {
        let input = DescribeVulListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
