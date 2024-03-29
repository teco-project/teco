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
    /// DescribeGatewayAllGroupApis请求参数结构体
    public struct DescribeGatewayAllGroupApisRequest: TCRequest {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String

        /// 搜索关键字，支持分组名称或API Path
        public let searchWord: String?

        public init(gatewayDeployGroupId: String, searchWord: String? = nil) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case searchWord = "SearchWord"
        }
    }

    /// DescribeGatewayAllGroupApis返回参数结构体
    public struct DescribeGatewayAllGroupApisResponse: TCResponse {
        /// 网关分组和API列表信息
        public let result: GatewayVo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询网关所有分组下Api列表
    @inlinable
    public func describeGatewayAllGroupApis(_ input: DescribeGatewayAllGroupApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayAllGroupApisResponse> {
        self.client.execute(action: "DescribeGatewayAllGroupApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关所有分组下Api列表
    @inlinable
    public func describeGatewayAllGroupApis(_ input: DescribeGatewayAllGroupApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayAllGroupApisResponse {
        try await self.client.execute(action: "DescribeGatewayAllGroupApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关所有分组下Api列表
    @inlinable
    public func describeGatewayAllGroupApis(gatewayDeployGroupId: String, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayAllGroupApisResponse> {
        self.describeGatewayAllGroupApis(.init(gatewayDeployGroupId: gatewayDeployGroupId, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关所有分组下Api列表
    @inlinable
    public func describeGatewayAllGroupApis(gatewayDeployGroupId: String, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayAllGroupApisResponse {
        try await self.describeGatewayAllGroupApis(.init(gatewayDeployGroupId: gatewayDeployGroupId, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }
}
