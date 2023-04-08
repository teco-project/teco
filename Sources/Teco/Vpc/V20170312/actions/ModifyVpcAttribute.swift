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
    /// ModifyVpcAttribute请求参数结构体
    public struct ModifyVpcAttributeRequest: TCRequestModel {
        /// VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        public let vpcId: String

        /// 私有网络名称，可任意命名，但不得超过60个字符。
        public let vpcName: String?

        /// 是否开启组播。true: 开启, false: 关闭。
        public let enableMulticast: String?

        /// DNS地址，最多支持4个，第1个默认为主，其余为备。
        public let dnsServers: [String]?

        /// 域名。
        public let domainName: String?

        public init(vpcId: String, vpcName: String? = nil, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil) {
            self.vpcId = vpcId
            self.vpcName = vpcName
            self.enableMulticast = enableMulticast
            self.dnsServers = dnsServers
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case enableMulticast = "EnableMulticast"
            case dnsServers = "DnsServers"
            case domainName = "DomainName"
        }
    }

    /// ModifyVpcAttribute返回参数结构体
    public struct ModifyVpcAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改私有网络（VPC）的相关属性。
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改私有网络（VPC）的相关属性。
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改私有网络（VPC）的相关属性。
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, vpcName: String? = nil, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.modifyVpcAttribute(.init(vpcId: vpcId, vpcName: vpcName, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改私有网络（VPC）的相关属性。
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, vpcName: String? = nil, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.modifyVpcAttribute(.init(vpcId: vpcId, vpcName: vpcName, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName), region: region, logger: logger, on: eventLoop)
    }
}
