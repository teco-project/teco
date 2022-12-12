//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// SwitchDBInstanceMasterSlave请求参数结构体
    public struct SwitchDBInstanceMasterSlaveRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String
        
        /// 目标从实例。可选值："first" - 第一备机；"second" - 第二备机。默认值为 "first"，仅多可用区实例支持设置为 "second"。
        public let dstSlave: String?
        
        /// 是否强制切换。默认为 False。注意，若设置强制切换为 True，实例存在丢失数据的风险，请谨慎使用。
        public let forceSwitch: Bool?
        
        /// 是否时间窗内切换。默认为 False，即不在时间窗内切换。注意，如果设置了 ForceSwitch 参数为 True，则该参数不生效。
        public let waitSwitch: Bool?
        
        public init (instanceId: String, dstSlave: String? = nil, forceSwitch: Bool? = nil, waitSwitch: Bool? = nil) {
            self.instanceId = instanceId
            self.dstSlave = dstSlave
            self.forceSwitch = forceSwitch
            self.waitSwitch = waitSwitch
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dstSlave = "DstSlave"
            case forceSwitch = "ForceSwitch"
            case waitSwitch = "WaitSwitch"
        }
    }
    
    /// SwitchDBInstanceMasterSlave返回参数结构体
    public struct SwitchDBInstanceMasterSlaveResponse: TCResponseModel {
        /// 异步任务 ID。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
    
    /// 切换实例主从角色
    ///
    /// 该接口 (SwitchDBInstanceMasterSlave) 支持用户主动切换实例主从角色。
    @inlinable
    public func switchDBInstanceMasterSlave(_ input: SwitchDBInstanceMasterSlaveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SwitchDBInstanceMasterSlaveResponse > {
        self.client.execute(action: "SwitchDBInstanceMasterSlave", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 切换实例主从角色
    ///
    /// 该接口 (SwitchDBInstanceMasterSlave) 支持用户主动切换实例主从角色。
    @inlinable
    public func switchDBInstanceMasterSlave(_ input: SwitchDBInstanceMasterSlaveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDBInstanceMasterSlaveResponse {
        try await self.client.execute(action: "SwitchDBInstanceMasterSlave", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
