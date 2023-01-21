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

extension Iotvideo {
    /// DescribeAIModelApplications请求参数结构体
    public struct DescribeAIModelApplicationsRequest: TCRequestModel {
        /// 模型ID
        public let modelId: String

        /// 分页的大小，最大100
        public let limit: UInt64

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 产品ID
        public let productId: String?

        public init(modelId: String, limit: UInt64, offset: UInt64, productId: String? = nil) {
            self.modelId = modelId
            self.limit = limit
            self.offset = offset
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case limit = "Limit"
            case offset = "Offset"
            case productId = "ProductId"
        }
    }

    /// DescribeAIModelApplications返回参数结构体
    public struct DescribeAIModelApplicationsResponse: TCResponseModel {
        /// 申请记录数量
        public let totalCount: UInt64

        /// 申请记录数组
        public let applications: [AIModelApplication]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applications = "Applications"
            case requestId = "RequestId"
        }
    }

    /// 用户AI模型申请记录
    @inlinable
    public func describeAIModelApplications(_ input: DescribeAIModelApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelApplicationsResponse> {
        self.client.execute(action: "DescribeAIModelApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户AI模型申请记录
    @inlinable
    public func describeAIModelApplications(_ input: DescribeAIModelApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelApplicationsResponse {
        try await self.client.execute(action: "DescribeAIModelApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户AI模型申请记录
    @inlinable
    public func describeAIModelApplications(modelId: String, limit: UInt64, offset: UInt64, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelApplicationsResponse> {
        self.describeAIModelApplications(DescribeAIModelApplicationsRequest(modelId: modelId, limit: limit, offset: offset, productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 用户AI模型申请记录
    @inlinable
    public func describeAIModelApplications(modelId: String, limit: UInt64, offset: UInt64, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelApplicationsResponse {
        try await self.describeAIModelApplications(DescribeAIModelApplicationsRequest(modelId: modelId, limit: limit, offset: offset, productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
