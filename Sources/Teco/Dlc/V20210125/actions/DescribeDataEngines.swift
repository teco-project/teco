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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Dlc {
    /// DescribeDataEngines请求参数结构体
    public struct DescribeDataEnginesRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 过滤类型，支持如下的过滤类型，传参Name应为以下其中一个, data-engine-name - String（数据引擎名称）：engine-type - String（引擎类型：spark：spark 引擎，presto：presto引擎），state - String (数据引擎状态 -2已删除 -1失败 0初始化中 1挂起 2运行中 3准备删除 4删除中) ， mode - String（计费模式 0共享模式 1按量计费 2包年包月） ， create-time - String（创建时间，10位时间戳） message - String （描述信息），cluster-type - String (集群资源类型 spark_private/presto_private/presto_cu/spark_cu)，engine-id - String（数据引擎ID），key-word - String（数据引擎名称或集群资源类型或描述信息模糊搜索），engine-exec-type - String（引擎执行任务类型，SQL/BATCH）
        public let filters: [Filter]?

        /// 排序字段，支持如下字段类型，create-time
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序， 默认为asc。
        public let sorting: String?

        /// 返回数量，默认为10，最大值为100。
        public let limit: Int64?

        /// 已废弃，请使用DatasourceConnectionNameSet
        public let datasourceConnectionName: String?

        /// 是否不返回共享引擎，true不返回共享引擎，false可以返回共享引擎
        public let excludePublicEngine: Bool?

        /// 参数应该为引擎权限类型，有效类型："USE", "MODIFY", "OPERATE", "MONITOR", "DELETE"
        public let accessTypes: [String]?

        /// 引擎执行任务类型，有效值：SQL/BATCH，默认为SQL
        public let engineExecType: String?

        /// 引擎类型，有效值：spark/presto
        public let engineType: String?

        /// 网络配置列表，若传入该参数，则返回网络配置关联的计算引擎
        public let datasourceConnectionNameSet: [String]?

        public init(offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, limit: Int64? = nil, datasourceConnectionName: String? = nil, excludePublicEngine: Bool? = nil, accessTypes: [String]? = nil, engineExecType: String? = nil, engineType: String? = nil, datasourceConnectionNameSet: [String]? = nil) {
            self.offset = offset
            self.filters = filters
            self.sortBy = sortBy
            self.sorting = sorting
            self.limit = limit
            self.datasourceConnectionName = datasourceConnectionName
            self.excludePublicEngine = excludePublicEngine
            self.accessTypes = accessTypes
            self.engineExecType = engineExecType
            self.engineType = engineType
            self.datasourceConnectionNameSet = datasourceConnectionNameSet
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case filters = "Filters"
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case limit = "Limit"
            case datasourceConnectionName = "DatasourceConnectionName"
            case excludePublicEngine = "ExcludePublicEngine"
            case accessTypes = "AccessTypes"
            case engineExecType = "EngineExecType"
            case engineType = "EngineType"
            case datasourceConnectionNameSet = "DatasourceConnectionNameSet"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDataEnginesResponse) -> DescribeDataEnginesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDataEnginesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, sortBy: self.sortBy, sorting: self.sorting, limit: self.limit, datasourceConnectionName: self.datasourceConnectionName, excludePublicEngine: self.excludePublicEngine, accessTypes: self.accessTypes, engineExecType: self.engineExecType, engineType: self.engineType, datasourceConnectionNameSet: self.datasourceConnectionNameSet)
        }
    }

    /// DescribeDataEngines返回参数结构体
    public struct DescribeDataEnginesResponse: TCPaginatedResponse {
        /// 数据引擎列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataEngines: [DataEngineInfo]?

        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataEngines = "DataEngines"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DataEngineInfo`` list from the paginated response.
        public func getItems() -> [DataEngineInfo] {
            self.dataEngines ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable
    public func describeDataEngines(_ input: DescribeDataEnginesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataEnginesResponse> {
        self.client.execute(action: "DescribeDataEngines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable
    public func describeDataEngines(_ input: DescribeDataEnginesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataEnginesResponse {
        try await self.client.execute(action: "DescribeDataEngines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable
    public func describeDataEngines(offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, limit: Int64? = nil, datasourceConnectionName: String? = nil, excludePublicEngine: Bool? = nil, accessTypes: [String]? = nil, engineExecType: String? = nil, engineType: String? = nil, datasourceConnectionNameSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataEnginesResponse> {
        self.describeDataEngines(.init(offset: offset, filters: filters, sortBy: sortBy, sorting: sorting, limit: limit, datasourceConnectionName: datasourceConnectionName, excludePublicEngine: excludePublicEngine, accessTypes: accessTypes, engineExecType: engineExecType, engineType: engineType, datasourceConnectionNameSet: datasourceConnectionNameSet), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable
    public func describeDataEngines(offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, limit: Int64? = nil, datasourceConnectionName: String? = nil, excludePublicEngine: Bool? = nil, accessTypes: [String]? = nil, engineExecType: String? = nil, engineType: String? = nil, datasourceConnectionNameSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataEnginesResponse {
        try await self.describeDataEngines(.init(offset: offset, filters: filters, sortBy: sortBy, sorting: sorting, limit: limit, datasourceConnectionName: datasourceConnectionName, excludePublicEngine: excludePublicEngine, accessTypes: accessTypes, engineExecType: engineExecType, engineType: engineType, datasourceConnectionNameSet: datasourceConnectionNameSet), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable
    public func describeDataEnginesPaginated(_ input: DescribeDataEnginesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DataEngineInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDataEngines, logger: logger, on: eventLoop)
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    @inlinable @discardableResult
    public func describeDataEnginesPaginated(_ input: DescribeDataEnginesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDataEnginesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDataEngines, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询DataEngines列表
    ///
    /// 本接口（DescribeDataEngines）用于查询DataEngines信息列表
    ///
    /// - Returns: `AsyncSequence`s of ``DataEngineInfo`` and ``DescribeDataEnginesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDataEnginesPaginator(_ input: DescribeDataEnginesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDataEnginesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDataEngines, logger: logger, on: eventLoop)
    }
}
