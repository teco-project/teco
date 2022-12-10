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
    /// 灵云V2-收款用户账户列表查询
    ///
    /// 灵云V2-收款用户账户列表查询
    @inlinable
    public func queryFlexPayeeAccountList(_ input: QueryFlexPayeeAccountListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryFlexPayeeAccountListResponse > {
        self.client.execute(action: "QueryFlexPayeeAccountList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云V2-收款用户账户列表查询
    ///
    /// 灵云V2-收款用户账户列表查询
    @inlinable
    public func queryFlexPayeeAccountList(_ input: QueryFlexPayeeAccountListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexPayeeAccountListResponse {
        try await self.client.execute(action: "QueryFlexPayeeAccountList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryFlexPayeeAccountList请求参数结构体
    public struct QueryFlexPayeeAccountListRequest: TCRequestModel {
        /// 账户属性信息
        public let propertyInfo: PayeeAccountPropertyInfo
        
        /// 开始时间
        public let startTime: String?
        
        /// 结束时间
        public let endTime: String?
        
        /// 分页
        public let pageNumber: Paging
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?
        
        public init (propertyInfo: PayeeAccountPropertyInfo, startTime: String?, endTime: String?, pageNumber: Paging, environment: String?) {
            self.propertyInfo = propertyInfo
            self.startTime = startTime
            self.endTime = endTime
            self.pageNumber = pageNumber
            self.environment = environment
        }
        
        enum CodingKeys: String, CodingKey {
            case propertyInfo = "PropertyInfo"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageNumber = "PageNumber"
            case environment = "Environment"
        }
    }
    
    /// QueryFlexPayeeAccountList返回参数结构体
    public struct QueryFlexPayeeAccountListResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String
        
        /// 错误消息
        public let errMessage: String
        
        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: PayeeAccountInfos
        
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