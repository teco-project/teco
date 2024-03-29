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
    /// DescribeApi请求参数结构体
    public struct DescribeApiRequest: TCRequest {
        /// API 所在的服务唯一 ID。
        public let serviceId: String

        /// API 接口唯一 ID。
        public let apiId: String

        public init(serviceId: String, apiId: String) {
            self.serviceId = serviceId
            self.apiId = apiId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case apiId = "ApiId"
        }
    }

    /// DescribeApi返回参数结构体
    public struct DescribeApiResponse: TCResponse {
        /// API 详情。
        public let result: ApiInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询API详情
    ///
    /// 本接口（DescribeApi）用于查询用户 API 网关的 API 接口的详细信息。
    @inlinable
    public func describeApi(_ input: DescribeApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiResponse> {
        self.client.execute(action: "DescribeApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API详情
    ///
    /// 本接口（DescribeApi）用于查询用户 API 网关的 API 接口的详细信息。
    @inlinable
    public func describeApi(_ input: DescribeApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiResponse {
        try await self.client.execute(action: "DescribeApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API详情
    ///
    /// 本接口（DescribeApi）用于查询用户 API 网关的 API 接口的详细信息。
    @inlinable
    public func describeApi(serviceId: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiResponse> {
        self.describeApi(.init(serviceId: serviceId, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API详情
    ///
    /// 本接口（DescribeApi）用于查询用户 API 网关的 API 接口的详细信息。
    @inlinable
    public func describeApi(serviceId: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiResponse {
        try await self.describeApi(.init(serviceId: serviceId, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }
}
