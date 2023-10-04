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

extension Tione {
    /// DescribeTrainingModels请求参数结构体
    public struct DescribeTrainingModelsRequest: TCPaginatedRequest {
        /// 过滤器
        /// Filter.Name: 枚举值:
        /// keyword (模型名称)
        /// TrainingModelId (模型ID)
        /// ModelVersionType (模型版本类型) 其值Filter.Values支持: NORMAL(通用) ACCELERATE (加速)
        /// TrainingModelSource (模型来源) 其值Filter.Values支持： JOB/COS
        /// ModelFormat（模型格式）其值Filter.Values支持：
        /// PYTORCH/TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML/MMDETECTION/ONNX/HUGGING_FACE
        /// Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100
        /// Filter.Fuzzy取值：true/false，是否支持模糊匹配
        public let filters: [Filter]?

        /// 排序字段，默认CreateTime
        public let orderField: String?

        /// 排序方式，ASC/DESC，默认DESC
        public let order: String?

        /// 偏移量
        public let offset: Int64?

        /// 返回结果数量
        public let limit: Int64?

        /// 标签过滤
        public let tagFilters: [TagFilter]?

        /// 是否同时返回模型版本列表
        public let withModelVersions: Bool?

        public init(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: Int64? = nil, limit: Int64? = nil, tagFilters: [TagFilter]? = nil, withModelVersions: Bool? = nil) {
            self.filters = filters
            self.orderField = orderField
            self.order = order
            self.offset = offset
            self.limit = limit
            self.tagFilters = tagFilters
            self.withModelVersions = withModelVersions
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case orderField = "OrderField"
            case order = "Order"
            case offset = "Offset"
            case limit = "Limit"
            case tagFilters = "TagFilters"
            case withModelVersions = "WithModelVersions"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTrainingModelsResponse) -> DescribeTrainingModelsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, orderField: self.orderField, order: self.order, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagFilters: self.tagFilters, withModelVersions: self.withModelVersions)
        }
    }

    /// DescribeTrainingModels返回参数结构体
    public struct DescribeTrainingModelsResponse: TCPaginatedResponse {
        /// 模型列表
        public let trainingModels: [TrainingModelDTO]

        /// 模型总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trainingModels = "TrainingModels"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TrainingModelDTO`` list from the paginated response.
        public func getItems() -> [TrainingModelDTO] {
            self.trainingModels
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 模型列表
    @inlinable
    public func describeTrainingModels(_ input: DescribeTrainingModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingModelsResponse> {
        self.client.execute(action: "DescribeTrainingModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模型列表
    @inlinable
    public func describeTrainingModels(_ input: DescribeTrainingModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingModelsResponse {
        try await self.client.execute(action: "DescribeTrainingModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模型列表
    @inlinable
    public func describeTrainingModels(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: Int64? = nil, limit: Int64? = nil, tagFilters: [TagFilter]? = nil, withModelVersions: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingModelsResponse> {
        self.describeTrainingModels(.init(filters: filters, orderField: orderField, order: order, offset: offset, limit: limit, tagFilters: tagFilters, withModelVersions: withModelVersions), region: region, logger: logger, on: eventLoop)
    }

    /// 模型列表
    @inlinable
    public func describeTrainingModels(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: Int64? = nil, limit: Int64? = nil, tagFilters: [TagFilter]? = nil, withModelVersions: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingModelsResponse {
        try await self.describeTrainingModels(.init(filters: filters, orderField: orderField, order: order, offset: offset, limit: limit, tagFilters: tagFilters, withModelVersions: withModelVersions), region: region, logger: logger, on: eventLoop)
    }

    /// 模型列表
    @inlinable
    public func describeTrainingModelsPaginated(_ input: DescribeTrainingModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TrainingModelDTO])> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingModels, logger: logger, on: eventLoop)
    }

    /// 模型列表
    @inlinable @discardableResult
    public func describeTrainingModelsPaginated(_ input: DescribeTrainingModelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrainingModelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingModels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 模型列表
    ///
    /// - Returns: `AsyncSequence`s of ``TrainingModelDTO`` and ``DescribeTrainingModelsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrainingModelsPaginator(_ input: DescribeTrainingModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrainingModelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrainingModels, logger: logger, on: eventLoop)
    }
}
