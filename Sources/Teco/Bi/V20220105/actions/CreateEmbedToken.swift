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

extension Bi {
    /// CreateEmbedToken请求参数结构体
    public struct CreateEmbedTokenRequest: TCRequestModel {
        /// 分享项目id，必选
        public let projectId: UInt64?
        
        /// 分享页面id，嵌出看板时此为空值0
        public let pageId: UInt64?
        
        /// page表示嵌出页面，panel表嵌出整个看板
        public let scope: String?
        
        /// 过期时间。 单位：分钟 最大值：240。即，4小时 默认值：240
        public let expireTime: String?
        
        /// 备用字段
        public let extraParam: String?
        
        public init (projectId: UInt64? = nil, pageId: UInt64? = nil, scope: String? = nil, expireTime: String? = nil, extraParam: String? = nil) {
            self.projectId = projectId
            self.pageId = pageId
            self.scope = scope
            self.expireTime = expireTime
            self.extraParam = extraParam
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageId = "PageId"
            case scope = "Scope"
            case expireTime = "ExpireTime"
            case extraParam = "ExtraParam"
        }
    }
    
    /// CreateEmbedToken返回参数结构体
    public struct CreateEmbedTokenResponse: TCResponseModel {
        /// 额外信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?
        
        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: EmbedTokenInfo?
        
        /// 结果描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case data = "Data"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
    
    /// 创建嵌出报表Token
    ///
    /// 创建嵌出报表-强鉴权
    @inlinable
    public func createEmbedToken(_ input: CreateEmbedTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEmbedTokenResponse > {
        self.client.execute(action: "CreateEmbedToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建嵌出报表Token
    ///
    /// 创建嵌出报表-强鉴权
    @inlinable
    public func createEmbedToken(_ input: CreateEmbedTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmbedTokenResponse {
        try await self.client.execute(action: "CreateEmbedToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
