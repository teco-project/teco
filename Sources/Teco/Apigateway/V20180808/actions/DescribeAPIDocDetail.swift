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

extension Apigateway {
    /// DescribeAPIDocDetail请求参数结构体
    public struct DescribeAPIDocDetailRequest: TCRequestModel {
        /// API文档ID
        public let apiDocId: String

        public init(apiDocId: String) {
            self.apiDocId = apiDocId
        }

        enum CodingKeys: String, CodingKey {
            case apiDocId = "ApiDocId"
        }
    }

    /// DescribeAPIDocDetail返回参数结构体
    public struct DescribeAPIDocDetailResponse: TCResponseModel {
        /// API文档详细信息
        public let result: APIDocInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询 API 文档详情
    @inlinable
    public func describeAPIDocDetail(_ input: DescribeAPIDocDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAPIDocDetailResponse> {
        self.client.execute(action: "DescribeAPIDocDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 API 文档详情
    @inlinable
    public func describeAPIDocDetail(_ input: DescribeAPIDocDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAPIDocDetailResponse {
        try await self.client.execute(action: "DescribeAPIDocDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 API 文档详情
    @inlinable
    public func describeAPIDocDetail(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAPIDocDetailResponse> {
        self.describeAPIDocDetail(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 API 文档详情
    @inlinable
    public func describeAPIDocDetail(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAPIDocDetailResponse {
        try await self.describeAPIDocDetail(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }
}
