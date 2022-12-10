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
    /// 灵云-查询超额信息
    ///
    /// 灵云-查询超额信息
    @inlinable
    public func queryExceedingInfo(_ input: QueryExceedingInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryExceedingInfoResponse > {
        self.client.execute(action: "QueryExceedingInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云-查询超额信息
    ///
    /// 灵云-查询超额信息
    @inlinable
    public func queryExceedingInfo(_ input: QueryExceedingInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExceedingInfoResponse {
        try await self.client.execute(action: "QueryExceedingInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryExceedingInfo请求参数结构体
    public struct QueryExceedingInfoRequest: TCRequestModel {
        /// 超额日期。格式为yyyy-MM-dd。
        public let timeStr: String
        
        /// 维度。目前支持三个维度: AGENT, ANCHOR, ORDER。不填默认使用AGENT维度。
        public let dimension: String?
        
        /// 分页信息。不填默认Index为1，Count为100。
        public let pageNumber: Paging
        
        public init (timeStr: String, dimension: String?, pageNumber: Paging) {
            self.timeStr = timeStr
            self.dimension = dimension
            self.pageNumber = pageNumber
        }
        
        enum CodingKeys: String, CodingKey {
            case timeStr = "TimeStr"
            case dimension = "Dimension"
            case pageNumber = "PageNumber"
        }
    }
    
    /// QueryExceedingInfo返回参数结构体
    public struct QueryExceedingInfoResponse: TCResponseModel {
        /// 错误码。
        public let errCode: String
        
        /// 错误消息。
        public let errMessage: String
        
        /// 超额信息结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryExceedingInfoResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}