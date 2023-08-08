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

extension Goosefs {
    /// QueryCrossVpcSubnetSupportForClientNode请求参数结构体
    public struct QueryCrossVpcSubnetSupportForClientNodeRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// QueryCrossVpcSubnetSupportForClientNode返回参数结构体
    public struct QueryCrossVpcSubnetSupportForClientNodeResponse: TCResponseModel {
        /// 支持的子网信息集合
        public let subnetInfoCollection: [SubnetInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subnetInfoCollection = "SubnetInfoCollection"
            case requestId = "RequestId"
        }
    }

    /// 查询客户端节点跨vpc子网访问能力
    @inlinable
    public func queryCrossVpcSubnetSupportForClientNode(_ input: QueryCrossVpcSubnetSupportForClientNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCrossVpcSubnetSupportForClientNodeResponse> {
        self.client.execute(action: "QueryCrossVpcSubnetSupportForClientNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户端节点跨vpc子网访问能力
    @inlinable
    public func queryCrossVpcSubnetSupportForClientNode(_ input: QueryCrossVpcSubnetSupportForClientNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCrossVpcSubnetSupportForClientNodeResponse {
        try await self.client.execute(action: "QueryCrossVpcSubnetSupportForClientNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户端节点跨vpc子网访问能力
    @inlinable
    public func queryCrossVpcSubnetSupportForClientNode(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCrossVpcSubnetSupportForClientNodeResponse> {
        self.queryCrossVpcSubnetSupportForClientNode(.init(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户端节点跨vpc子网访问能力
    @inlinable
    public func queryCrossVpcSubnetSupportForClientNode(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCrossVpcSubnetSupportForClientNodeResponse {
        try await self.queryCrossVpcSubnetSupportForClientNode(.init(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
