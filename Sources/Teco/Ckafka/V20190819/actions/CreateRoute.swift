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

extension Ckafka {
    /// CreateRoute请求参数结构体
    public struct CreateRouteRequest: TCRequest {
        /// 实例唯一id
        public let instanceId: String

        /// 路由网络类型(3:vpc路由;4:标准版支撑路由;7:专业版支撑路由)
        public let vipType: Int64

        /// vpc网络Id
        public let vpcId: String?

        /// vpc子网id
        public let subnetId: String?

        /// 访问类型
        public let accessType: Int64?

        /// 是否需要权限管理
        public let authFlag: Int64?

        /// 调用方appId
        public let callerAppid: Int64?

        /// 公网带宽
        public let publicNetwork: Int64?

        /// vip地址
        public let ip: String?

        public init(instanceId: String, vipType: Int64, vpcId: String? = nil, subnetId: String? = nil, accessType: Int64? = nil, authFlag: Int64? = nil, callerAppid: Int64? = nil, publicNetwork: Int64? = nil, ip: String? = nil) {
            self.instanceId = instanceId
            self.vipType = vipType
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.accessType = accessType
            self.authFlag = authFlag
            self.callerAppid = callerAppid
            self.publicNetwork = publicNetwork
            self.ip = ip
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vipType = "VipType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case accessType = "AccessType"
            case authFlag = "AuthFlag"
            case callerAppid = "CallerAppid"
            case publicNetwork = "PublicNetwork"
            case ip = "Ip"
        }
    }

    /// CreateRoute返回参数结构体
    public struct CreateRouteResponse: TCResponse {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 添加实例路由
    @inlinable
    public func createRoute(_ input: CreateRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteResponse> {
        self.client.execute(action: "CreateRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加实例路由
    @inlinable
    public func createRoute(_ input: CreateRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteResponse {
        try await self.client.execute(action: "CreateRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加实例路由
    @inlinable
    public func createRoute(instanceId: String, vipType: Int64, vpcId: String? = nil, subnetId: String? = nil, accessType: Int64? = nil, authFlag: Int64? = nil, callerAppid: Int64? = nil, publicNetwork: Int64? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteResponse> {
        self.createRoute(.init(instanceId: instanceId, vipType: vipType, vpcId: vpcId, subnetId: subnetId, accessType: accessType, authFlag: authFlag, callerAppid: callerAppid, publicNetwork: publicNetwork, ip: ip), region: region, logger: logger, on: eventLoop)
    }

    /// 添加实例路由
    @inlinable
    public func createRoute(instanceId: String, vipType: Int64, vpcId: String? = nil, subnetId: String? = nil, accessType: Int64? = nil, authFlag: Int64? = nil, callerAppid: Int64? = nil, publicNetwork: Int64? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteResponse {
        try await self.createRoute(.init(instanceId: instanceId, vipType: vipType, vpcId: vpcId, subnetId: subnetId, accessType: accessType, authFlag: authFlag, callerAppid: callerAppid, publicNetwork: publicNetwork, ip: ip), region: region, logger: logger, on: eventLoop)
    }
}
