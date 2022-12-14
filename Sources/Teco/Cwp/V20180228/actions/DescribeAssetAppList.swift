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

extension Cwp {
    /// DescribeAssetAppList请求参数结构体
    public struct DescribeAssetAppListRequest: TCRequestModel {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>AppName- string - 是否必填：否 - 应用名搜索</li>
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Type - int - 是否必填：否 - 类型	: 仅linux
        /// 0: 全部
        /// 1: 运维
        /// 2 : 数据库
        /// 3 : 安全
        /// 4 : 可疑应用
        /// 5 : 系统架构
        /// 6 : 系统应用
        /// 7 : WEB服务
        /// 99:其他</li>
        /// <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [AssetFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime|ProcessCount]
        public let by: String?

        public init(quuid: String? = nil, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.quuid = quuid
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeAssetAppList返回参数结构体
    public struct DescribeAssetAppListResponse: TCResponseModel {
        /// 应用列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apps: [AssetAppBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case apps = "Apps"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询应用列表
    @inlinable
    public func describeAssetAppList(_ input: DescribeAssetAppListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetAppListResponse > {
        self.client.execute(action: "DescribeAssetAppList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    @inlinable
    public func describeAssetAppList(_ input: DescribeAssetAppListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetAppListResponse {
        try await self.client.execute(action: "DescribeAssetAppList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用列表
    @inlinable
    public func describeAssetAppList(quuid: String? = nil, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetAppListResponse > {
        self.describeAssetAppList(DescribeAssetAppListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    @inlinable
    public func describeAssetAppList(quuid: String? = nil, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetAppListResponse {
        try await self.describeAssetAppList(DescribeAssetAppListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), logger: logger, on: eventLoop)
    }
}
