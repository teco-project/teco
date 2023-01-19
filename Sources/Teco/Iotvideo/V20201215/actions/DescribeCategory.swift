//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeCategory请求参数结构体
    public struct DescribeCategoryRequest: TCRequestModel {
        /// Category ID。
        public let id: Int64

        public init(id: Int64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeCategory返回参数结构体
    public struct DescribeCategoryResponse: TCResponseModel {
        /// Category详情
        public let data: ProductTemplate

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取Category详情
    @inlinable
    public func describeCategory(_ input: DescribeCategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCategoryResponse> {
        self.client.execute(action: "DescribeCategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Category详情
    @inlinable
    public func describeCategory(_ input: DescribeCategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCategoryResponse {
        try await self.client.execute(action: "DescribeCategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Category详情
    @inlinable
    public func describeCategory(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCategoryResponse> {
        self.describeCategory(DescribeCategoryRequest(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Category详情
    @inlinable
    public func describeCategory(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCategoryResponse {
        try await self.describeCategory(DescribeCategoryRequest(id: id), region: region, logger: logger, on: eventLoop)
    }
}
