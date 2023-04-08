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

import TecoPaginationHelpers

extension Iotvideo {
    /// DescribeAIModels请求参数结构体
    public struct DescribeAIModelsRequest: TCPaginatedRequest {
        /// 模型ID
        public let modelId: String

        /// 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        public let status: UInt64

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的大小，最大100
        public let limit: UInt64

        public init(modelId: String, status: UInt64, offset: UInt64, limit: UInt64) {
            self.modelId = modelId
            self.status = status
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAIModelsResponse) -> DescribeAIModelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAIModelsRequest(modelId: self.modelId, status: self.status, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAIModels返回参数结构体
    public struct DescribeAIModelsResponse: TCPaginatedResponse {
        /// AI模型数量
        public let totalCount: UInt64

        /// AI模型信息数组
        public let models: [AIModelInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case models = "Models"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AIModelInfo] {
            self.models
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(_ input: DescribeAIModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelsResponse> {
        self.client.execute(action: "DescribeAIModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(_ input: DescribeAIModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelsResponse {
        try await self.client.execute(action: "DescribeAIModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(modelId: String, status: UInt64, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelsResponse> {
        self.describeAIModels(.init(modelId: modelId, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(modelId: String, status: UInt64, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelsResponse {
        try await self.describeAIModels(.init(modelId: modelId, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取AI模型列表
    @inlinable
    public func describeAIModelsPaginated(_ input: DescribeAIModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AIModelInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAIModels, logger: logger, on: eventLoop)
    }

    /// 拉取AI模型列表
    @inlinable @discardableResult
    public func describeAIModelsPaginated(_ input: DescribeAIModelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAIModelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAIModels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取AI模型列表
    ///
    /// - Returns: `AsyncSequence`s of `AIModelInfo` and `DescribeAIModelsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAIModelsPaginator(_ input: DescribeAIModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAIModelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAIModels, logger: logger, on: eventLoop)
    }
}
