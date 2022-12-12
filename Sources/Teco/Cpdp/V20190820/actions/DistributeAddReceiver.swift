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
    /// DistributeAddReceiver请求参数结构体
    public struct DistributeAddReceiverRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String
        
        /// 使用门店OpenKey
        public let openKey: String
        
        /// 商户编号
        public let merchantNo: String
        
        /// 备注
        public let remark: String?
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        public init (openId: String, openKey: String, merchantNo: String, remark: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.merchantNo = merchantNo
            self.remark = remark
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case merchantNo = "MerchantNo"
            case remark = "Remark"
            case profile = "Profile"
        }
    }
    
    /// DistributeAddReceiver返回参数结构体
    public struct DistributeAddReceiverResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 添加分账接收方响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DistributeReceiverResult?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 云支付-分账添加分账接收方接口
    @inlinable
    public func distributeAddReceiver(_ input: DistributeAddReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DistributeAddReceiverResponse > {
        self.client.execute(action: "DistributeAddReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-分账添加分账接收方接口
    @inlinable
    public func distributeAddReceiver(_ input: DistributeAddReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DistributeAddReceiverResponse {
        try await self.client.execute(action: "DistributeAddReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
