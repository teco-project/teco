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

extension Tione {
    /// DescribeNotebookInstances请求参数结构体
    public struct DescribeNotebookInstancesRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        /// 排序规则。默认取Descending
        /// Descending 按更新时间降序
        /// Ascending 按更新时间升序
        public let sortOrder: String?

        /// 过滤条件。
        /// instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        /// search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        /// lifecycle-name - String - 是否必填：否 -（过滤条件）按照生命周期脚本名称过滤。
        /// default-code-repo-name - String - 是否必填：否 -（过滤条件）按照默认存储库名称过滤。
        /// additional-code-repo-name - String - 是否必填：否 -（过滤条件）按照其他存储库名称过滤。
        /// billing-status - String - 是否必填：否 - （过滤条件）按照计费状态过滤，可取以下值
        ///    StorageOnly：仅存储计费的实例
        ///    Computing：计算和存储都计费的实例
        public let filters: [Filter]?

        /// 【废弃字段】排序字段
        public let sortBy: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, sortOrder: String? = nil, filters: [Filter]? = nil, sortBy: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.sortOrder = sortOrder
            self.filters = filters
            self.sortBy = sortBy
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case sortOrder = "SortOrder"
            case filters = "Filters"
            case sortBy = "SortBy"
        }
    }

    /// DescribeNotebookInstances返回参数结构体
    public struct DescribeNotebookInstancesResponse: TCResponseModel {
        /// Notebook实例列表
        public let notebookInstanceSet: [NotebookInstanceSummary]

        /// Notebook实例总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookInstanceSet = "NotebookInstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询Notebook实例列表
    @inlinable
    public func describeNotebookInstances(_ input: DescribeNotebookInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNotebookInstancesResponse > {
        self.client.execute(action: "DescribeNotebookInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Notebook实例列表
    @inlinable
    public func describeNotebookInstances(_ input: DescribeNotebookInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookInstancesResponse {
        try await self.client.execute(action: "DescribeNotebookInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Notebook实例列表
    @inlinable
    public func describeNotebookInstances(offset: UInt64? = nil, limit: UInt64? = nil, sortOrder: String? = nil, filters: [Filter]? = nil, sortBy: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNotebookInstancesResponse > {
        self.describeNotebookInstances(DescribeNotebookInstancesRequest(offset: offset, limit: limit, sortOrder: sortOrder, filters: filters, sortBy: sortBy), logger: logger, on: eventLoop)
    }

    /// 查询Notebook实例列表
    @inlinable
    public func describeNotebookInstances(offset: UInt64? = nil, limit: UInt64? = nil, sortOrder: String? = nil, filters: [Filter]? = nil, sortBy: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookInstancesResponse {
        try await self.describeNotebookInstances(DescribeNotebookInstancesRequest(offset: offset, limit: limit, sortOrder: sortOrder, filters: filters, sortBy: sortBy), logger: logger, on: eventLoop)
    }
}
