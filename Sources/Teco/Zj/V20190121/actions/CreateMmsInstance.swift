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

extension Zj {
    /// CreateMmsInstance请求参数结构体
    public struct CreateMmsInstanceRequest: TCRequestModel {
        /// 商户证书
        public let license: String
        
        /// 样例名称
        public let instanceName: String
        
        /// 标题
        public let title: String
        
        /// 签名
        public let sign: String
        
        /// 素材内容
        public let contents: [CreateMmsInstanceItem]
        
        /// 样例中链接动态变量对应的链接，和占位符顺序一致
        public let urls: [String]?
        
        /// 机型列表
        public let phoneType: [UInt64]?
        
        /// 发送超短活动时用于展示人群包动态参数模板占位符序号或接口发送时变量占位符序号
        public let commonParams: [UInt64]?
        
        /// 发送超短活动时用于展示短连接模板占位符序号,仅用作超短活动
        public let urlParams: [UInt64]?
        
        public init (license: String, instanceName: String, title: String, sign: String, contents: [CreateMmsInstanceItem], urls: [String]? = nil, phoneType: [UInt64]? = nil, commonParams: [UInt64]? = nil, urlParams: [UInt64]? = nil) {
            self.license = license
            self.instanceName = instanceName
            self.title = title
            self.sign = sign
            self.contents = contents
            self.urls = urls
            self.phoneType = phoneType
            self.commonParams = commonParams
            self.urlParams = urlParams
        }
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case instanceName = "InstanceName"
            case title = "Title"
            case sign = "Sign"
            case contents = "Contents"
            case urls = "Urls"
            case phoneType = "PhoneType"
            case commonParams = "CommonParams"
            case urlParams = "UrlParams"
        }
    }
    
    /// CreateMmsInstance返回参数结构体
    public struct CreateMmsInstanceResponse: TCResponseModel {
        /// 创建样例返回信息
        public let data: CreateMmsInstanceResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 创建超级短信素材样例
    ///
    /// 创建超级短信的素材样例内容
    @inlinable
    public func createMmsInstance(_ input: CreateMmsInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateMmsInstanceResponse > {
        self.client.execute(action: "CreateMmsInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建超级短信素材样例
    ///
    /// 创建超级短信的素材样例内容
    @inlinable
    public func createMmsInstance(_ input: CreateMmsInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMmsInstanceResponse {
        try await self.client.execute(action: "CreateMmsInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
