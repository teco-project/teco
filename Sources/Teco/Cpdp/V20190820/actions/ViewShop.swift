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
    /// 云支付-查询门店明细接口
    ///
    /// 云支付-查询门店明细接口
    @inlinable
    public func viewShop(_ input: ViewShopRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ViewShopResponse > {
        self.client.execute(action: "ViewShop", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-查询门店明细接口
    ///
    /// 云支付-查询门店明细接口
    @inlinable
    public func viewShop(_ input: ViewShopRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ViewShopResponse {
        try await self.client.execute(action: "ViewShop", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ViewShop请求参数结构体
    public struct ViewShopRequest: TCRequestModel {
        /// 收单系统分配的开放ID
        public let openId: String
        
        /// 收单系统分配的密钥
        public let openKey: String
        
        /// 外部商户主键编号（ShopNo或OutShopId必须传一个）
        public let outShopId: String?
        
        /// 门店编号（ShopNo或OutShopId必须传一个）
        public let shopNo: String?
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        public init (openId: String, openKey: String, outShopId: String?, shopNo: String?, profile: String?) {
            self.openId = openId
            self.openKey = openKey
            self.outShopId = outShopId
            self.shopNo = shopNo
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case outShopId = "OutShopId"
            case shopNo = "ShopNo"
            case profile = "Profile"
        }
    }
    
    /// ViewShop返回参数结构体
    public struct ViewShopResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 门店明细响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ViewShopResult
        
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