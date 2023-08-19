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

extension Tke {
    /// DescribeExternalClusterSpec请求参数结构体
    public struct DescribeExternalClusterSpecRequest: TCRequest {
        /// 注册集群ID
        public let clusterId: String

        /// 默认false 获取内网，是否获取外网版注册命令
        public let isExtranet: Bool?

        /// 默认false 不刷新有效时间 ，true刷新有效时间
        public let isRefreshExpirationTime: Bool?

        public init(clusterId: String, isExtranet: Bool? = nil, isRefreshExpirationTime: Bool? = nil) {
            self.clusterId = clusterId
            self.isExtranet = isExtranet
            self.isRefreshExpirationTime = isRefreshExpirationTime
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case isExtranet = "IsExtranet"
            case isRefreshExpirationTime = "IsRefreshExpirationTime"
        }
    }

    /// DescribeExternalClusterSpec返回参数结构体
    public struct DescribeExternalClusterSpecResponse: TCResponse {
        /// 导入第三方集群YAML定义
        public let spec: String

        /// agent.yaml文件过期时间字符串，时区UTC
        public let expiration: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case spec = "Spec"
            case expiration = "Expiration"
            case requestId = "RequestId"
        }
    }

    /// 获取导入第三方集群YAML定义
    @inlinable
    public func describeExternalClusterSpec(_ input: DescribeExternalClusterSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExternalClusterSpecResponse> {
        self.client.execute(action: "DescribeExternalClusterSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取导入第三方集群YAML定义
    @inlinable
    public func describeExternalClusterSpec(_ input: DescribeExternalClusterSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExternalClusterSpecResponse {
        try await self.client.execute(action: "DescribeExternalClusterSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取导入第三方集群YAML定义
    @inlinable
    public func describeExternalClusterSpec(clusterId: String, isExtranet: Bool? = nil, isRefreshExpirationTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExternalClusterSpecResponse> {
        self.describeExternalClusterSpec(.init(clusterId: clusterId, isExtranet: isExtranet, isRefreshExpirationTime: isRefreshExpirationTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取导入第三方集群YAML定义
    @inlinable
    public func describeExternalClusterSpec(clusterId: String, isExtranet: Bool? = nil, isRefreshExpirationTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExternalClusterSpecResponse {
        try await self.describeExternalClusterSpec(.init(clusterId: clusterId, isExtranet: isExtranet, isRefreshExpirationTime: isRefreshExpirationTime), region: region, logger: logger, on: eventLoop)
    }
}
