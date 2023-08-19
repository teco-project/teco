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

extension Tcb {
    /// DescribeGatewayVersions请求参数结构体
    public struct DescribeGatewayVersionsRequest: TCRequest {
        /// 环境id
        public let envId: String

        /// 网关id
        public let gatewayId: String

        /// 版本名
        public let versionName: String?

        public init(envId: String, gatewayId: String, versionName: String? = nil) {
            self.envId = envId
            self.gatewayId = gatewayId
            self.versionName = versionName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayId = "GatewayId"
            case versionName = "VersionName"
        }
    }

    /// DescribeGatewayVersions返回参数结构体
    public struct DescribeGatewayVersionsResponse: TCResponse {
        /// 网关id
        public let gatewayId: String

        /// 版本总数
        public let totalCount: UInt64

        /// 版本信息详情
        public let gatewayVersionItems: [GatewayVersionItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case totalCount = "TotalCount"
            case gatewayVersionItems = "GatewayVersionItems"
            case requestId = "RequestId"
        }
    }

    /// 查询网关版本信息
    ///
    /// 查询网关版本信息
    /// 暂不鉴权
    @inlinable
    public func describeGatewayVersions(_ input: DescribeGatewayVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayVersionsResponse> {
        self.client.execute(action: "DescribeGatewayVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关版本信息
    ///
    /// 查询网关版本信息
    /// 暂不鉴权
    @inlinable
    public func describeGatewayVersions(_ input: DescribeGatewayVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayVersionsResponse {
        try await self.client.execute(action: "DescribeGatewayVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关版本信息
    ///
    /// 查询网关版本信息
    /// 暂不鉴权
    @inlinable
    public func describeGatewayVersions(envId: String, gatewayId: String, versionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayVersionsResponse> {
        self.describeGatewayVersions(.init(envId: envId, gatewayId: gatewayId, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关版本信息
    ///
    /// 查询网关版本信息
    /// 暂不鉴权
    @inlinable
    public func describeGatewayVersions(envId: String, gatewayId: String, versionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayVersionsResponse {
        try await self.describeGatewayVersions(.init(envId: envId, gatewayId: gatewayId, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }
}
