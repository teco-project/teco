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

extension Monitor {
    /// DescribePolicyGroupList请求参数结构体
    public struct DescribePolicyGroupListRequest: TCPaginatedRequest {
        /// 固定值，为"monitor"
        public let module: String

        /// 分页参数，每页返回的数量，取值1~100
        public let limit: Int64

        /// 分页参数，页偏移量，从0开始计数
        public let offset: Int64

        /// 按策略名搜索
        public let like: String?

        /// 实例分组id
        public let instanceGroupId: Int64?

        /// 按更新时间排序, asc 或者 desc
        public let updateTimeOrder: String?

        /// 项目id列表
        public let projectIds: [Int64]?

        /// 告警策略类型列表
        public let viewNames: [String]?

        /// 是否过滤无接收人策略组, 1表示过滤, 0表示不过滤
        public let filterUnuseReceiver: Int64?

        /// 过滤条件, 接收组列表
        public let receivers: [String]?

        /// 过滤条件, 接收人列表
        public let receiverUserList: [String]?

        /// 维度组合字段(json字符串), 例如[[{"name":"unInstanceId","value":"ins-6e4b2aaa"}]]
        public let dimensions: String?

        /// 模板策略组id, 多个id用逗号分隔
        public let conditionTempGroupId: String?

        /// 过滤条件, 接收人或者接收组, user表示接收人, group表示接收组
        public let receiverType: String?

        /// 过滤条件，告警策略是否已启动或停止
        public let isOpen: Bool?

        public init(module: String, limit: Int64, offset: Int64, like: String? = nil, instanceGroupId: Int64? = nil, updateTimeOrder: String? = nil, projectIds: [Int64]? = nil, viewNames: [String]? = nil, filterUnuseReceiver: Int64? = nil, receivers: [String]? = nil, receiverUserList: [String]? = nil, dimensions: String? = nil, conditionTempGroupId: String? = nil, receiverType: String? = nil, isOpen: Bool? = nil) {
            self.module = module
            self.limit = limit
            self.offset = offset
            self.like = like
            self.instanceGroupId = instanceGroupId
            self.updateTimeOrder = updateTimeOrder
            self.projectIds = projectIds
            self.viewNames = viewNames
            self.filterUnuseReceiver = filterUnuseReceiver
            self.receivers = receivers
            self.receiverUserList = receiverUserList
            self.dimensions = dimensions
            self.conditionTempGroupId = conditionTempGroupId
            self.receiverType = receiverType
            self.isOpen = isOpen
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case limit = "Limit"
            case offset = "Offset"
            case like = "Like"
            case instanceGroupId = "InstanceGroupId"
            case updateTimeOrder = "UpdateTimeOrder"
            case projectIds = "ProjectIds"
            case viewNames = "ViewNames"
            case filterUnuseReceiver = "FilterUnuseReceiver"
            case receivers = "Receivers"
            case receiverUserList = "ReceiverUserList"
            case dimensions = "Dimensions"
            case conditionTempGroupId = "ConditionTempGroupId"
            case receiverType = "ReceiverType"
            case isOpen = "IsOpen"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePolicyGroupListResponse) -> DescribePolicyGroupListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePolicyGroupListRequest(module: self.module, limit: self.limit, offset: self.offset + .init(response.getItems().count), like: self.like, instanceGroupId: self.instanceGroupId, updateTimeOrder: self.updateTimeOrder, projectIds: self.projectIds, viewNames: self.viewNames, filterUnuseReceiver: self.filterUnuseReceiver, receivers: self.receivers, receiverUserList: self.receiverUserList, dimensions: self.dimensions, conditionTempGroupId: self.conditionTempGroupId, receiverType: self.receiverType, isOpen: self.isOpen)
        }
    }

    /// DescribePolicyGroupList返回参数结构体
    public struct DescribePolicyGroupListResponse: TCPaginatedResponse {
        /// 策略组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupList: [DescribePolicyGroupListGroup]?

        /// 策略组总数
        public let total: Int64

        /// 备注信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let warning: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupList = "GroupList"
            case total = "Total"
            case warning = "Warning"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribePolicyGroupListGroup] {
            self.groupList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基础策略告警组列表
    @inlinable
    public func describePolicyGroupList(_ input: DescribePolicyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyGroupListResponse> {
        self.client.execute(action: "DescribePolicyGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基础策略告警组列表
    @inlinable
    public func describePolicyGroupList(_ input: DescribePolicyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyGroupListResponse {
        try await self.client.execute(action: "DescribePolicyGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基础策略告警组列表
    @inlinable
    public func describePolicyGroupList(module: String, limit: Int64, offset: Int64, like: String? = nil, instanceGroupId: Int64? = nil, updateTimeOrder: String? = nil, projectIds: [Int64]? = nil, viewNames: [String]? = nil, filterUnuseReceiver: Int64? = nil, receivers: [String]? = nil, receiverUserList: [String]? = nil, dimensions: String? = nil, conditionTempGroupId: String? = nil, receiverType: String? = nil, isOpen: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyGroupListResponse> {
        self.describePolicyGroupList(.init(module: module, limit: limit, offset: offset, like: like, instanceGroupId: instanceGroupId, updateTimeOrder: updateTimeOrder, projectIds: projectIds, viewNames: viewNames, filterUnuseReceiver: filterUnuseReceiver, receivers: receivers, receiverUserList: receiverUserList, dimensions: dimensions, conditionTempGroupId: conditionTempGroupId, receiverType: receiverType, isOpen: isOpen), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基础策略告警组列表
    @inlinable
    public func describePolicyGroupList(module: String, limit: Int64, offset: Int64, like: String? = nil, instanceGroupId: Int64? = nil, updateTimeOrder: String? = nil, projectIds: [Int64]? = nil, viewNames: [String]? = nil, filterUnuseReceiver: Int64? = nil, receivers: [String]? = nil, receiverUserList: [String]? = nil, dimensions: String? = nil, conditionTempGroupId: String? = nil, receiverType: String? = nil, isOpen: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyGroupListResponse {
        try await self.describePolicyGroupList(.init(module: module, limit: limit, offset: offset, like: like, instanceGroupId: instanceGroupId, updateTimeOrder: updateTimeOrder, projectIds: projectIds, viewNames: viewNames, filterUnuseReceiver: filterUnuseReceiver, receivers: receivers, receiverUserList: receiverUserList, dimensions: dimensions, conditionTempGroupId: conditionTempGroupId, receiverType: receiverType, isOpen: isOpen), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基础策略告警组列表
    @inlinable
    public func describePolicyGroupListPaginated(_ input: DescribePolicyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribePolicyGroupListGroup])> {
        self.client.paginate(input: input, region: region, command: self.describePolicyGroupList, logger: logger, on: eventLoop)
    }

    /// 获取基础策略告警组列表
    @inlinable @discardableResult
    public func describePolicyGroupListPaginated(_ input: DescribePolicyGroupListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePolicyGroupListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePolicyGroupList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基础策略告警组列表
    ///
    /// - Returns: `AsyncSequence`s of `DescribePolicyGroupListGroup` and `DescribePolicyGroupListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePolicyGroupListPaginator(_ input: DescribePolicyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePolicyGroupListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePolicyGroupList, logger: logger, on: eventLoop)
    }
}
