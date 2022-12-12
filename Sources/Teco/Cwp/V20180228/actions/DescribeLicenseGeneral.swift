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

extension Cwp {
    /// DescribeLicenseGeneral请求参数结构体
    public struct DescribeLicenseGeneralRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeLicenseGeneral返回参数结构体
    public struct DescribeLicenseGeneralResponse: TCResponseModel {
        /// 总授权数 (包含隔离,过期等不可用状态)
        public let licenseCnt: UInt64
        
        /// 可用授权数
        public let availableLicenseCnt: UInt64
        
        /// 可用专业版授权数(包含后付费).
        public let availableProVersionLicenseCnt: UInt64
        
        /// 可用旗舰版授权数
        public let availableFlagshipVersionLicenseCnt: UInt64
        
        /// 即将到期授权数 (15天内到期的)
        public let nearExpiryLicenseCnt: UInt64
        
        /// 已到期授权数(不包含已删除的记录)
        public let expireLicenseCnt: UInt64
        
        /// 自动升级开关状态,默认 false,  true 开启, false 关闭
        public let autoOpenStatus: Bool
        
        /// PROVERSION_POSTPAY 专业版-后付费, PROVERSION_PREPAY 专业版-预付费, FLAGSHIP_PREPAY 旗舰版-预付费
        public let protectType: String
        
        /// 历史是否开通过自动升级开关
        public let isOpenStatusHistory: Bool
        
        /// 已使用授权数
        public let usedLicenseCnt: UInt64
        
        /// 未到期授权数
        public let notExpiredLicenseCnt: UInt64
        
        /// 旗舰版总授权数(有效订单)
        public let flagshipVersionLicenseCnt: UInt64
        
        /// 专业版总授权数(有效订单)
        public let proVersionLicenseCnt: UInt64
        
        /// 普惠版总授权数(有效订单的授权数)
        public let cwpVersionLicenseCnt: UInt64
        
        /// 可用惠普版授权数
        public let availableLHLicenseCnt: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case licenseCnt = "LicenseCnt"
            case availableLicenseCnt = "AvailableLicenseCnt"
            case availableProVersionLicenseCnt = "AvailableProVersionLicenseCnt"
            case availableFlagshipVersionLicenseCnt = "AvailableFlagshipVersionLicenseCnt"
            case nearExpiryLicenseCnt = "NearExpiryLicenseCnt"
            case expireLicenseCnt = "ExpireLicenseCnt"
            case autoOpenStatus = "AutoOpenStatus"
            case protectType = "ProtectType"
            case isOpenStatusHistory = "IsOpenStatusHistory"
            case usedLicenseCnt = "UsedLicenseCnt"
            case notExpiredLicenseCnt = "NotExpiredLicenseCnt"
            case flagshipVersionLicenseCnt = "FlagshipVersionLicenseCnt"
            case proVersionLicenseCnt = "ProVersionLicenseCnt"
            case cwpVersionLicenseCnt = "CwpVersionLicenseCnt"
            case availableLHLicenseCnt = "AvailableLHLicenseCnt"
            case requestId = "RequestId"
        }
    }
    
    /// 授权概览信息
    ///
    /// 授权管理-授权概览信息
    @inlinable
    public func describeLicenseGeneral(_ input: DescribeLicenseGeneralRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLicenseGeneralResponse > {
        self.client.execute(action: "DescribeLicenseGeneral", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 授权概览信息
    ///
    /// 授权管理-授权概览信息
    @inlinable
    public func describeLicenseGeneral(_ input: DescribeLicenseGeneralRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseGeneralResponse {
        try await self.client.execute(action: "DescribeLicenseGeneral", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
