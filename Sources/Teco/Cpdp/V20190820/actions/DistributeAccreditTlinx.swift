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

extension Cpdp {
    /// 云支付-分账授权申请接口
    ///
    /// 云支付-分账授权申请接口
    @inlinable
    public func distributeAccreditTlinx(_ input: DistributeAccreditTlinxRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DistributeAccreditTlinxResponse > {
        self.client.execute(action: "DistributeAccreditTlinx", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-分账授权申请接口
    ///
    /// 云支付-分账授权申请接口
    @inlinable
    public func distributeAccreditTlinx(_ input: DistributeAccreditTlinxRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DistributeAccreditTlinxResponse {
        try await self.client.execute(action: "DistributeAccreditTlinx", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DistributeAccreditTlinx请求参数结构体
    public struct DistributeAccreditTlinxRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String
        
        /// 使用门店OpenKey
        public let openKey: String
        
        /// 验证方式，传1手机验证(验证码时效60S)传2结算卡验证(时效6小时)，多种方式用逗号隔开
        public let authType: String
        
        /// 分账比例（500=5%）不传默认百分之10
        public let percent: String?
        
        /// 营业执照商户全称
        public let fullName: String?
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        public init (openId: String, openKey: String, authType: String, percent: String?, fullName: String?, profile: String?) {
            self.openId = openId
            self.openKey = openKey
            self.authType = authType
            self.percent = percent
            self.fullName = fullName
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case authType = "AuthType"
            case percent = "Percent"
            case fullName = "FullName"
            case profile = "Profile"
        }
    }
    
    /// DistributeAccreditTlinx返回参数结构体
    public struct DistributeAccreditTlinxResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 授权申请响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DistributeAccreditResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}