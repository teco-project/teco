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

extension Yunjing {
    /// DescribeMachineInfo请求参数结构体
    public struct DescribeMachineInfoRequest: TCRequest {
        /// 云镜客户端唯一Uuid。
        public let uuid: String?

        public init(uuid: String? = nil) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DescribeMachineInfo返回参数结构体
    public struct DescribeMachineInfoResponse: TCResponse {
        /// 机器ip。
        public let machineIp: String

        /// 受云镜保护天数。
        public let protectDays: UInt64

        /// 操作系统。
        public let machineOs: String

        /// 主机名称。
        public let machineName: String

        /// 在线状态。
        /// - ONLINE： 在线
        /// - OFFLINE：离线
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
        /// - true：是
        /// - false：否
        public let isProVersion: Bool

        /// 专业版开通时间。
        public let proVersionOpenDate: String

        /// 云主机类型。
        /// - CVM: 虚拟主机
        /// - BM: 黑石物理机
        public let machineType: String

        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String

        /// 主机状态。
        /// - POSTPAY: 表示后付费，即按量计费
        /// - PREPAY: 表示预付费，即包年包月
        public let payMode: String

        /// 免费木马剩余检测数量。
        public let freeMalwaresLeft: UInt64

        /// 免费漏洞剩余检测数量。
        public let freeVulsLeft: UInt64

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
    public func describeMachineInfo(uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineInfoResponse> {
        self.describeMachineInfo(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器详情
    ///
    /// 本接口（DescribeMachineInfo）用于获取机器详细信息。
    @inlinable
    public func describeMachineInfo(uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineInfoResponse {
        try await self.describeMachineInfo(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
