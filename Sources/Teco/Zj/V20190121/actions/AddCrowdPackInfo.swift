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

extension Zj {
    /// 添加短信人群包信息
    ///
    /// 添加短信人群包信息
    @inlinable
    public func addCrowdPackInfo(_ input: AddCrowdPackInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddCrowdPackInfoResponse > {
        self.client.execute(action: "AddCrowdPackInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加短信人群包信息
    ///
    /// 添加短信人群包信息
    @inlinable
    public func addCrowdPackInfo(_ input: AddCrowdPackInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCrowdPackInfoResponse {
        try await self.client.execute(action: "AddCrowdPackInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AddCrowdPackInfo请求参数结构体
    public struct AddCrowdPackInfoRequest: TCRequestModel {
        /// 商户证书
        public let license: String
        
        /// 人群包名称
        public let name: String
        
        /// 人群包文件名称,人群包文件必须为utf8编码，动态参数只能是汉字、数字、英文字母的组合，不能包含其他字符
        public let fileName: String
        
        /// 人群包描述
        public let desc: String
        
        /// 已经上传好的人群包cos地址
        public let cosUrl: String
        
        /// 人群包手机号数量
        public let phoneNum: Int64?
        
        public init (license: String, name: String, fileName: String, desc: String, cosUrl: String, phoneNum: Int64?) {
            self.license = license
            self.name = name
            self.fileName = fileName
            self.desc = desc
            self.cosUrl = cosUrl
            self.phoneNum = phoneNum
        }
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case name = "Name"
            case fileName = "FileName"
            case desc = "Desc"
            case cosUrl = "CosUrl"
            case phoneNum = "PhoneNum"
        }
    }
    
    /// AddCrowdPackInfo返回参数结构体
    public struct AddCrowdPackInfoResponse: TCResponseModel {
        /// 接口返回
        public let data: SmsAddCrowdPackInfoResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}