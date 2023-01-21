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

extension Tdmq {
    /// DescribeRocketMQNamespaces请求参数结构体
    public struct DescribeRocketMQNamespacesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        /// 按名称搜索
        public let nameKeyword: String?

        public init(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.nameKeyword = nameKeyword
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case nameKeyword = "NameKeyword"
        }
    }

    /// DescribeRocketMQNamespaces返回参数结构体
    public struct DescribeRocketMQNamespacesResponse: TCResponseModel {
        /// 命名空间列表
        public let namespaces: [RocketMQNamespace]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case namespaces = "Namespaces"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQNamespacesResponse> {
        self.client.execute(action: "DescribeRocketMQNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQNamespacesResponse {
        try await self.client.execute(action: "DescribeRocketMQNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQNamespacesResponse> {
        self.describeRocketMQNamespaces(DescribeRocketMQNamespacesRequest(clusterId: clusterId, offset: offset, limit: limit, nameKeyword: nameKeyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQNamespacesResponse {
        try await self.describeRocketMQNamespaces(DescribeRocketMQNamespacesRequest(clusterId: clusterId, offset: offset, limit: limit, nameKeyword: nameKeyword), region: region, logger: logger, on: eventLoop)
    }
}
