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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcr {
    /// DescribeInstanceAllNamespaces请求参数结构体
    public struct DescribeInstanceAllNamespacesRequest: TCRequestModel {
        /// 每页个数
        public let limit: Int64?

        /// 起始偏移位置
        public let offset: Int64?

        public init(limit: Int64? = nil, offset: Int64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeInstanceAllNamespaces返回参数结构体
    public struct DescribeInstanceAllNamespacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询所有实例命名空间
    ///
    /// 查询所有实例命名空间列表
    @inlinable @discardableResult
    public func describeInstanceAllNamespaces(_ input: DescribeInstanceAllNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAllNamespacesResponse> {
        self.client.execute(action: "DescribeInstanceAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有实例命名空间
    ///
    /// 查询所有实例命名空间列表
    @inlinable @discardableResult
    public func describeInstanceAllNamespaces(_ input: DescribeInstanceAllNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAllNamespacesResponse {
        try await self.client.execute(action: "DescribeInstanceAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有实例命名空间
    ///
    /// 查询所有实例命名空间列表
    @inlinable @discardableResult
    public func describeInstanceAllNamespaces(limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAllNamespacesResponse> {
        self.describeInstanceAllNamespaces(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有实例命名空间
    ///
    /// 查询所有实例命名空间列表
    @inlinable @discardableResult
    public func describeInstanceAllNamespaces(limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAllNamespacesResponse {
        try await self.describeInstanceAllNamespaces(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
