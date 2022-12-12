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

extension Trp {
    /// DescribeMerchants请求参数结构体
    public struct DescribeMerchantsRequest: TCRequestModel {
        /// 搜索商户名称
        public let name: String?
        
        /// 条数
        public let pageSize: UInt64?
        
        /// 页数
        public let pageNumber: UInt64?
        
        /// 企业ID
        public let corpId: UInt64?
        
        /// 码来源类型 0:自建, 1:第三方
        public let codeType: Int64?
        
        public init (name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, corpId: UInt64? = nil, codeType: Int64? = nil) {
            self.name = name
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.corpId = corpId
            self.codeType = codeType
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case corpId = "CorpId"
            case codeType = "CodeType"
        }
    }
    
    /// DescribeMerchants返回参数结构体
    public struct DescribeMerchantsResponse: TCResponseModel {
        /// 商户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchants: [Merchant]?
        
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case merchants = "Merchants"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询商户列表
    @inlinable
    public func describeMerchants(_ input: DescribeMerchantsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMerchantsResponse > {
        self.client.execute(action: "DescribeMerchants", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询商户列表
    @inlinable
    public func describeMerchants(_ input: DescribeMerchantsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMerchantsResponse {
        try await self.client.execute(action: "DescribeMerchants", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
