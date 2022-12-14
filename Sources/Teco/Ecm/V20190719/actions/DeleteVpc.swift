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

extension Ecm {
    /// DeleteVpc请求参数结构体
    public struct DeleteVpcRequest: TCRequestModel {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// ECM 地域
        public let ecmRegion: String

        public init(vpcId: String, ecmRegion: String) {
            self.vpcId = vpcId
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ecmRegion = "EcmRegion"
        }
    }

    /// DeleteVpc返回参数结构体
    public struct DeleteVpcResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除VPC
    ///
    /// 删除私有网络
    @inlinable
    public func deleteVpc(_ input: DeleteVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVpcResponse > {
        self.client.execute(action: "DeleteVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除VPC
    ///
    /// 删除私有网络
    @inlinable
    public func deleteVpc(_ input: DeleteVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcResponse {
        try await self.client.execute(action: "DeleteVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除VPC
    ///
    /// 删除私有网络
    @inlinable
    public func deleteVpc(vpcId: String, ecmRegion: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVpcResponse > {
        self.deleteVpc(DeleteVpcRequest(vpcId: vpcId, ecmRegion: ecmRegion), logger: logger, on: eventLoop)
    }

    /// 删除VPC
    ///
    /// 删除私有网络
    @inlinable
    public func deleteVpc(vpcId: String, ecmRegion: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcResponse {
        try await self.deleteVpc(DeleteVpcRequest(vpcId: vpcId, ecmRegion: ecmRegion), logger: logger, on: eventLoop)
    }
}
