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

extension Tem {
    /// DescribeNamespaces请求参数结构体
    public struct DescribeNamespacesRequest: TCRequestModel {
        /// 分页limit
        public let limit: Int64?

        /// 分页下标
        public let offset: Int64?

        /// 来源source
        public let sourceChannel: Int64?

        public init(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil) {
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DescribeNamespaces返回参数结构体
    public struct DescribeNamespacesResponse: TCResponseModel {
        /// 返回结果
        public let result: NamespacePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.describeNamespaces(DescribeNamespacesRequest(limit: limit, offset: offset, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.describeNamespaces(DescribeNamespacesRequest(limit: limit, offset: offset, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
