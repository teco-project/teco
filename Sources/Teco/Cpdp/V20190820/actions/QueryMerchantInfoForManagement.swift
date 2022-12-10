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
    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(_ input: QueryMerchantInfoForManagementRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryMerchantInfoForManagementResponse > {
        self.client.execute(action: "QueryMerchantInfoForManagement", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(_ input: QueryMerchantInfoForManagementRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantInfoForManagementResponse {
        try await self.client.execute(action: "QueryMerchantInfoForManagement", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryMerchantInfoForManagement请求参数结构体
    public struct QueryMerchantInfoForManagementRequest: TCRequestModel {
        /// 开票平台ID
        public let invoicePlatformId: Int64
        
        /// 页码
        public let offset: Int64
        
        /// 页大小
        public let limit: Int64
        
        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?
        
        public init (invoicePlatformId: Int64, offset: Int64, limit: Int64, profile: String?) {
            self.invoicePlatformId = invoicePlatformId
            self.offset = offset
            self.limit = limit
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case offset = "Offset"
            case limit = "Limit"
            case profile = "Profile"
        }
    }
    
    /// QueryMerchantInfoForManagement返回参数结构体
    public struct QueryMerchantInfoForManagementResponse: TCResponseModel {
        /// 商户结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: MerchantManagementResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
