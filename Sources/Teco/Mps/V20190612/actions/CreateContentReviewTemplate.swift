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

extension Mps {
    /// 创建内容审核模板
    ///
    /// 创建用户自定义内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(_ input: CreateContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateContentReviewTemplateResponse > {
        self.client.execute(action: "CreateContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建内容审核模板
    ///
    /// 创建用户自定义内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(_ input: CreateContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContentReviewTemplateResponse {
        try await self.client.execute(action: "CreateContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateContentReviewTemplate请求参数结构体
    public struct CreateContentReviewTemplateRequest: TCRequestModel {
        /// 内容审核模板名称，长度限制：64 个字符。
        public let name: String?
        
        /// 内容审核模板描述信息，长度限制：256 个字符。
        public let comment: String?
        
        /// 令人反感的信息的控制参数。
        public let pornConfigure: PornConfigureInfo
        
        /// 令人不安全的信息的控制参数。
        public let terrorismConfigure: TerrorismConfigureInfo
        
        /// 令人不适宜的信息的控制参数。
        public let politicalConfigure: PoliticalConfigureInfo
        
        /// 违禁控制参数。违禁内容包括：
        /// <li>谩骂；</li>
        /// <li>涉毒违法。</li>
        /// 注意：此参数尚未支持。
        public let prohibitedConfigure: ProhibitedConfigureInfo
        
        /// 用户自定义内容审核控制参数。
        public let userDefineConfigure: UserDefineConfigureInfo
        
        public init (name: String?, comment: String?, pornConfigure: PornConfigureInfo, terrorismConfigure: TerrorismConfigureInfo, politicalConfigure: PoliticalConfigureInfo, prohibitedConfigure: ProhibitedConfigureInfo, userDefineConfigure: UserDefineConfigureInfo) {
            self.name = name
            self.comment = comment
            self.pornConfigure = pornConfigure
            self.terrorismConfigure = terrorismConfigure
            self.politicalConfigure = politicalConfigure
            self.prohibitedConfigure = prohibitedConfigure
            self.userDefineConfigure = userDefineConfigure
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case comment = "Comment"
            case pornConfigure = "PornConfigure"
            case terrorismConfigure = "TerrorismConfigure"
            case politicalConfigure = "PoliticalConfigure"
            case prohibitedConfigure = "ProhibitedConfigure"
            case userDefineConfigure = "UserDefineConfigure"
        }
    }
    
    /// CreateContentReviewTemplate返回参数结构体
    public struct CreateContentReviewTemplateResponse: TCResponseModel {
        /// 内容审核模板唯一标识。
        public let definition: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }
}