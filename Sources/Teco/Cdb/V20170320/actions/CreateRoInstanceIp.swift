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

extension Cdb {
    /// CreateRoInstanceIp请求参数结构体
    public struct CreateRoInstanceIpRequest: TCRequestModel {
        /// 只读实例ID，格式如：cdbro-3i70uj0k，与云数据库控制台页面中显示的只读实例ID相同。
        public let instanceId: String

        /// 子网描述符，例如：subnet-1typ0s7d。
        public let uniqSubnetId: String?

        /// vpc描述符，例如：vpc-a23yt67j,如果传了该字段则UniqSubnetId必传
        public let uniqVpcId: String?

        public init(instanceId: String, uniqSubnetId: String? = nil, uniqVpcId: String? = nil) {
            self.instanceId = instanceId
            self.uniqSubnetId = uniqSubnetId
            self.uniqVpcId = uniqVpcId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case uniqSubnetId = "UniqSubnetId"
            case uniqVpcId = "UniqVpcId"
        }
    }

    /// CreateRoInstanceIp返回参数结构体
    public struct CreateRoInstanceIpResponse: TCResponseModel {
        /// 只读实例的私有网络的ID。
        public let roVpcId: Int64

        /// 只读实例的子网ID。
        public let roSubnetId: Int64

        /// 只读实例的内网IP地址。
        public let roVip: String

        /// 只读实例的内网端口号。
        public let roVport: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roVpcId = "RoVpcId"
            case roSubnetId = "RoSubnetId"
            case roVip = "RoVip"
            case roVport = "RoVport"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库只读实例的独立VIP
    ///
    /// 本接口(CreateRoInstanceIp)用于创建云数据库只读实例的独立VIP。
    @inlinable
    public func createRoInstanceIp(_ input: CreateRoInstanceIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoInstanceIpResponse> {
        self.client.execute(action: "CreateRoInstanceIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库只读实例的独立VIP
    ///
    /// 本接口(CreateRoInstanceIp)用于创建云数据库只读实例的独立VIP。
    @inlinable
    public func createRoInstanceIp(_ input: CreateRoInstanceIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoInstanceIpResponse {
        try await self.client.execute(action: "CreateRoInstanceIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库只读实例的独立VIP
    ///
    /// 本接口(CreateRoInstanceIp)用于创建云数据库只读实例的独立VIP。
    @inlinable
    public func createRoInstanceIp(instanceId: String, uniqSubnetId: String? = nil, uniqVpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoInstanceIpResponse> {
        self.createRoInstanceIp(.init(instanceId: instanceId, uniqSubnetId: uniqSubnetId, uniqVpcId: uniqVpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库只读实例的独立VIP
    ///
    /// 本接口(CreateRoInstanceIp)用于创建云数据库只读实例的独立VIP。
    @inlinable
    public func createRoInstanceIp(instanceId: String, uniqSubnetId: String? = nil, uniqVpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoInstanceIpResponse {
        try await self.createRoInstanceIp(.init(instanceId: instanceId, uniqSubnetId: uniqSubnetId, uniqVpcId: uniqVpcId), region: region, logger: logger, on: eventLoop)
    }
}
