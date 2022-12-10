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

extension Es {
    /// 升级ES集群版本
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeInstanceResponse > {
        self.client.execute(action: "UpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级ES集群版本
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        try await self.client.execute(action: "UpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpgradeInstance请求参数结构体
    public struct UpgradeInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 目标ES版本，支持：”6.4.3“, "6.8.2"，"7.5.1"
        public let esVersion: String
        
        /// 是否只做升级检查，默认值为false
        public let checkOnly: Bool?
        
        /// 目标商业特性版本：<li>oss 开源版</li><li>basic 基础版</li>当前仅在5.6.4升级6.x版本时使用，默认值为basic
        public let licenseType: String?
        
        /// 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        public let basicSecurityType: UInt64?
        
        /// 升级方式：<li>scale 蓝绿变更</li><li>restart 滚动重启</li>默认值为scale
        public let upgradeMode: String?
        
        /// 升级版本前是否对集群进行备份，默认不备份
        public let cosBackup: Bool?
        
        /// 滚动模式时，是否跳过检查，进行强制重启。默认值为false
        public let skipCheckForceRestart: Bool?
        
        public init (instanceId: String, esVersion: String, checkOnly: Bool?, licenseType: String?, basicSecurityType: UInt64?, upgradeMode: String?, cosBackup: Bool?, skipCheckForceRestart: Bool?) {
            self.instanceId = instanceId
            self.esVersion = esVersion
            self.checkOnly = checkOnly
            self.licenseType = licenseType
            self.basicSecurityType = basicSecurityType
            self.upgradeMode = upgradeMode
            self.cosBackup = cosBackup
            self.skipCheckForceRestart = skipCheckForceRestart
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case esVersion = "EsVersion"
            case checkOnly = "CheckOnly"
            case licenseType = "LicenseType"
            case basicSecurityType = "BasicSecurityType"
            case upgradeMode = "UpgradeMode"
            case cosBackup = "CosBackup"
            case skipCheckForceRestart = "SkipCheckForceRestart"
        }
    }
    
    /// UpgradeInstance返回参数结构体
    public struct UpgradeInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
