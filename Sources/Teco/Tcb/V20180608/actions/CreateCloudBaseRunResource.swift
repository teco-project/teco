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
    /// CreateCloudBaseRunResource请求参数结构体
    public struct CreateCloudBaseRunResourceRequest: TCRequest {
        /// 环境ID
        public let envId: String

        /// vpc的ID
        public let vpcId: String?

        /// 子网ID列表，当VpcId不为空，SubnetIds也不能为空
        public let subnetIds: [String]?

        public init(envId: String, vpcId: String? = nil, subnetIds: [String]? = nil) {
            self.envId = envId
            self.vpcId = vpcId
            self.subnetIds = subnetIds
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case vpcId = "VpcId"
            case subnetIds = "SubnetIds"
        }
    }

    /// CreateCloudBaseRunResource返回参数结构体
    public struct CreateCloudBaseRunResourceResponse: TCResponse {
        /// 返回集群创建是否成功 succ为成功。并且中间无err
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 开通容器托管的资源
    ///
    /// 开通容器托管的资源，包括集群创建，VPC配置，异步任务创建，镜像托管，Coding等，查看创建结果需要根据DescribeCloudBaseRunResource接口来查看
    @inlinable
    public func createCloudBaseRunResource(_ input: CreateCloudBaseRunResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudBaseRunResourceResponse> {
        self.client.execute(action: "CreateCloudBaseRunResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通容器托管的资源
    ///
    /// 开通容器托管的资源，包括集群创建，VPC配置，异步任务创建，镜像托管，Coding等，查看创建结果需要根据DescribeCloudBaseRunResource接口来查看
    @inlinable
    public func createCloudBaseRunResource(_ input: CreateCloudBaseRunResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudBaseRunResourceResponse {
        try await self.client.execute(action: "CreateCloudBaseRunResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通容器托管的资源
    ///
    /// 开通容器托管的资源，包括集群创建，VPC配置，异步任务创建，镜像托管，Coding等，查看创建结果需要根据DescribeCloudBaseRunResource接口来查看
    @inlinable
    public func createCloudBaseRunResource(envId: String, vpcId: String? = nil, subnetIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudBaseRunResourceResponse> {
        self.createCloudBaseRunResource(.init(envId: envId, vpcId: vpcId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }

    /// 开通容器托管的资源
    ///
    /// 开通容器托管的资源，包括集群创建，VPC配置，异步任务创建，镜像托管，Coding等，查看创建结果需要根据DescribeCloudBaseRunResource接口来查看
    @inlinable
    public func createCloudBaseRunResource(envId: String, vpcId: String? = nil, subnetIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudBaseRunResourceResponse {
        try await self.createCloudBaseRunResource(.init(envId: envId, vpcId: vpcId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }
}
