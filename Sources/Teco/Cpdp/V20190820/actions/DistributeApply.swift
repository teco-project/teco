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

extension Cpdp {
    /// DistributeApply请求参数结构体
    public struct DistributeApplyRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String
        
        /// 使用门店OpenKey
        public let openKey: String
        
        /// 商户分账单号
        public let outDistributeNo: String
        
        /// 分账明细
        public let details: [MultiApplyDetail]
        
        /// 商户交易订单号，和OrderNo二者传其一
        public let developerNo: String?
        
        /// 平台交易订单号，和DeveloperNo二者传其一
        public let orderNo: String?
        
        /// 说明
        public let remark: String?
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        public init (openId: String, openKey: String, outDistributeNo: String, details: [MultiApplyDetail], developerNo: String? = nil, orderNo: String? = nil, remark: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.outDistributeNo = outDistributeNo
            self.details = details
            self.developerNo = developerNo
            self.orderNo = orderNo
            self.remark = remark
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case outDistributeNo = "OutDistributeNo"
            case details = "Details"
            case developerNo = "DeveloperNo"
            case orderNo = "OrderNo"
            case remark = "Remark"
            case profile = "Profile"
        }
    }
    
    /// DistributeApply返回参数结构体
    public struct DistributeApplyResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 分账申请响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DistributeMultiApplyResult?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 云支付-分账请求接口
    @inlinable
    public func distributeApply(_ input: DistributeApplyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DistributeApplyResponse > {
        self.client.execute(action: "DistributeApply", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-分账请求接口
    @inlinable
    public func distributeApply(_ input: DistributeApplyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DistributeApplyResponse {
        try await self.client.execute(action: "DistributeApply", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
