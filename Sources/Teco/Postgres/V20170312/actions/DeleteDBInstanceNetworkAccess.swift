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

extension Postgres {
    /// DeleteDBInstanceNetworkAccess请求参数结构体
    public struct DeleteDBInstanceNetworkAccessRequest: TCRequest {
        /// 实例ID，形如：postgres-6bwgamo3。
        public let dbInstanceId: String

        /// 私有网络统一 ID，若是基础网络则传"0"。
        public let vpcId: String

        /// 子网ID，若是基础网络则传"0"。
        public let subnetId: String

        /// 目标VIP地址。
        public let vip: String

        public init(dbInstanceId: String, vpcId: String, subnetId: String, vip: String) {
            self.dbInstanceId = dbInstanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.vip = vip
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case vip = "Vip"
        }
    }

    /// DeleteDBInstanceNetworkAccess返回参数结构体
    public struct DeleteDBInstanceNetworkAccessResponse: TCResponse {
        /// 流程ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 删除实例网络
    ///
    /// 可对实例进行网络的删除操作。
    @inlinable
    public func deleteDBInstanceNetworkAccess(_ input: DeleteDBInstanceNetworkAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBInstanceNetworkAccessResponse> {
        self.client.execute(action: "DeleteDBInstanceNetworkAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例网络
    ///
    /// 可对实例进行网络的删除操作。
    @inlinable
    public func deleteDBInstanceNetworkAccess(_ input: DeleteDBInstanceNetworkAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBInstanceNetworkAccessResponse {
        try await self.client.execute(action: "DeleteDBInstanceNetworkAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例网络
    ///
    /// 可对实例进行网络的删除操作。
    @inlinable
    public func deleteDBInstanceNetworkAccess(dbInstanceId: String, vpcId: String, subnetId: String, vip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBInstanceNetworkAccessResponse> {
        self.deleteDBInstanceNetworkAccess(.init(dbInstanceId: dbInstanceId, vpcId: vpcId, subnetId: subnetId, vip: vip), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例网络
    ///
    /// 可对实例进行网络的删除操作。
    @inlinable
    public func deleteDBInstanceNetworkAccess(dbInstanceId: String, vpcId: String, subnetId: String, vip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBInstanceNetworkAccessResponse {
        try await self.deleteDBInstanceNetworkAccess(.init(dbInstanceId: dbInstanceId, vpcId: vpcId, subnetId: subnetId, vip: vip), region: region, logger: logger, on: eventLoop)
    }
}
