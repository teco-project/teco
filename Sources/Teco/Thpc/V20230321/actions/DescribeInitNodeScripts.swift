//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Thpc {
    /// DescribeInitNodeScripts请求参数结构体
    public struct DescribeInitNodeScriptsRequest: TCRequestModel {
        /// 集群ID。
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeInitNodeScripts返回参数结构体
    public struct DescribeInitNodeScriptsResponse: TCResponseModel {
        /// 节点初始化脚本列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let initNodeScriptSet: [NodeScript]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case initNodeScriptSet = "InitNodeScriptSet"
            case requestId = "RequestId"
        }
    }

    /// 查询节点初始化脚本列表
    ///
    /// 本接口 (DescribeInitNodeScripts) 用于查询节点初始化脚本列表。
    @inlinable
    public func describeInitNodeScripts(_ input: DescribeInitNodeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInitNodeScriptsResponse> {
        self.client.execute(action: "DescribeInitNodeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询节点初始化脚本列表
    ///
    /// 本接口 (DescribeInitNodeScripts) 用于查询节点初始化脚本列表。
    @inlinable
    public func describeInitNodeScripts(_ input: DescribeInitNodeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInitNodeScriptsResponse {
        try await self.client.execute(action: "DescribeInitNodeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询节点初始化脚本列表
    ///
    /// 本接口 (DescribeInitNodeScripts) 用于查询节点初始化脚本列表。
    @inlinable
    public func describeInitNodeScripts(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInitNodeScriptsResponse> {
        self.describeInitNodeScripts(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点初始化脚本列表
    ///
    /// 本接口 (DescribeInitNodeScripts) 用于查询节点初始化脚本列表。
    @inlinable
    public func describeInitNodeScripts(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInitNodeScriptsResponse {
        try await self.describeInitNodeScripts(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
