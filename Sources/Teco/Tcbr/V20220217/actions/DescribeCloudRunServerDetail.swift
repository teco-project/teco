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

extension Tcbr {
    /// DescribeCloudRunServerDetail请求参数结构体
    public struct DescribeCloudRunServerDetailRequest: TCRequest {
        /// 环境Id
        public let envId: String

        /// 服务名
        public let serverName: String

        public init(envId: String, serverName: String) {
            self.envId = envId
            self.serverName = serverName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
        }
    }

    /// DescribeCloudRunServerDetail返回参数结构体
    public struct DescribeCloudRunServerDetailResponse: TCResponse {
        /// 服务基本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baseInfo: ServerBaseInfo?

        /// 服务配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serverConfig: ServerBaseConfig?

        /// 在线版本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onlineVersionInfos: [OnlineVersionInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baseInfo = "BaseInfo"
            case serverConfig = "ServerConfig"
            case onlineVersionInfos = "OnlineVersionInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询云托管服务详情
    @inlinable
    public func describeCloudRunServerDetail(_ input: DescribeCloudRunServerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudRunServerDetailResponse> {
        self.client.execute(action: "DescribeCloudRunServerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云托管服务详情
    @inlinable
    public func describeCloudRunServerDetail(_ input: DescribeCloudRunServerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRunServerDetailResponse {
        try await self.client.execute(action: "DescribeCloudRunServerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云托管服务详情
    @inlinable
    public func describeCloudRunServerDetail(envId: String, serverName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudRunServerDetailResponse> {
        self.describeCloudRunServerDetail(.init(envId: envId, serverName: serverName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云托管服务详情
    @inlinable
    public func describeCloudRunServerDetail(envId: String, serverName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRunServerDetailResponse {
        try await self.describeCloudRunServerDetail(.init(envId: envId, serverName: serverName), region: region, logger: logger, on: eventLoop)
    }
}
