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

extension Tsf {
    /// DescribeApiVersions请求参数结构体
    public struct DescribeApiVersionsRequest: TCRequest {
        /// 微服务ID
        public let microserviceId: String

        /// API 请求路径
        public let path: String?

        /// 请求方法
        public let method: String?

        public init(microserviceId: String, path: String? = nil, method: String? = nil) {
            self.microserviceId = microserviceId
            self.path = path
            self.method = method
        }

        enum CodingKeys: String, CodingKey {
            case microserviceId = "MicroserviceId"
            case path = "Path"
            case method = "Method"
        }
    }

    /// DescribeApiVersions返回参数结构体
    public struct DescribeApiVersionsResponse: TCResponse {
        /// API版本列表
        public let result: [ApiVersionArray]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询API版本
    ///
    /// 查询API 版本
    @inlinable
    public func describeApiVersions(_ input: DescribeApiVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiVersionsResponse> {
        self.client.execute(action: "DescribeApiVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API版本
    ///
    /// 查询API 版本
    @inlinable
    public func describeApiVersions(_ input: DescribeApiVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiVersionsResponse {
        try await self.client.execute(action: "DescribeApiVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API版本
    ///
    /// 查询API 版本
    @inlinable
    public func describeApiVersions(microserviceId: String, path: String? = nil, method: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiVersionsResponse> {
        self.describeApiVersions(.init(microserviceId: microserviceId, path: path, method: method), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API版本
    ///
    /// 查询API 版本
    @inlinable
    public func describeApiVersions(microserviceId: String, path: String? = nil, method: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiVersionsResponse {
        try await self.describeApiVersions(.init(microserviceId: microserviceId, path: path, method: method), region: region, logger: logger, on: eventLoop)
    }
}
