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
    /// QueryFinancialDataUrl请求参数结构体
    public struct QueryFinancialDataUrlRequest: TCRequestModel {
        /// 数据查询范围:结束时间
        public let endTime: String
        
        /// 数据查询范围:开始时间
        public let startTime: String
        
        /// 数据类型：ADDED_INVOICE_REPORT  增值税开票数据，NATURAL_FINANCE_REPORT 自然人金融数据
        public let dataType: String
        
        public init (endTime: String, startTime: String, dataType: String) {
            self.endTime = endTime
            self.startTime = startTime
            self.dataType = dataType
        }
        
        enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case startTime = "StartTime"
            case dataType = "DataType"
        }
    }
    
    /// QueryFinancialDataUrl返回参数结构体
    public struct QueryFinancialDataUrlResponse: TCResponseModel {
        /// 下载链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosUrl: String?
        
        /// 过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cosUrl = "CosUrl"
            case expireTime = "ExpireTime"
            case requestId = "RequestId"
        }
    }
    
    /// 财税-查询金融数据文件下载链接
    @inlinable
    public func queryFinancialDataUrl(_ input: QueryFinancialDataUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryFinancialDataUrlResponse > {
        self.client.execute(action: "QueryFinancialDataUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 财税-查询金融数据文件下载链接
    @inlinable
    public func queryFinancialDataUrl(_ input: QueryFinancialDataUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFinancialDataUrlResponse {
        try await self.client.execute(action: "QueryFinancialDataUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
