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
    /// 灵云V2-收款用户开立
    @inlinable
    public func createFlexPayee(_ input: CreateFlexPayeeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFlexPayeeResponse > {
        self.client.execute(action: "CreateFlexPayee", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云V2-收款用户开立
    @inlinable
    public func createFlexPayee(_ input: CreateFlexPayeeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlexPayeeResponse {
        try await self.client.execute(action: "CreateFlexPayee", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFlexPayee请求参数结构体
    public struct CreateFlexPayeeRequest: TCRequestModel {
        /// 用户外部业务ID
        public let outUserId: String
        
        /// 姓名
        public let name: String
        
        /// 证件号
        public let idNo: String
        
        /// 账户名称
        public let accountName: String
        
        /// 服务商ID
        public let serviceProviderId: String
        
        /// 计税信息
        public let taxInfo: PayeeTaxInfo
        
        /// 证件类型
        /// 0:身份证
        /// 1:社会信用代码
        public let idType: Int64
        
        /// 备注
        public let remark: String?
        
        /// 手机号码
        public let phoneNo: String?
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?
        
        public init (outUserId: String, name: String, idNo: String, accountName: String, serviceProviderId: String, taxInfo: PayeeTaxInfo, idType: Int64, remark: String?, phoneNo: String?, environment: String?) {
            self.outUserId = outUserId
            self.name = name
            self.idNo = idNo
            self.accountName = accountName
            self.serviceProviderId = serviceProviderId
            self.taxInfo = taxInfo
            self.idType = idType
            self.remark = remark
            self.phoneNo = phoneNo
            self.environment = environment
        }
        
        enum CodingKeys: String, CodingKey {
            case outUserId = "OutUserId"
            case name = "Name"
            case idNo = "IdNo"
            case accountName = "AccountName"
            case serviceProviderId = "ServiceProviderId"
            case taxInfo = "TaxInfo"
            case idType = "IdType"
            case remark = "Remark"
            case phoneNo = "PhoneNo"
            case environment = "Environment"
        }
    }
    
    /// CreateFlexPayee返回参数结构体
    public struct CreateFlexPayeeResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String
        
        /// 错误消息
        public let errMessage: String
        
        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateFlexPayeeResult
        
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
