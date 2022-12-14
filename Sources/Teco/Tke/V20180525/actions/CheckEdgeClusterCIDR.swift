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

extension Tke {
    /// CheckEdgeClusterCIDR请求参数结构体
    public struct CheckEdgeClusterCIDRRequest: TCRequestModel {
        /// 集群的vpc-id
        public let vpcId: String

        /// 集群的pod CIDR
        public let podCIDR: String

        /// 集群的service CIDR
        public let serviceCIDR: String

        public init(vpcId: String, podCIDR: String, serviceCIDR: String) {
            self.vpcId = vpcId
            self.podCIDR = podCIDR
            self.serviceCIDR = serviceCIDR
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case podCIDR = "PodCIDR"
            case serviceCIDR = "ServiceCIDR"
        }
    }

    /// CheckEdgeClusterCIDR返回参数结构体
    public struct CheckEdgeClusterCIDRResponse: TCResponseModel {
        /// 返回码，具体如下
        /// -1 内部错误
        /// 0 没冲突
        /// 1 vpc 和 serviceCIDR 冲突
        /// 2 vpc 和 podCIDR 冲突
        /// 3 serviceCIDR  和 podCIDR 冲突
        public let conflictCode: Int64

        /// CIDR冲突描述信息。
        public let conflictMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case conflictCode = "ConflictCode"
            case conflictMsg = "ConflictMsg"
            case requestId = "RequestId"
        }
    }

    /// 检查边缘计算集群的CIDR是否冲突
    @inlinable
    public func checkEdgeClusterCIDR(_ input: CheckEdgeClusterCIDRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckEdgeClusterCIDRResponse > {
        self.client.execute(action: "CheckEdgeClusterCIDR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查边缘计算集群的CIDR是否冲突
    @inlinable
    public func checkEdgeClusterCIDR(_ input: CheckEdgeClusterCIDRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckEdgeClusterCIDRResponse {
        try await self.client.execute(action: "CheckEdgeClusterCIDR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查边缘计算集群的CIDR是否冲突
    @inlinable
    public func checkEdgeClusterCIDR(vpcId: String, podCIDR: String, serviceCIDR: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckEdgeClusterCIDRResponse > {
        self.checkEdgeClusterCIDR(CheckEdgeClusterCIDRRequest(vpcId: vpcId, podCIDR: podCIDR, serviceCIDR: serviceCIDR), logger: logger, on: eventLoop)
    }

    /// 检查边缘计算集群的CIDR是否冲突
    @inlinable
    public func checkEdgeClusterCIDR(vpcId: String, podCIDR: String, serviceCIDR: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckEdgeClusterCIDRResponse {
        try await self.checkEdgeClusterCIDR(CheckEdgeClusterCIDRRequest(vpcId: vpcId, podCIDR: podCIDR, serviceCIDR: serviceCIDR), logger: logger, on: eventLoop)
    }
}
