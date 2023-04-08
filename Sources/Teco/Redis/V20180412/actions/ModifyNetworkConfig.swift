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

import TecoCore

extension Redis {
    /// ModifyNetworkConfig请求参数结构体
    public struct ModifyNetworkConfigRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 指预修改网络的类别，包括：
        /// - changeVip：指切换私有网络，包含其内网IPv4地址及端口。
        /// - changeVpc：指切换私有网络所属子网。
        /// - changeBaseToVpc：指基础网络切换为私有网络。
        /// - changeVPort：指仅修改实例网络端口。
        public let operation: String

        /// 指实例私有网络内网 IPv4 地址。当**Operation**为**changeVip**时，需配置该参数。
        public let vip: String?

        /// 指修改后的私有网络 ID，当**Operation**为**changeVpc**或**changeBaseToVpc**时，需配置该参数。
        public let vpcId: String?

        /// 指修改后的私有网络所属子网 ID，当**Operation**为**changeVpc**或**changeBaseToVpc**时，需配置该参数。
        public let subnetId: String?

        /// 原内网 IPv4 地址保留时长。
        /// - 单位：天。
        /// - 取值范围：0、1、2、3、7、15。
        ///
        /// **说明**：设置原地址保留时长需最新版SDK，否则原地址将立即释放，查看SDK版本，请参见 [SDK中心](https://cloud.tencent.com/document/sdk)。
        public let recycle: Int64?

        /// 指修改后的网络端口。当**Operation**为**changeVPort**或**changeVip**时，需配置该参数。取值范围为[1024,65535]。
        public let vPort: Int64?

        public init(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil, vPort: Int64? = nil) {
            self.instanceId = instanceId
            self.operation = operation
            self.vip = vip
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.recycle = recycle
            self.vPort = vPort
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case operation = "Operation"
            case vip = "Vip"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case recycle = "Recycle"
            case vPort = "VPort"
        }
    }

    /// ModifyNetworkConfig返回参数结构体
    public struct ModifyNetworkConfigResponse: TCResponseModel {
        /// 执行状态，请忽略该参数。
        public let status: Bool

        /// 指实例新私有网络所属子网 ID。
        public let subnetId: String

        /// 指实例新的私有网络ID。
        public let vpcId: String

        /// 指实例新的内网 IPv4 地址。
        public let vip: String

        /// 任务 ID。可获取**taskId**，通过接口 **DescribeTaskInfo **查询任务执行状态。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case vip = "Vip"
            case taskId = "TaskId"
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
    public func modifyNetworkConfig(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil, vPort: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkConfigResponse> {
        self.modifyNetworkConfig(.init(instanceId: instanceId, operation: operation, vip: vip, vpcId: vpcId, subnetId: subnetId, recycle: recycle, vPort: vPort), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例网络配置
    ///
    /// 本接口（ModifyNetworkConfig）用于修改实例网络配置。
    @inlinable
    public func modifyNetworkConfig(instanceId: String, operation: String, vip: String? = nil, vpcId: String? = nil, subnetId: String? = nil, recycle: Int64? = nil, vPort: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkConfigResponse {
        try await self.modifyNetworkConfig(.init(instanceId: instanceId, operation: operation, vip: vip, vpcId: vpcId, subnetId: subnetId, recycle: recycle, vPort: vPort), region: region, logger: logger, on: eventLoop)
    }
}
