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
    /// 云鉴-商户信息查询接口
    @inlinable
    public func queryMerchant(_ input: QueryMerchantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryMerchantResponse > {
        self.client.execute(action: "QueryMerchant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-商户信息查询接口
    @inlinable
    public func queryMerchant(_ input: QueryMerchantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantResponse {
        try await self.client.execute(action: "QueryMerchant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryMerchant请求参数结构体
    public struct QueryMerchantRequest: TCRequestModel {
        /// 进件成功后返给商户方的 AppId
        public let merchantAppId: String
        
        public init (merchantAppId: String) {
            self.merchantAppId = merchantAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
        }
    }
    
    /// QueryMerchant返回参数结构体
    public struct QueryMerchantResponse: TCResponseModel {
        /// 分配给商户的 AppId，该 AppId 为后续各项 交易的商户标识。
        public let merchantAppId: String
        
        /// 收款商户名称。
        public let merchantName: String
        
        /// B2B 支付标志。是否开通 B2B 支付， 1:开通 0:不开通。
        public let businessPayFlag: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
            case merchantName = "MerchantName"
            case businessPayFlag = "BusinessPayFlag"
            case requestId = "RequestId"
        }
    }
}
