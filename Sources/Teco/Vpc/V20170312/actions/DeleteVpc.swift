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

extension Vpc {
    /// DeleteVpc请求参数结构体
    public struct DeleteVpcRequest: TCRequestModel {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        public init(vpcId: String) {
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
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
    /// 本接口（DeleteVpc）用于删除私有网络。
    /// * 删除前请确保 VPC 内已经没有相关资源，例如云服务器、云数据库、NoSQL、VPN网关、专线网关、负载均衡、对等连接、与之互通的基础网络设备等。
    /// * 删除私有网络是不可逆的操作，请谨慎处理。
    @inlinable @discardableResult
    public func deleteVpc(_ input: DeleteVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcResponse> {
        self.client.execute(action: "DeleteVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除VPC
    ///
    /// 本接口（DeleteVpc）用于删除私有网络。
    /// * 删除前请确保 VPC 内已经没有相关资源，例如云服务器、云数据库、NoSQL、VPN网关、专线网关、负载均衡、对等连接、与之互通的基础网络设备等。
    /// * 删除私有网络是不可逆的操作，请谨慎处理。
    @inlinable @discardableResult
    public func deleteVpc(_ input: DeleteVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcResponse {
        try await self.client.execute(action: "DeleteVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除VPC
    ///
    /// 本接口（DeleteVpc）用于删除私有网络。
    /// * 删除前请确保 VPC 内已经没有相关资源，例如云服务器、云数据库、NoSQL、VPN网关、专线网关、负载均衡、对等连接、与之互通的基础网络设备等。
    /// * 删除私有网络是不可逆的操作，请谨慎处理。
    @inlinable @discardableResult
    public func deleteVpc(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcResponse> {
        self.deleteVpc(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除VPC
    ///
    /// 本接口（DeleteVpc）用于删除私有网络。
    /// * 删除前请确保 VPC 内已经没有相关资源，例如云服务器、云数据库、NoSQL、VPN网关、专线网关、负载均衡、对等连接、与之互通的基础网络设备等。
    /// * 删除私有网络是不可逆的操作，请谨慎处理。
    @inlinable @discardableResult
    public func deleteVpc(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcResponse {
        try await self.deleteVpc(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
