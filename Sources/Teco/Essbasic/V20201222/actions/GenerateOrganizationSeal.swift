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

extension Essbasic {
    /// GenerateOrganizationSeal请求参数结构体
    public struct GenerateOrganizationSealRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 印章类型：
        /// OFFICIAL-公章
        /// SPECIAL_FINANCIAL-财务专用章
        /// CONTRACT-合同专用章
        /// LEGAL_REPRESENTATIVE-法定代表人章
        /// SPECIAL_NATIONWIDE_INVOICE-发票专用章
        /// OTHER-其他
        public let sealType: String
        
        /// 请求生成企业印章的客户端Ip
        public let sourceIp: String
        
        /// 电子印章名称
        public let sealName: String?
        
        /// 企业印章横向文字，最多可填8个汉字（可不填，默认为"电子签名专用章"）
        public let sealHorizontalText: String?
        
        /// 是否是默认印章 true：是，false：否
        public let isDefault: Bool?
        
        public init (caller: Caller, sealType: String, sourceIp: String, sealName: String? = nil, sealHorizontalText: String? = nil, isDefault: Bool? = nil) {
            self.caller = caller
            self.sealType = sealType
            self.sourceIp = sourceIp
            self.sealName = sealName
            self.sealHorizontalText = sealHorizontalText
            self.isDefault = isDefault
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case sealType = "SealType"
            case sourceIp = "SourceIp"
            case sealName = "SealName"
            case sealHorizontalText = "SealHorizontalText"
            case isDefault = "IsDefault"
        }
    }
    
    /// GenerateOrganizationSeal返回参数结构体
    public struct GenerateOrganizationSealResponse: TCResponseModel {
        /// 电子印章Id
        public let sealId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sealId = "SealId"
            case requestId = "RequestId"
        }
    }
    
    /// 生成企业电子印章
    @inlinable
    public func generateOrganizationSeal(_ input: GenerateOrganizationSealRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GenerateOrganizationSealResponse > {
        self.client.execute(action: "GenerateOrganizationSeal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成企业电子印章
    @inlinable
    public func generateOrganizationSeal(_ input: GenerateOrganizationSealRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateOrganizationSealResponse {
        try await self.client.execute(action: "GenerateOrganizationSeal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
