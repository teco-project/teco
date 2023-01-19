//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// DescribeMachineInfo请求参数结构体
    public struct DescribeMachineInfoRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。
        public let uuid: String?

        /// Quuid , Uuid 必填一项
        public let quuid: String?

        public init(uuid: String? = nil, quuid: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
        }
    }

    /// DescribeMachineInfo返回参数结构体
    public struct DescribeMachineInfoResponse: TCResponseModel {
        /// 机器ip。
        public let machineIp: String

        /// 受云镜保护天数。
        public let protectDays: UInt64

        /// 操作系统。
        public let machineOs: String

        /// 主机名称。
        public let machineName: String

        /// 在线状态。
        /// <li>ONLINE： 在线</li>
        /// <li>OFFLINE：离线</li>
        public let machineStatus: String

        /// CVM或BM主机唯一标识。
        public let instanceId: String

        /// 主机外网IP。
        public let machineWanIp: String

        /// CVM或BM主机唯一Uuid。
        public let quuid: String

        /// 云镜客户端唯一Uuid。
        public let uuid: String

        /// 是否开通专业版。
        /// <li>true：是</li>
        /// <li>false：否</li>
        public let isProVersion: Bool

        /// 专业版开通时间。
        public let proVersionOpenDate: String

        /// 云服务器类型。
        /// <li>CVM: 腾讯云服务器</li>
        /// <li>BM: 黑石物理机</li>
        /// <li>ECM: 边缘计算服务器</li>
        /// <li>LH: 轻量应用服务器</li>
        /// <li>Other: 混合云机器</li>
        public let machineType: String

        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String

        /// 主机状态。
        /// <li>POSTPAY: 表示后付费，即按量计费  </li>
        /// <li>PREPAY: 表示预付费，即包年包月</li>
        public let payMode: String

        /// 免费木马剩余检测数量。
        public let freeMalwaresLeft: UInt64

        /// 免费漏洞剩余检测数量。
        public let freeVulsLeft: UInt64

        /// agent版本号
        public let agentVersion: String

        /// 专业版到期时间(仅预付费)
        public let proVersionDeadline: String

        /// 是否有资产扫描记录，0无，1有
        public let hasAssetScan: UInt64

        /// 防护版本 BASIC_VERSION 基础版, PRO_VERSION 专业版 Flagship 旗舰版.
        public let protectType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machineIp = "MachineIp"
            case protectDays = "ProtectDays"
            case machineOs = "MachineOs"
            case machineName = "MachineName"
            case machineStatus = "MachineStatus"
            case instanceId = "InstanceId"
            case machineWanIp = "MachineWanIp"
            case quuid = "Quuid"
            case uuid = "Uuid"
            case isProVersion = "IsProVersion"
            case proVersionOpenDate = "ProVersionOpenDate"
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
            case payMode = "PayMode"
            case freeMalwaresLeft = "FreeMalwaresLeft"
            case freeVulsLeft = "FreeVulsLeft"
            case agentVersion = "AgentVersion"
            case proVersionDeadline = "ProVersionDeadline"
            case hasAssetScan = "HasAssetScan"
            case protectType = "ProtectType"
            case requestId = "RequestId"
        }
    }

    /// 获取机器详情
    ///
    /// 本接口（DescribeMachineInfo）用于获取机器详细信息。
    @inlinable
    public func describeMachineInfo(_ input: DescribeMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineInfoResponse> {
        self.client.execute(action: "DescribeMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器详情
    ///
    /// 本接口（DescribeMachineInfo）用于获取机器详细信息。
    @inlinable
    public func describeMachineInfo(_ input: DescribeMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineInfoResponse {
        try await self.client.execute(action: "DescribeMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器详情
    ///
    /// 本接口（DescribeMachineInfo）用于获取机器详细信息。
    @inlinable
    public func describeMachineInfo(uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineInfoResponse> {
        self.describeMachineInfo(DescribeMachineInfoRequest(uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器详情
    ///
    /// 本接口（DescribeMachineInfo）用于获取机器详细信息。
    @inlinable
    public func describeMachineInfo(uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineInfoResponse {
        try await self.describeMachineInfo(DescribeMachineInfoRequest(uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }
}
