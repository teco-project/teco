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

extension Gaap {
    /// DescribeResourcesByTag请求参数结构体
    public struct DescribeResourcesByTagRequest: TCRequest {
        /// 标签键。
        public let tagKey: String

        /// 标签值。
        public let tagValue: String

        /// 资源类型，其中：
        /// Proxy表示通道；
        /// ProxyGroup表示通道组；
        /// RealServer表示源站。
        /// 不指定该字段则查询该标签下所有资源。
        public let resourceType: String?

        public init(tagKey: String, tagValue: String, resourceType: String? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.resourceType = resourceType
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case resourceType = "ResourceType"
        }
    }

    /// DescribeResourcesByTag返回参数结构体
    public struct DescribeResourcesByTagResponse: TCResponse {
        /// 资源总数
        public let totalCount: Int64

        /// 标签对应的资源列表
        public let resourceSet: [TagResourceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resourceSet = "ResourceSet"
            case requestId = "RequestId"
        }
    }

    /// 根据标签拉取资源列表
    ///
    /// 本接口（DescribeResourcesByTag）用于根据标签来查询对应的资源信息，包括通道，通道组和源站。
    @inlinable
    public func describeResourcesByTag(_ input: DescribeResourcesByTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByTagResponse> {
        self.client.execute(action: "DescribeResourcesByTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据标签拉取资源列表
    ///
    /// 本接口（DescribeResourcesByTag）用于根据标签来查询对应的资源信息，包括通道，通道组和源站。
    @inlinable
    public func describeResourcesByTag(_ input: DescribeResourcesByTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByTagResponse {
        try await self.client.execute(action: "DescribeResourcesByTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据标签拉取资源列表
    ///
    /// 本接口（DescribeResourcesByTag）用于根据标签来查询对应的资源信息，包括通道，通道组和源站。
    @inlinable
    public func describeResourcesByTag(tagKey: String, tagValue: String, resourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByTagResponse> {
        self.describeResourcesByTag(.init(tagKey: tagKey, tagValue: tagValue, resourceType: resourceType), region: region, logger: logger, on: eventLoop)
    }

    /// 根据标签拉取资源列表
    ///
    /// 本接口（DescribeResourcesByTag）用于根据标签来查询对应的资源信息，包括通道，通道组和源站。
    @inlinable
    public func describeResourcesByTag(tagKey: String, tagValue: String, resourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByTagResponse {
        try await self.describeResourcesByTag(.init(tagKey: tagKey, tagValue: tagValue, resourceType: resourceType), region: region, logger: logger, on: eventLoop)
    }
}
