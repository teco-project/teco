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

extension Cynosdb {
    /// DescribeInstanceParams请求参数结构体
    public struct DescribeInstanceParamsRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 实例ID，支持批量查询
        public let instanceIds: [String]

        /// 参数名搜索条件，支持模糊匹配
        public let paramKeyword: String?

        public init(clusterId: String, instanceIds: [String], paramKeyword: String? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.paramKeyword = paramKeyword
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case paramKeyword = "ParamKeyword"
        }
    }

    /// DescribeInstanceParams返回参数结构体
    public struct DescribeInstanceParamsResponse: TCResponse {
        /// 实例参数列表
        public let items: [InstanceParamItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询实例参数列表
    ///
    /// 该接口(DescribeInstanceParams)查询实例参数列表
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamsResponse> {
        self.client.execute(action: "DescribeInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例参数列表
    ///
    /// 该接口(DescribeInstanceParams)查询实例参数列表
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.client.execute(action: "DescribeInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例参数列表
    ///
    /// 该接口(DescribeInstanceParams)查询实例参数列表
    @inlinable
    public func describeInstanceParams(clusterId: String, instanceIds: [String], paramKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamsResponse> {
        self.describeInstanceParams(.init(clusterId: clusterId, instanceIds: instanceIds, paramKeyword: paramKeyword), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例参数列表
    ///
    /// 该接口(DescribeInstanceParams)查询实例参数列表
    @inlinable
    public func describeInstanceParams(clusterId: String, instanceIds: [String], paramKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.describeInstanceParams(.init(clusterId: clusterId, instanceIds: instanceIds, paramKeyword: paramKeyword), region: region, logger: logger, on: eventLoop)
    }
}
