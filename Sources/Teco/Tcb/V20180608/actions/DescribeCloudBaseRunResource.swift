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
    /// DescribeCloudBaseRunResource请求参数结构体
    public struct DescribeCloudBaseRunResourceRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        public init(envId: String) {
            self.envId = envId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }

    /// DescribeCloudBaseRunResource返回参数结构体
    public struct DescribeCloudBaseRunResourceResponse: TCResponseModel {
        /// 集群状态(creating/succ)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterStatus: String?

        /// 虚拟集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virtualClusterId: String?

        /// vpc id信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 地域信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 子网信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetIds: [CloudBaseRunVpcSubnet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterStatus = "ClusterStatus"
            case virtualClusterId = "VirtualClusterId"
            case vpcId = "VpcId"
            case region = "Region"
            case subnetIds = "SubnetIds"
            case requestId = "RequestId"
        }
    }

    /// 查看容器托管的资源状态
    ///
    /// 查看容器托管的集群状态
    @inlinable
    public func describeCloudBaseRunResource(_ input: DescribeCloudBaseRunResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunResourceResponse> {
        self.client.execute(action: "DescribeCloudBaseRunResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看容器托管的资源状态
    ///
    /// 查看容器托管的集群状态
    @inlinable
    public func describeCloudBaseRunResource(_ input: DescribeCloudBaseRunResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunResourceResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看容器托管的资源状态
    ///
    /// 查看容器托管的集群状态
    @inlinable
    public func describeCloudBaseRunResource(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunResourceResponse> {
        self.describeCloudBaseRunResource(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看容器托管的资源状态
    ///
    /// 查看容器托管的集群状态
    @inlinable
    public func describeCloudBaseRunResource(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunResourceResponse {
        try await self.describeCloudBaseRunResource(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }
}
