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
    /// DescribeCloudBaseRunPodList请求参数结构体
    public struct DescribeCloudBaseRunPodListRequest: TCRequest {
        /// 环境id
        public let envId: String

        /// 服务名
        public let serverName: String

        /// 版本名
        public let versionName: String

        /// 分页限制
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        /// 容器状态
        public let status: String?

        /// 容器名
        public let podName: String?

        public init(envId: String, serverName: String, versionName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil) {
            self.envId = envId
            self.serverName = serverName
            self.versionName = versionName
            self.limit = limit
            self.offset = offset
            self.status = status
            self.podName = podName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case versionName = "VersionName"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case podName = "PodName"
        }
    }

    /// DescribeCloudBaseRunPodList返回参数结构体
    public struct DescribeCloudBaseRunPodListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询云应用服务版本容器列表
    @inlinable @discardableResult
    public func describeCloudBaseRunPodList(_ input: DescribeCloudBaseRunPodListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunPodListResponse> {
        self.client.execute(action: "DescribeCloudBaseRunPodList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云应用服务版本容器列表
    @inlinable @discardableResult
    public func describeCloudBaseRunPodList(_ input: DescribeCloudBaseRunPodListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunPodListResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunPodList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云应用服务版本容器列表
    @inlinable @discardableResult
    public func describeCloudBaseRunPodList(envId: String, serverName: String, versionName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunPodListResponse> {
        self.describeCloudBaseRunPodList(.init(envId: envId, serverName: serverName, versionName: versionName, limit: limit, offset: offset, status: status, podName: podName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云应用服务版本容器列表
    @inlinable @discardableResult
    public func describeCloudBaseRunPodList(envId: String, serverName: String, versionName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunPodListResponse {
        try await self.describeCloudBaseRunPodList(.init(envId: envId, serverName: serverName, versionName: versionName, limit: limit, offset: offset, status: status, podName: podName), region: region, logger: logger, on: eventLoop)
    }
}
