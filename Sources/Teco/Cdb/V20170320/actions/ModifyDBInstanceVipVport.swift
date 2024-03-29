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
    /// ModifyDBInstanceVipVport请求参数结构体
    public struct ModifyDBInstanceVipVportRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c2nl9rpv 或者 cdbrg-c3nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        /// 目标 IP。该参数和 DstPort 参数，两者必传一个。
        public let dstIp: String?

        /// 目标端口，支持范围为：[1024-65535]。该参数和 DstIp 参数，两者必传一个。
        public let dstPort: Int64?

        /// 私有网络统一 ID。
        public let uniqVpcId: String?

        /// 子网统一 ID。
        public let uniqSubnetId: String?

        /// 进行基础网络转 VPC 网络和 VPC 网络下的子网变更时，原网络中旧IP的回收时间，单位为小时，取值范围为0-168，默认值为24小时。
        public let releaseDuration: Int64?

        public init(instanceId: String, dstIp: String? = nil, dstPort: Int64? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, releaseDuration: Int64? = nil) {
            self.instanceId = instanceId
            self.dstIp = dstIp
            self.dstPort = dstPort
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.releaseDuration = releaseDuration
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dstIp = "DstIp"
            case dstPort = "DstPort"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case releaseDuration = "ReleaseDuration"
        }
    }

    /// ModifyDBInstanceVipVport返回参数结构体
    public struct ModifyDBInstanceVipVportResponse: TCResponse {
        /// 异步任务ID。(该返回字段目前已废弃)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRequestId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例的IP和端口号
    ///
    /// 本接口(ModifyDBInstanceVipVport)用于修改云数据库实例的IP和端口号，也可进行基础网络转 VPC 网络和 VPC 网络下的子网变更。
    @inlinable
    public func modifyDBInstanceVipVport(_ input: ModifyDBInstanceVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceVipVportResponse> {
        self.client.execute(action: "ModifyDBInstanceVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的IP和端口号
    ///
    /// 本接口(ModifyDBInstanceVipVport)用于修改云数据库实例的IP和端口号，也可进行基础网络转 VPC 网络和 VPC 网络下的子网变更。
    @inlinable
    public func modifyDBInstanceVipVport(_ input: ModifyDBInstanceVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceVipVportResponse {
        try await self.client.execute(action: "ModifyDBInstanceVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例的IP和端口号
    ///
    /// 本接口(ModifyDBInstanceVipVport)用于修改云数据库实例的IP和端口号，也可进行基础网络转 VPC 网络和 VPC 网络下的子网变更。
    @inlinable
    public func modifyDBInstanceVipVport(instanceId: String, dstIp: String? = nil, dstPort: Int64? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, releaseDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceVipVportResponse> {
        self.modifyDBInstanceVipVport(.init(instanceId: instanceId, dstIp: dstIp, dstPort: dstPort, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, releaseDuration: releaseDuration), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的IP和端口号
    ///
    /// 本接口(ModifyDBInstanceVipVport)用于修改云数据库实例的IP和端口号，也可进行基础网络转 VPC 网络和 VPC 网络下的子网变更。
    @inlinable
    public func modifyDBInstanceVipVport(instanceId: String, dstIp: String? = nil, dstPort: Int64? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, releaseDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceVipVportResponse {
        try await self.modifyDBInstanceVipVport(.init(instanceId: instanceId, dstIp: dstIp, dstPort: dstPort, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, releaseDuration: releaseDuration), region: region, logger: logger, on: eventLoop)
    }
}
