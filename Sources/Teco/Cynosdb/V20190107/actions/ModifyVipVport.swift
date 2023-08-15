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

extension Cynosdb {
    /// ModifyVipVport请求参数结构体
    public struct ModifyVipVportRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 实例组id
        public let instanceGrpId: String

        /// 需要修改的目的ip
        public let vip: String?

        /// 需要修改的目的端口
        public let vport: Int64?

        /// 数据库类型，取值范围:
        /// - MYSQL
        public let dbType: String?

        /// 旧ip回收前的保留时间，单位小时，0表示立即回收
        public let oldIpReserveHours: Int64?

        public init(clusterId: String, instanceGrpId: String, vip: String? = nil, vport: Int64? = nil, dbType: String? = nil, oldIpReserveHours: Int64? = nil) {
            self.clusterId = clusterId
            self.instanceGrpId = instanceGrpId
            self.vip = vip
            self.vport = vport
            self.dbType = dbType
            self.oldIpReserveHours = oldIpReserveHours
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceGrpId = "InstanceGrpId"
            case vip = "Vip"
            case vport = "Vport"
            case dbType = "DbType"
            case oldIpReserveHours = "OldIpReserveHours"
        }
    }

    /// ModifyVipVport返回参数结构体
    public struct ModifyVipVportResponse: TCResponseModel {
        /// 异步任务id
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例组ip，端口
    @inlinable
    public func modifyVipVport(_ input: ModifyVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVipVportResponse> {
        self.client.execute(action: "ModifyVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例组ip，端口
    @inlinable
    public func modifyVipVport(_ input: ModifyVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVipVportResponse {
        try await self.client.execute(action: "ModifyVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例组ip，端口
    @inlinable
    public func modifyVipVport(clusterId: String, instanceGrpId: String, vip: String? = nil, vport: Int64? = nil, dbType: String? = nil, oldIpReserveHours: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVipVportResponse> {
        self.modifyVipVport(.init(clusterId: clusterId, instanceGrpId: instanceGrpId, vip: vip, vport: vport, dbType: dbType, oldIpReserveHours: oldIpReserveHours), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例组ip，端口
    @inlinable
    public func modifyVipVport(clusterId: String, instanceGrpId: String, vip: String? = nil, vport: Int64? = nil, dbType: String? = nil, oldIpReserveHours: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVipVportResponse {
        try await self.modifyVipVport(.init(clusterId: clusterId, instanceGrpId: instanceGrpId, vip: vip, vport: vport, dbType: dbType, oldIpReserveHours: oldIpReserveHours), region: region, logger: logger, on: eventLoop)
    }
}
