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

import TecoCore
import TecoPaginationHelpers

extension Cwp {
    /// DescribeAssetProcessInfoList请求参数结构体
    public struct DescribeAssetProcessInfoListRequest: TCPaginatedRequest {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 进程名</li>
        /// <li>User - String - 是否必填：否 - 进程用户</li>
        /// <li>Group - String - 是否必填：否 - 进程用户组</li>
        /// <li>Pid - uint64 - 是否必填：否 - 进程ID</li>
        /// <li>Ppid - uint64 - 是否必填：否 - 父进程ID</li>
        /// <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        /// <li>Status - string - 是否必填：否 - 进程状态：
        /// 1:R 可执行
        /// 2:S 可中断
        /// 3:D 不可中断
        /// 4:T 暂停状态或跟踪状态
        /// 5:Z 僵尸状态
        /// 6:X 将被销毁</li>
        /// <li>RunTimeStart - String - 是否必填：否 - 运行开始时间</li>
        /// <li>RunTimeEnd - String - 是否必填：否 - 运行结束时间</li>
        /// <li>InstallByPackage - uint64 - 是否必填：否 - 是否包安装：0否，1是</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime|StartTime]
        public let by: String?

        public init(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
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

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetProcessInfoListResponse) -> DescribeAssetProcessInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetProcessInfoListRequest(quuid: self.quuid, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeAssetProcessInfoList返回参数结构体
    public struct DescribeAssetProcessInfoListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let process: [AssetProcessBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case process = "Process"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetProcessBaseInfo] {
            self.process ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资产管理进程列表
    @inlinable
    public func describeAssetProcessInfoList(_ input: DescribeAssetProcessInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetProcessInfoListResponse> {
        self.client.execute(action: "DescribeAssetProcessInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理进程列表
    @inlinable
    public func describeAssetProcessInfoList(_ input: DescribeAssetProcessInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetProcessInfoListResponse {
        try await self.client.execute(action: "DescribeAssetProcessInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理进程列表
    @inlinable
    public func describeAssetProcessInfoList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetProcessInfoListResponse> {
        self.describeAssetProcessInfoList(.init(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理进程列表
    @inlinable
    public func describeAssetProcessInfoList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetProcessInfoListResponse {
        try await self.describeAssetProcessInfoList(.init(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理进程列表
    @inlinable
    public func describeAssetProcessInfoListPaginated(_ input: DescribeAssetProcessInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetProcessBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetProcessInfoList, logger: logger, on: eventLoop)
    }

    /// 获取资产管理进程列表
    @inlinable @discardableResult
    public func describeAssetProcessInfoListPaginated(_ input: DescribeAssetProcessInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetProcessInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetProcessInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资产管理进程列表
    ///
    /// - Returns: `AsyncSequence`s of `AssetProcessBaseInfo` and `DescribeAssetProcessInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetProcessInfoListPaginator(_ input: DescribeAssetProcessInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetProcessInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetProcessInfoList, logger: logger, on: eventLoop)
    }
}
