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

extension Wav {
    /// CreateChannelCode请求参数结构体
    public struct CreateChannelCodeRequest: TCRequestModel {
        /// 欢迎语类型:0普通欢迎语,1渠道欢迎语
        public let type: Int64
        
        /// 使用成员用户id集
        public let useUserId: [Int64]
        
        /// 使用成员企微账号id集
        public let useUserOpenId: [String]
        
        /// 应用ID,字典表中的APP_TYPE值,多个已逗号分隔
        public let appIds: String
        
        /// 渠道来源
        public let source: String?
        
        /// 渠道来源名称
        public let sourceName: String?
        
        /// 二维码名称
        public let name: String?
        
        /// 标签
        public let tag: [WeComTagDetail]?
        
        /// 自动通过好友：0开启 1关闭, 默认开启
        public let skipVerify: Int64?
        
        /// 欢迎语id（通过欢迎语新增返回的id）
        public let msgId: Int64?
        
        /// 备注
        public let remark: String?
        
        /// 渠道类型 0 未知 1 公域 2私域
        public let sourceType: Int64?
        
        public init (type: Int64, useUserId: [Int64], useUserOpenId: [String], appIds: String, source: String? = nil, sourceName: String? = nil, name: String? = nil, tag: [WeComTagDetail]? = nil, skipVerify: Int64? = nil, msgId: Int64? = nil, remark: String? = nil, sourceType: Int64? = nil) {
            self.type = type
            self.useUserId = useUserId
            self.useUserOpenId = useUserOpenId
            self.appIds = appIds
            self.source = source
            self.sourceName = sourceName
            self.name = name
            self.tag = tag
            self.skipVerify = skipVerify
            self.msgId = msgId
            self.remark = remark
            self.sourceType = sourceType
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case useUserId = "UseUserId"
            case useUserOpenId = "UseUserOpenId"
            case appIds = "AppIds"
            case source = "Source"
            case sourceName = "SourceName"
            case name = "Name"
            case tag = "Tag"
            case skipVerify = "SkipVerify"
            case msgId = "MsgId"
            case remark = "Remark"
            case sourceType = "SourceType"
        }
    }
    
    /// CreateChannelCode返回参数结构体
    public struct CreateChannelCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 新增渠道活码接口
    @inlinable
    public func createChannelCode(_ input: CreateChannelCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateChannelCodeResponse > {
        self.client.execute(action: "CreateChannelCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新增渠道活码接口
    @inlinable
    public func createChannelCode(_ input: CreateChannelCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelCodeResponse {
        try await self.client.execute(action: "CreateChannelCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
