//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcbr {
    /// DescribeCloudRunServers请求参数结构体
    public struct DescribeCloudRunServersRequest: TCRequestModel {
        /// 环境Id
        public let envId: String

        /// 默认为9， 最大为30
        /// 不传或传0时 取默认9
        /// 大于30时取30
        public let pageSize: Int64?

        /// 不传或传0时 会默认为1
        public let pageNum: Int64?

        public init(envId: String, pageSize: Int64? = nil, pageNum: Int64? = nil) {
            self.envId = envId
            self.pageSize = pageSize
            self.pageNum = pageNum
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
        }
    }

    /// DescribeCloudRunServers返回参数结构体
    public struct DescribeCloudRunServersResponse: TCResponseModel {
        /// 服务列表
        public let serverList: [ServerBaseInfo]

        /// 服务总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serverList = "ServerList"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询云托管服务列表
    ///
    /// 查询云托管服务列表接口
    @inlinable
    public func describeCloudRunServers(_ input: DescribeCloudRunServersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudRunServersResponse > {
        self.client.execute(action: "DescribeCloudRunServers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云托管服务列表
    ///
    /// 查询云托管服务列表接口
    @inlinable
    public func describeCloudRunServers(_ input: DescribeCloudRunServersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRunServersResponse {
        try await self.client.execute(action: "DescribeCloudRunServers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云托管服务列表
    ///
    /// 查询云托管服务列表接口
    @inlinable
    public func describeCloudRunServers(envId: String, pageSize: Int64? = nil, pageNum: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudRunServersResponse > {
        self.describeCloudRunServers(DescribeCloudRunServersRequest(envId: envId, pageSize: pageSize, pageNum: pageNum), logger: logger, on: eventLoop)
    }

    /// 查询云托管服务列表
    ///
    /// 查询云托管服务列表接口
    @inlinable
    public func describeCloudRunServers(envId: String, pageSize: Int64? = nil, pageNum: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRunServersResponse {
        try await self.describeCloudRunServers(DescribeCloudRunServersRequest(envId: envId, pageSize: pageSize, pageNum: pageNum), logger: logger, on: eventLoop)
    }
}
