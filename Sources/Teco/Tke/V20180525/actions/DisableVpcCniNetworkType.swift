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
    /// DisableVpcCniNetworkType请求参数结构体
    public struct DisableVpcCniNetworkTypeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DisableVpcCniNetworkType返回参数结构体
    public struct DisableVpcCniNetworkTypeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭附加的VPC-CNI网络能力
    ///
    /// 提供给附加了VPC-CNI能力的Global-Route集群关闭VPC-CNI
    @inlinable
    public func disableVpcCniNetworkType(_ input: DisableVpcCniNetworkTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableVpcCniNetworkTypeResponse > {
        self.client.execute(action: "DisableVpcCniNetworkType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭附加的VPC-CNI网络能力
    ///
    /// 提供给附加了VPC-CNI能力的Global-Route集群关闭VPC-CNI
    @inlinable
    public func disableVpcCniNetworkType(_ input: DisableVpcCniNetworkTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableVpcCniNetworkTypeResponse {
        try await self.client.execute(action: "DisableVpcCniNetworkType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭附加的VPC-CNI网络能力
    ///
    /// 提供给附加了VPC-CNI能力的Global-Route集群关闭VPC-CNI
    @inlinable
    public func disableVpcCniNetworkType(clusterId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableVpcCniNetworkTypeResponse > {
        self.disableVpcCniNetworkType(DisableVpcCniNetworkTypeRequest(clusterId: clusterId), logger: logger, on: eventLoop)
    }

    /// 关闭附加的VPC-CNI网络能力
    ///
    /// 提供给附加了VPC-CNI能力的Global-Route集群关闭VPC-CNI
    @inlinable
    public func disableVpcCniNetworkType(clusterId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableVpcCniNetworkTypeResponse {
        try await self.disableVpcCniNetworkType(DisableVpcCniNetworkTypeRequest(clusterId: clusterId), logger: logger, on: eventLoop)
    }
}
