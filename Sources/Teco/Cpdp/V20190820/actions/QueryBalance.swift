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
    /// 聚鑫-余额查询
    ///
    /// 子商户余额查询
    @inlinable
    public func queryBalance(_ input: QueryBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryBalanceResponse > {
        self.client.execute(action: "QueryBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫-余额查询
    ///
    /// 子商户余额查询
    @inlinable
    public func queryBalance(_ input: QueryBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBalanceResponse {
        try await self.client.execute(action: "QueryBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryBalance请求参数结构体
    public struct QueryBalanceRequest: TCRequestModel {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String
        
        /// 2：普通会员子账号
        /// 3：功能子账号
        public let queryFlag: String
        
        /// 起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后
        public let pageOffset: String
        
        /// 聚鑫分配的安全ID
        public let midasSecretId: String
        
        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String
        
        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?
        
        public init (midasAppId: String, subAppId: String, queryFlag: String, pageOffset: String, midasSecretId: String, midasSignature: String, midasEnvironment: String?) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.queryFlag = queryFlag
            self.pageOffset = pageOffset
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.midasEnvironment = midasEnvironment
        }
        
        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case queryFlag = "QueryFlag"
            case pageOffset = "PageOffset"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case midasEnvironment = "MidasEnvironment"
        }
    }
    
    /// QueryBalance返回参数结构体
    public struct QueryBalanceResponse: TCResponseModel {
        /// 本次交易返回查询结果记录数
        public let resultCount: String
        
        /// 起始记录号
        public let startRecordOffset: String
        
        /// 结束标志
        public let endFlag: String
        
        /// 符合业务查询条件的记录总数
        public let totalCount: String
        
        /// 查询结果项
        public let queryItems: [QueryItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resultCount = "ResultCount"
            case startRecordOffset = "StartRecordOffset"
            case endFlag = "EndFlag"
            case totalCount = "TotalCount"
            case queryItems = "QueryItems"
            case requestId = "RequestId"
        }
    }
}