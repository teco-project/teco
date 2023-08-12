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

extension Wedata {
    /// DescribeSonInstances请求参数结构体
    public struct DescribeSonInstancesRequest: TCPaginatedRequest {
        /// 实例列表
        public let instances: [InstanceOpsDto]?

        /// 检查父任务类型, true: 检查父任务; false: 不检查父任务
        public let checkFather: Bool?

        /// 重跑类型, 1: 自身; 3: 孩子; 2: 自身以及孩子
        public let rerunType: String?

        /// 实例依赖方式, 1: 自依赖; 2: 任务依赖; 3: 自依赖及父子依赖
        public let dependentWay: String?

        /// 重跑忽略事件监听与否
        public let skipEventListening: Bool?

        /// 下游实例范围 1: 所在工作流 2: 所在项目 3: 所有跨工作流依赖的项目
        public let sonInstanceType: String?

        /// 查询条件
        public let searchCondition: InstanceApiOpsRequest?

        /// 访问类型
        public let optType: String?

        /// 操作者名称
        public let operatorName: String?

        /// 操作者id
        public let operatorId: String?

        /// 项目id
        public let projectId: String?

        /// 项目标志
        public let projectIdent: String?

        /// 项目名称
        public let projectName: String?

        /// 索引页码
        public let pageIndex: Int64?

        /// 页面大小
        public let pageSize: Int64?

        /// 数据总数
        public let count: Int64?

        /// 基础请求信息
        public let requestBaseInfo: ProjectBaseInfoOpsRequest?

        /// 是否计算总数
        public let isCount: Bool?

        public init(instances: [InstanceOpsDto]? = nil, checkFather: Bool? = nil, rerunType: String? = nil, dependentWay: String? = nil, skipEventListening: Bool? = nil, sonInstanceType: String? = nil, searchCondition: InstanceApiOpsRequest? = nil, optType: String? = nil, operatorName: String? = nil, operatorId: String? = nil, projectId: String? = nil, projectIdent: String? = nil, projectName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil, count: Int64? = nil, requestBaseInfo: ProjectBaseInfoOpsRequest? = nil, isCount: Bool? = nil) {
            self.instances = instances
            self.checkFather = checkFather
            self.rerunType = rerunType
            self.dependentWay = dependentWay
            self.skipEventListening = skipEventListening
            self.sonInstanceType = sonInstanceType
            self.searchCondition = searchCondition
            self.optType = optType
            self.operatorName = operatorName
            self.operatorId = operatorId
            self.projectId = projectId
            self.projectIdent = projectIdent
            self.projectName = projectName
            self.pageIndex = pageIndex
            self.pageSize = pageSize
            self.count = count
            self.requestBaseInfo = requestBaseInfo
            self.isCount = isCount
        }

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case checkFather = "CheckFather"
            case rerunType = "RerunType"
            case dependentWay = "DependentWay"
            case skipEventListening = "SkipEventListening"
            case sonInstanceType = "SonInstanceType"
            case searchCondition = "SearchCondition"
            case optType = "OptType"
            case operatorName = "OperatorName"
            case operatorId = "OperatorId"
            case projectId = "ProjectId"
            case projectIdent = "ProjectIdent"
            case projectName = "ProjectName"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case count = "Count"
            case requestBaseInfo = "RequestBaseInfo"
            case isCount = "IsCount"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSonInstancesResponse) -> DescribeSonInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSonInstancesRequest(instances: self.instances, checkFather: self.checkFather, rerunType: self.rerunType, dependentWay: self.dependentWay, skipEventListening: self.skipEventListening, sonInstanceType: self.sonInstanceType, searchCondition: self.searchCondition, optType: self.optType, operatorName: self.operatorName, operatorId: self.operatorId, projectId: self.projectId, projectIdent: self.projectIdent, projectName: self.projectName, pageIndex: (self.pageIndex ?? 0) + 1, pageSize: self.pageSize, count: self.count, requestBaseInfo: self.requestBaseInfo, isCount: self.isCount)
        }
    }

    /// DescribeSonInstances返回参数结构体
    public struct DescribeSonInstancesResponse: TCPaginatedResponse {
        /// 结果集
        public let data: CollectionInstanceOpsDto

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceOpsDto`` list from the paginated response.
        public func getItems() -> [InstanceOpsDto] {
            self.data.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 获取关联子实例
    @inlinable
    public func describeSonInstances(_ input: DescribeSonInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSonInstancesResponse> {
        self.client.execute(action: "DescribeSonInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取关联子实例
    @inlinable
    public func describeSonInstances(_ input: DescribeSonInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSonInstancesResponse {
        try await self.client.execute(action: "DescribeSonInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取关联子实例
    @inlinable
    public func describeSonInstances(instances: [InstanceOpsDto]? = nil, checkFather: Bool? = nil, rerunType: String? = nil, dependentWay: String? = nil, skipEventListening: Bool? = nil, sonInstanceType: String? = nil, searchCondition: InstanceApiOpsRequest? = nil, optType: String? = nil, operatorName: String? = nil, operatorId: String? = nil, projectId: String? = nil, projectIdent: String? = nil, projectName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil, count: Int64? = nil, requestBaseInfo: ProjectBaseInfoOpsRequest? = nil, isCount: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSonInstancesResponse> {
        self.describeSonInstances(.init(instances: instances, checkFather: checkFather, rerunType: rerunType, dependentWay: dependentWay, skipEventListening: skipEventListening, sonInstanceType: sonInstanceType, searchCondition: searchCondition, optType: optType, operatorName: operatorName, operatorId: operatorId, projectId: projectId, projectIdent: projectIdent, projectName: projectName, pageIndex: pageIndex, pageSize: pageSize, count: count, requestBaseInfo: requestBaseInfo, isCount: isCount), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关联子实例
    @inlinable
    public func describeSonInstances(instances: [InstanceOpsDto]? = nil, checkFather: Bool? = nil, rerunType: String? = nil, dependentWay: String? = nil, skipEventListening: Bool? = nil, sonInstanceType: String? = nil, searchCondition: InstanceApiOpsRequest? = nil, optType: String? = nil, operatorName: String? = nil, operatorId: String? = nil, projectId: String? = nil, projectIdent: String? = nil, projectName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil, count: Int64? = nil, requestBaseInfo: ProjectBaseInfoOpsRequest? = nil, isCount: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSonInstancesResponse {
        try await self.describeSonInstances(.init(instances: instances, checkFather: checkFather, rerunType: rerunType, dependentWay: dependentWay, skipEventListening: skipEventListening, sonInstanceType: sonInstanceType, searchCondition: searchCondition, optType: optType, operatorName: operatorName, operatorId: operatorId, projectId: projectId, projectIdent: projectIdent, projectName: projectName, pageIndex: pageIndex, pageSize: pageSize, count: count, requestBaseInfo: requestBaseInfo, isCount: isCount), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关联子实例
    @inlinable
    public func describeSonInstancesPaginated(_ input: DescribeSonInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceOpsDto])> {
        self.client.paginate(input: input, region: region, command: self.describeSonInstances, logger: logger, on: eventLoop)
    }

    /// 获取关联子实例
    @inlinable @discardableResult
    public func describeSonInstancesPaginated(_ input: DescribeSonInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSonInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSonInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取关联子实例
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceOpsDto`` and ``DescribeSonInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSonInstancesPaginator(_ input: DescribeSonInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSonInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSonInstances, logger: logger, on: eventLoop)
    }
}
