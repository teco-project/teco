//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cwp {
    /// 获取主机相关统计
    ///
    /// 获取主机相关统计
    @inlinable
    public func describeGeneralStat(_ input: DescribeGeneralStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGeneralStatResponse > {
        self.client.execute(action: "DescribeGeneralStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取主机相关统计
    ///
    /// 获取主机相关统计
    @inlinable
    public func describeGeneralStat(_ input: DescribeGeneralStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralStatResponse {
        try await self.client.execute(action: "DescribeGeneralStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGeneralStat请求参数结构体
    public struct DescribeGeneralStatRequest: TCRequestModel {
        /// 云主机类型。
        /// <li>CVM：表示腾讯云服务器</li>
        /// <li>BM:  表示黑石物理机</li>
        /// <li>ECM:  表示边缘计算服务器</li>
        /// <li>LH:  表示轻量应用服务器</li>
        /// <li>Other:  表示混合云机器</li>
        public let machineType: String?
        
        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String?
        
        public init (machineType: String?, machineRegion: String?) {
            self.machineType = machineType
            self.machineRegion = machineRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
        }
    }
    
    /// DescribeGeneralStat返回参数结构体
    public struct DescribeGeneralStatResponse: TCResponseModel {
        /// 云主机总数
        public let machinesAll: UInt64
        
        /// 云主机没有安装主机安全客户端的总数
        public let machinesUninstalled: UInt64
        
        /// 主机安全客户端总数的总数
        public let agentsAll: UInt64
        
        /// 主机安全客户端在线的总数
        public let agentsOnline: UInt64
        
        /// 主机安全客户端 离线+关机 的总数
        public let agentsOffline: UInt64
        
        /// 主机安全客户端专业版的总数
        public let agentsPro: UInt64
        
        /// 主机安全客户端基础版的总数
        public let agentsBasic: UInt64
        
        /// 7天内到期的预付费专业版总数
        public let agentsProExpireWithInSevenDays: UInt64
        
        /// 风险主机总数
        public let riskMachine: UInt64
        
        /// 已关机总数
        public let shutdown: UInt64
        
        /// 已离线总数
        public let offline: UInt64
        
        /// 旗舰版主机数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flagshipMachineCnt: UInt64?
        
        /// 保护天数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let protectDays: UInt64?
        
        /// 15天内新增的主机数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addedOnTheFifteen: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case machinesAll = "MachinesAll"
            case machinesUninstalled = "MachinesUninstalled"
            case agentsAll = "AgentsAll"
            case agentsOnline = "AgentsOnline"
            case agentsOffline = "AgentsOffline"
            case agentsPro = "AgentsPro"
            case agentsBasic = "AgentsBasic"
            case agentsProExpireWithInSevenDays = "AgentsProExpireWithInSevenDays"
            case riskMachine = "RiskMachine"
            case shutdown = "Shutdown"
            case offline = "Offline"
            case flagshipMachineCnt = "FlagshipMachineCnt"
            case protectDays = "ProtectDays"
            case addedOnTheFifteen = "AddedOnTheFifteen"
            case requestId = "RequestId"
        }
    }
}