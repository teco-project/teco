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

extension Mps {
    /// ModifyContentReviewTemplate请求参数结构体
    public struct ModifyContentReviewTemplateRequest: TCRequestModel {
        /// 内容审核模板唯一标识。
        public let definition: Int64
        
        /// 内容审核模板名称，长度限制：64 个字符。
        public let name: String?
        
        /// 内容审核模板描述信息，长度限制：256 个字符。
        public let comment: String?
        
        /// 令人反感的信息的控制参数。
        public let pornConfigure: PornConfigureInfoForUpdate?
        
        /// 令人不安全的信息的控制参数。
        public let terrorismConfigure: TerrorismConfigureInfoForUpdate?
        
        /// 令人不适宜的控制参数。
        public let politicalConfigure: PoliticalConfigureInfoForUpdate?
        
        /// 违禁控制参数。违禁内容包括：
        /// <li>谩骂；</li>
        /// <li>涉毒违法。</li>
        /// 注意：此参数尚未支持。
        public let prohibitedConfigure: ProhibitedConfigureInfoForUpdate?
        
        /// 用户自定义内容审核控制参数。
        public let userDefineConfigure: UserDefineConfigureInfoForUpdate?
        
        public init (definition: Int64, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfoForUpdate? = nil, terrorismConfigure: TerrorismConfigureInfoForUpdate? = nil, politicalConfigure: PoliticalConfigureInfoForUpdate? = nil, prohibitedConfigure: ProhibitedConfigureInfoForUpdate? = nil, userDefineConfigure: UserDefineConfigureInfoForUpdate? = nil) {
            self.definition = definition
            self.name = name
            self.comment = comment
            self.pornConfigure = pornConfigure
            self.terrorismConfigure = terrorismConfigure
            self.politicalConfigure = politicalConfigure
            self.prohibitedConfigure = prohibitedConfigure
            self.userDefineConfigure = userDefineConfigure
        }
        
        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case name = "Name"
            case comment = "Comment"
            case pornConfigure = "PornConfigure"
            case terrorismConfigure = "TerrorismConfigure"
            case politicalConfigure = "PoliticalConfigure"
            case prohibitedConfigure = "ProhibitedConfigure"
            case userDefineConfigure = "UserDefineConfigure"
        }
    }
    
    /// ModifyContentReviewTemplate返回参数结构体
    public struct ModifyContentReviewTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改内容审核模板
    ///
    /// 修改用户自定义内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(_ input: ModifyContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyContentReviewTemplateResponse > {
        self.client.execute(action: "ModifyContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改内容审核模板
    ///
    /// 修改用户自定义内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(_ input: ModifyContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyContentReviewTemplateResponse {
        try await self.client.execute(action: "ModifyContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 修改内容审核模板
    ///
    /// 修改用户自定义内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(definition: Int64, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfoForUpdate? = nil, terrorismConfigure: TerrorismConfigureInfoForUpdate? = nil, politicalConfigure: PoliticalConfigureInfoForUpdate? = nil, prohibitedConfigure: ProhibitedConfigureInfoForUpdate? = nil, userDefineConfigure: UserDefineConfigureInfoForUpdate? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyContentReviewTemplateResponse > {
        self.modifyContentReviewTemplate(ModifyContentReviewTemplateRequest(definition: definition, name: name, comment: comment, pornConfigure: pornConfigure, terrorismConfigure: terrorismConfigure, politicalConfigure: politicalConfigure, prohibitedConfigure: prohibitedConfigure, userDefineConfigure: userDefineConfigure), logger: logger, on: eventLoop)
    }
    
    /// 修改内容审核模板
    ///
    /// 修改用户自定义内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(definition: Int64, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfoForUpdate? = nil, terrorismConfigure: TerrorismConfigureInfoForUpdate? = nil, politicalConfigure: PoliticalConfigureInfoForUpdate? = nil, prohibitedConfigure: ProhibitedConfigureInfoForUpdate? = nil, userDefineConfigure: UserDefineConfigureInfoForUpdate? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyContentReviewTemplateResponse {
        try await self.modifyContentReviewTemplate(ModifyContentReviewTemplateRequest(definition: definition, name: name, comment: comment, pornConfigure: pornConfigure, terrorismConfigure: terrorismConfigure, politicalConfigure: politicalConfigure, prohibitedConfigure: prohibitedConfigure, userDefineConfigure: userDefineConfigure), logger: logger, on: eventLoop)
    }
}
