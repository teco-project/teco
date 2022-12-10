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
    /// 短信模板查询接口
    ///
    /// 获取模板信息
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSmsTemplateListResponse > {
        self.client.execute(action: "DescribeSmsTemplateList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 短信模板查询接口
    ///
    /// 获取模板信息
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsTemplateListResponse {
        try await self.client.execute(action: "DescribeSmsTemplateList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSmsTemplateList请求参数结构体
    public struct DescribeSmsTemplateListRequest: TCRequestModel {
        /// 商户证书
        public let license: String
        
        /// 短信模板id数组
        public let templateIdSet: [UInt64]
        
        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64
        
        public init (license: String, templateIdSet: [UInt64], international: UInt64) {
            self.license = license
            self.templateIdSet = templateIdSet
            self.international = international
        }
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case templateIdSet = "TemplateIdSet"
            case international = "International"
        }
    }
    
    /// DescribeSmsTemplateList返回参数结构体
    public struct DescribeSmsTemplateListResponse: TCResponseModel {
        /// 返回数据信息
        public let data: [DescribeSmsTemplateListDataStruct]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
