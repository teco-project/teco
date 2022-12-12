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

extension Faceid {
    /// IdCardVerification请求参数结构体
    public struct IdCardVerificationRequest: TCRequestModel {
        /// 身份证号
        public let idCard: String
        
        /// 姓名
        public let name: String
        
        /// 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?
        
        public init (idCard: String, name: String, encryption: Encryption? = nil) {
            self.idCard = idCard
            self.name = name
            self.encryption = encryption
        }
        
        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case encryption = "Encryption"
        }
    }
    
    /// IdCardVerification返回参数结构体
    public struct IdCardVerificationResponse: TCResponseModel {
        /// 认证结果码，收费情况如下。
        /// 收费结果码：
        /// 0: 姓名和身份证号一致
        /// -1: 姓名和身份证号不一致
        /// 不收费结果码：
        /// -2: 非法身份证号（长度、校验位等不正确）
        /// -3: 非法姓名（长度、格式等不正确）
        /// -4: 证件库服务异常
        /// -5: 证件库中无此身份证记录
        /// -6: 权威比对系统升级中，请稍后再试
        /// -7: 认证次数超过当日限制
        public let result: String
        
        /// 业务结果描述。
        public let description: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }
    
    /// 身份信息认证
    ///
    /// 传入姓名和身份证号，校验两者的真实性和一致性。
    @inlinable
    public func idCardVerification(_ input: IdCardVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < IdCardVerificationResponse > {
        self.client.execute(action: "IdCardVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 身份信息认证
    ///
    /// 传入姓名和身份证号，校验两者的真实性和一致性。
    @inlinable
    public func idCardVerification(_ input: IdCardVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IdCardVerificationResponse {
        try await self.client.execute(action: "IdCardVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
