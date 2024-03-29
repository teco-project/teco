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

extension Tcr {
    /// DescribeInternalEndpoints请求参数结构体
    public struct DescribeInternalEndpointsRequest: TCRequest {
        /// 实例Id
        public let registryId: String

        public init(registryId: String) {
            self.registryId = registryId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }

    /// DescribeInternalEndpoints返回参数结构体
    public struct DescribeInternalEndpointsResponse: TCResponse {
        /// 内网接入信息的列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessVpcSet: [AccessVpc]?

        /// 内网接入总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessVpcSet = "AccessVpcSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询实例内网访问VPC链接
    @inlinable
    public func describeInternalEndpoints(_ input: DescribeInternalEndpointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternalEndpointsResponse> {
        self.client.execute(action: "DescribeInternalEndpoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例内网访问VPC链接
    @inlinable
    public func describeInternalEndpoints(_ input: DescribeInternalEndpointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternalEndpointsResponse {
        try await self.client.execute(action: "DescribeInternalEndpoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例内网访问VPC链接
    @inlinable
    public func describeInternalEndpoints(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternalEndpointsResponse> {
        self.describeInternalEndpoints(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例内网访问VPC链接
    @inlinable
    public func describeInternalEndpoints(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternalEndpointsResponse {
        try await self.describeInternalEndpoints(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }
}
