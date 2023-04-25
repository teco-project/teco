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

extension Tdcpg {
    /// ModifyClusterName请求参数结构体
    public struct ModifyClusterNameRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."
        public let clusterName: String

        public init(clusterId: String, clusterName: String) {
            self.clusterId = clusterId
            self.clusterName = clusterName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
        }
    }

    /// ModifyClusterName返回参数结构体
    public struct ModifyClusterNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改集群名字
    @inlinable @discardableResult
    public func modifyClusterName(_ input: ModifyClusterNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterNameResponse> {
        self.client.execute(action: "ModifyClusterName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群名字
    @inlinable @discardableResult
    public func modifyClusterName(_ input: ModifyClusterNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterNameResponse {
        try await self.client.execute(action: "ModifyClusterName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群名字
    @inlinable @discardableResult
    public func modifyClusterName(clusterId: String, clusterName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterNameResponse> {
        self.modifyClusterName(.init(clusterId: clusterId, clusterName: clusterName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改集群名字
    @inlinable @discardableResult
    public func modifyClusterName(clusterId: String, clusterName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterNameResponse {
        try await self.modifyClusterName(.init(clusterId: clusterId, clusterName: clusterName), region: region, logger: logger, on: eventLoop)
    }
}
