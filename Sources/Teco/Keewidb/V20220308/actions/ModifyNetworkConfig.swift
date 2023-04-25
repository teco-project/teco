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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Keewidb {
    /// ModifyNetworkConfig请求参数结构体
    public struct ModifyNetworkConfigRequest: TCRequestModel {
        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String

        /// 操作类型。<ul><li>changeVip：修改实例私有网络。</li><li>changeVpc：修改实例私有网络所属子网。</li><li>changeBaseToVpc：基础网络转为私有网络。</li></ul>
        public let operation: String

        /// 修改后的 VIP 地址。
        /// 当参数<b>Operation</b>为<b>changeVip</b>时，需设置实例修改后的 VIP 地址。该参数不配置，则自动分配。
        public let vip: String?

        /// 修改后的私有网络 ID。
        /// 当参数<b>Operation</b>为<b>changeVip</b>或者为<b>changeBaseToVpc</b>时，务必设置实例修改后的私有网络 ID。
        public let vpcId: String?

        /// 修改后的所属子网 ID。
        /// 当参数<b>Operation</b>为<b>changeVpc</b>或者为<b>changeBaseToVpc</b>时，务必设置实例修改后的子网 ID。
        public let subnetId: String?

        /// 原 VIP 保留时长。
        /// 单位：天。取值范围：0、1、2、3、7、15。
        public let recycle: Int64?

        public init(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil) {
            self.instanceId = instanceId
            self.operation = operation
            self.vip = vip
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.recycle = recycle
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case operation = "Operation"
            case vip = "Vip"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case recycle = "Recycle"
        }
    }

    /// ModifyNetworkConfig返回参数结构体
    public struct ModifyNetworkConfigResponse: TCResponseModel {
        /// 执行状态。<ul><li>true：执行成功。</li><li>false：执行失败。</li></ul>
        public let status: Bool

        /// 修改后的子网 ID。
        public let subnetId: String

        /// 修改后的私有网络 ID。
        public let vpcId: String

        /// 修改后的 VIP 地址。
        public let vip: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case vip = "Vip"
            case requestId = "RequestId"
        }
    }

    /// 修改实例网络配置
    ///
    /// 本接口（ModifyNetworkConfig）用于修改实例网络配置。
    @inlinable
    public func modifyNetworkConfig(_ input: ModifyNetworkConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkConfigResponse> {
        self.client.execute(action: "ModifyNetworkConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例网络配置
    ///
    /// 本接口（ModifyNetworkConfig）用于修改实例网络配置。
    @inlinable
    public func modifyNetworkConfig(_ input: ModifyNetworkConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkConfigResponse {
        try await self.client.execute(action: "ModifyNetworkConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例网络配置
    ///
    /// 本接口（ModifyNetworkConfig）用于修改实例网络配置。
    @inlinable
    public func modifyNetworkConfig(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkConfigResponse> {
        self.modifyNetworkConfig(.init(instanceId: instanceId, operation: operation, vip: vip, vpcId: vpcId, subnetId: subnetId, recycle: recycle), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例网络配置
    ///
    /// 本接口（ModifyNetworkConfig）用于修改实例网络配置。
    @inlinable
    public func modifyNetworkConfig(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkConfigResponse {
        try await self.modifyNetworkConfig(.init(instanceId: instanceId, operation: operation, vip: vip, vpcId: vpcId, subnetId: subnetId, recycle: recycle), region: region, logger: logger, on: eventLoop)
    }
}
