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

extension Monitor {
    /// DescribeConditionsTemplateList请求参数结构体
    public struct DescribeConditionsTemplateListRequest: TCPaginatedRequest {
        /// 固定值，为"monitor"
        public let module: String

        /// 视图名，由 [DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 获得。对于云产品监控，取接口出参的 QceNamespacesNew.N.Id，例如 cvm_device
        public let viewName: String?

        /// 根据触发条件模板名称过滤查询
        public let groupName: String?

        /// 根据触发条件模板ID过滤查询
        public let groupID: String?

        /// 分页参数，每页返回的数量，取值1~100，默认20
        public let limit: Int64?

        /// 分页参数，页偏移量，从0开始计数，默认0
        public let offset: Int64?

        /// 指定按更新时间的排序方式，asc=升序, desc=降序
        public let updateTimeOrder: String?

        /// 指定按绑定策略数目的排序方式，asc=升序, desc=降序
        public let policyCountOrder: String?

        public init(module: String, viewName: String? = nil, groupName: String? = nil, groupID: String? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, policyCountOrder: String? = nil) {
            self.module = module
            self.viewName = viewName
            self.groupName = groupName
            self.groupID = groupID
            self.limit = limit
            self.offset = offset
            self.updateTimeOrder = updateTimeOrder
            self.policyCountOrder = policyCountOrder
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case viewName = "ViewName"
            case groupName = "GroupName"
            case groupID = "GroupID"
            case limit = "Limit"
            case offset = "Offset"
            case updateTimeOrder = "UpdateTimeOrder"
            case policyCountOrder = "PolicyCountOrder"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConditionsTemplateListResponse) -> DescribeConditionsTemplateListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(module: self.module, viewName: self.viewName, groupName: self.groupName, groupID: self.groupID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), updateTimeOrder: self.updateTimeOrder, policyCountOrder: self.policyCountOrder)
        }
    }

    /// DescribeConditionsTemplateList返回参数结构体
    public struct DescribeConditionsTemplateListResponse: TCPaginatedResponse {
        /// 模板总数
        public let total: Int64

        /// 模板列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateGroupList: [TemplateGroup]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case templateGroupList = "TemplateGroupList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TemplateGroup`` list from the paginated response.
        public func getItems() -> [TemplateGroup] {
            self.templateGroupList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取条件模板列表
    @inlinable
    public func describeConditionsTemplateList(_ input: DescribeConditionsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConditionsTemplateListResponse> {
        self.client.execute(action: "DescribeConditionsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取条件模板列表
    @inlinable
    public func describeConditionsTemplateList(_ input: DescribeConditionsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConditionsTemplateListResponse {
        try await self.client.execute(action: "DescribeConditionsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取条件模板列表
    @inlinable
    public func describeConditionsTemplateList(module: String, viewName: String? = nil, groupName: String? = nil, groupID: String? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, policyCountOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConditionsTemplateListResponse> {
        self.describeConditionsTemplateList(.init(module: module, viewName: viewName, groupName: groupName, groupID: groupID, limit: limit, offset: offset, updateTimeOrder: updateTimeOrder, policyCountOrder: policyCountOrder), region: region, logger: logger, on: eventLoop)
    }

    /// 获取条件模板列表
    @inlinable
    public func describeConditionsTemplateList(module: String, viewName: String? = nil, groupName: String? = nil, groupID: String? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, policyCountOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConditionsTemplateListResponse {
        try await self.describeConditionsTemplateList(.init(module: module, viewName: viewName, groupName: groupName, groupID: groupID, limit: limit, offset: offset, updateTimeOrder: updateTimeOrder, policyCountOrder: policyCountOrder), region: region, logger: logger, on: eventLoop)
    }

    /// 获取条件模板列表
    @inlinable
    public func describeConditionsTemplateListPaginated(_ input: DescribeConditionsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TemplateGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeConditionsTemplateList, logger: logger, on: eventLoop)
    }

    /// 获取条件模板列表
    @inlinable @discardableResult
    public func describeConditionsTemplateListPaginated(_ input: DescribeConditionsTemplateListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConditionsTemplateListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConditionsTemplateList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取条件模板列表
    ///
    /// - Returns: `AsyncSequence`s of ``TemplateGroup`` and ``DescribeConditionsTemplateListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConditionsTemplateListPaginator(_ input: DescribeConditionsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConditionsTemplateListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConditionsTemplateList, logger: logger, on: eventLoop)
    }
}
