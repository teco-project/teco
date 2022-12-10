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
    /// 升级ES商业特性
    @inlinable
    public func upgradeLicense(_ input: UpgradeLicenseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeLicenseResponse > {
        self.client.execute(action: "UpgradeLicense", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级ES商业特性
    @inlinable
    public func upgradeLicense(_ input: UpgradeLicenseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeLicenseResponse {
        try await self.client.execute(action: "UpgradeLicense", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpgradeLicense请求参数结构体
    public struct UpgradeLicenseRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        public let licenseType: String
        
        /// 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        public let autoVoucher: Int64?
        
        /// 代金券ID列表（目前仅支持指定一张代金券）
        public let voucherIds: [String]?
        
        /// 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        public let basicSecurityType: UInt64?
        
        /// 是否强制重启<li>true强制重启</li><li>false不强制重启</li> 默认值false
        public let forceRestart: Bool?
        
        public init (instanceId: String, licenseType: String, autoVoucher: Int64?, voucherIds: [String]?, basicSecurityType: UInt64?, forceRestart: Bool?) {
            self.instanceId = instanceId
            self.licenseType = licenseType
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.basicSecurityType = basicSecurityType
            self.forceRestart = forceRestart
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case licenseType = "LicenseType"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case basicSecurityType = "BasicSecurityType"
            case forceRestart = "ForceRestart"
        }
    }
    
    /// UpgradeLicense返回参数结构体
    public struct UpgradeLicenseResponse: TCResponseModel {
        /// 订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }
}
