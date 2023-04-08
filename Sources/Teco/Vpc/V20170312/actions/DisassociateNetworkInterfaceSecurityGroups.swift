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

extension Vpc {
    /// DisassociateNetworkInterfaceSecurityGroups请求参数结构体
    public struct DisassociateNetworkInterfaceSecurityGroupsRequest: TCRequestModel {
        /// 弹性网卡实例ID。形如：eni-pxir56ns。每次请求的实例的上限为100。
        public let networkInterfaceIds: [String]

        /// 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。每次请求的实例的上限为100。
        public let securityGroupIds: [String]

        public init(networkInterfaceIds: [String], securityGroupIds: [String]) {
            self.networkInterfaceIds = networkInterfaceIds
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceIds = "NetworkInterfaceIds"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// DisassociateNetworkInterfaceSecurityGroups返回参数结构体
    public struct DisassociateNetworkInterfaceSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡解绑安全组
    ///
    /// 本接口（DisassociateNetworkInterfaceSecurityGroups）用于弹性网卡解绑安全组。支持弹性网卡完全解绑安全组。
    @inlinable @discardableResult
    public func disassociateNetworkInterfaceSecurityGroups(_ input: DisassociateNetworkInterfaceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateNetworkInterfaceSecurityGroupsResponse> {
        self.client.execute(action: "DisassociateNetworkInterfaceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑安全组
    ///
    /// 本接口（DisassociateNetworkInterfaceSecurityGroups）用于弹性网卡解绑安全组。支持弹性网卡完全解绑安全组。
    @inlinable @discardableResult
    public func disassociateNetworkInterfaceSecurityGroups(_ input: DisassociateNetworkInterfaceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateNetworkInterfaceSecurityGroupsResponse {
        try await self.client.execute(action: "DisassociateNetworkInterfaceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡解绑安全组
    ///
    /// 本接口（DisassociateNetworkInterfaceSecurityGroups）用于弹性网卡解绑安全组。支持弹性网卡完全解绑安全组。
    @inlinable @discardableResult
    public func disassociateNetworkInterfaceSecurityGroups(networkInterfaceIds: [String], securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateNetworkInterfaceSecurityGroupsResponse> {
        self.disassociateNetworkInterfaceSecurityGroups(.init(networkInterfaceIds: networkInterfaceIds, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑安全组
    ///
    /// 本接口（DisassociateNetworkInterfaceSecurityGroups）用于弹性网卡解绑安全组。支持弹性网卡完全解绑安全组。
    @inlinable @discardableResult
    public func disassociateNetworkInterfaceSecurityGroups(networkInterfaceIds: [String], securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateNetworkInterfaceSecurityGroupsResponse {
        try await self.disassociateNetworkInterfaceSecurityGroups(.init(networkInterfaceIds: networkInterfaceIds, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
